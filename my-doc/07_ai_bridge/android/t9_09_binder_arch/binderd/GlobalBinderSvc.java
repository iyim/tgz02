package com.tgz02.binderdemo.daemon;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Process;

import java.lang.reflect.Method;

/**
 * T9-09 experiment: can a process that is NOT an Android app -- started with app_process as
 * root, exactly like our TtsExec -- publish a GLOBAL binder service that other processes can
 * find through servicemanager?
 *
 * This is the Java-side proof of the option-B mechanism (option B itself would be the same
 * thing written against libbinder in C++; see the report for why that ABI path is not
 * available in the 8.1 NDK).
 *
 *   app_process /system com.tgz02.binderdemo.daemon.GlobalBinderSvc           (server, blocks)
 *   app_process /system com.tgz02.binderdemo.daemon.GlobalBinderSvc client    (client)
 *
 * ServiceManager is not part of the public SDK, so it is reached reflectively -- the same
 * hidden surface every vendor daemon uses.
 */
public class GlobalBinderSvc {

    static final String SERVICE = "tg.arch.demo";
    static final int CODE_PING = 1;

    public static void main(String[] args) throws Exception {
        if (args.length > 0 && "client".equals(args[0])) { client(); return; }
        server();
    }

    static void server() throws Exception {
        Binder impl = new Binder() {
            @Override protected boolean onTransact(int code, Parcel data, Parcel reply, int flags)
                    throws android.os.RemoteException {
                if (code == CODE_PING) {
                    data.enforceInterface("com.tgz02.binderdemo.IGlobalDemo");
                    String q = data.readString();
                    String a = "pong from pid=" + Process.myPid()
                             + " uid=" + Process.myUid()
                             + " q=" + q
                             + " ts=" + System.currentTimeMillis();
                    reply.writeNoException();
                    reply.writeString(a);
                    return true;
                }
                return super.onTransact(code, data, reply, flags);
            }
        };

        Class<?> sm = Class.forName("android.os.ServiceManager");
        Method addService = sm.getMethod("addService", String.class, IBinder.class);
        addService.invoke(null, SERVICE, impl);

        System.out.println("REGISTERED service=" + SERVICE
                + " pid=" + Process.myPid()
                + " uid=" + Process.myUid()
                + " binder=" + impl.getClass().getName());
        System.out.flush();

        // keep the process (and therefore the binder node) alive
        Object lock = new Object();
        synchronized (lock) { lock.wait(); }
    }

    static void client() throws Exception {
        Class<?> sm = Class.forName("android.os.ServiceManager");
        Method getService = sm.getMethod("getService", String.class);
        IBinder b = (IBinder) getService.invoke(null, SERVICE);
        System.out.println("LOOKUP service=" + SERVICE + " pid=" + Process.myPid()
                + " uid=" + Process.myUid() + " binder=" + (b == null ? "null" : b.getClass().getName()));
        if (b == null) {
            System.out.println("RESULT no-such-service");
            System.out.flush();
            return;
        }
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            data.writeInterfaceToken("com.tgz02.binderdemo.IGlobalDemo");
            data.writeString("hello-over-binder");
            boolean tr = b.transact(CODE_PING, data, reply, 0);
            reply.readException();
            String s = reply.readString();
            System.out.println("TRANSACT ok=" + tr + " reply=" + s);
            System.out.println("RESULT global-binder-call-ok");
        } catch (Throwable t) {
            System.out.println("TRANSACT failed: " + t);
            t.printStackTrace(System.out);
            System.out.println("RESULT global-binder-call-failed");
        } finally {
            data.recycle();
            reply.recycle();
        }
        System.out.flush();
    }
}
