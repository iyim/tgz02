/*
 * IAliTVASR.java -- T9-04 minimal client side of the factory AIDL interface.
 *
 * Transcribed 1:1 from the official shipped artifact
 *   com.alibaba.ailabs.genie.smartapp 8.7.1.18
 *   /system/app/smartapp/oat/arm/smartapp.vdex -> classes4.dex -> com.yunos.tv.alitvasr.IAliTVASR
 * (jadx output, see evidence/t9-03/04_alitvasr_interface.txt and the T9-03 report).
 *
 * Nothing here is guessed:
 *   - DESCRIPTOR            = "com.yunos.tv.alitvasr.IAliTVASR"
 *   - transaction codes     = the official TRANSACTION_* constants (1..14), asserted again at
 *                             build time by javap (see build.ps1)
 *   - parameter order and Parcel encoding of every method are copied unchanged from the
 *     official Stub.onTransact / Stub.Proxy
 * The four methods this client actually calls (playTTS 4, stopTTS 5, playTTSWithCallback 9)
 * therefore speak exactly the wire format the factory service expects.
 */
package com.yunos.tv.alitvasr;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IAliTVASR extends IInterface {

    void registerCallback(String packageJson, IAliTVASRCallback cb, boolean showUI) throws RemoteException;

    void unregisterCallback(String packageName) throws RemoteException;

    void setAliTVASREnable(String packageName, boolean enable) throws RemoteException;

    boolean playTTS(String text) throws RemoteException;

    void stopTTS() throws RemoteException;

    void setResultMode(String packageName, int mode) throws RemoteException;

    void setASRMode(String packageName, int mode) throws RemoteException;

    void showASRUI(String packageName, boolean show) throws RemoteException;

    boolean playTTSWithCallback(String text, IAliTVASRTTSCallback cb) throws RemoteException;

    Bundle updateAppScene(Bundle bundle) throws RemoteException;

    Bundle onFarDeviceData(Bundle bundle) throws RemoteException;

    Bundle clientToAsr(int id, Bundle bundle) throws RemoteException;

    IBinder getService(int id, Bundle bundle) throws RemoteException;

    int sendEventToServer(String a, String b, String c, IAliTVASRResponseCallback responseCallback) throws RemoteException;

    public static abstract class Stub extends android.os.Binder implements IAliTVASR {
        private static final String DESCRIPTOR = "com.yunos.tv.alitvasr.IAliTVASR";
        static final int TRANSACTION_registerCallback = 1;
        static final int TRANSACTION_unregisterCallback = 2;
        static final int TRANSACTION_setAliTVASREnable = 3;
        static final int TRANSACTION_playTTS = 4;
        static final int TRANSACTION_stopTTS = 5;
        static final int TRANSACTION_setResultMode = 6;
        static final int TRANSACTION_setASRMode = 7;
        static final int TRANSACTION_showASRUI = 8;
        static final int TRANSACTION_playTTSWithCallback = 9;
        static final int TRANSACTION_updateAppScene = 10;
        static final int TRANSACTION_onFarDeviceData = 11;
        static final int TRANSACTION_clientToAsr = 12;
        static final int TRANSACTION_getService = 13;
        static final int TRANSACTION_sendEventToServer = 14;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAliTVASR asInterface(IBinder binder) {
            if (binder == null) return null;
            IInterface local = binder.queryLocalInterface(DESCRIPTOR);
            if (local != null && (local instanceof IAliTVASR)) return (IAliTVASR) local;
            return new Proxy(binder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    registerCallback(data.readString(), null, data.readInt() != 0);
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    unregisterCallback(data.readString());
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    setAliTVASREnable(data.readString(), data.readInt() != 0);
                    reply.writeNoException();
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    boolean r4 = playTTS(data.readString());
                    reply.writeNoException();
                    reply.writeInt(r4 ? 1 : 0);
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    stopTTS();
                    reply.writeNoException();
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    setResultMode(data.readString(), data.readInt());
                    reply.writeNoException();
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    setASRMode(data.readString(), data.readInt());
                    reply.writeNoException();
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    showASRUI(data.readString(), data.readInt() != 0);
                    reply.writeNoException();
                    return true;
                case 9:
                    data.enforceInterface(DESCRIPTOR);
                    boolean r9 = playTTSWithCallback(data.readString(), null);
                    reply.writeNoException();
                    reply.writeInt(r9 ? 1 : 0);
                    return true;
                case 10:
                    data.enforceInterface(DESCRIPTOR);
                    Bundle b10 = data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null;
                    Bundle o10 = updateAppScene(b10);
                    reply.writeNoException();
                    writeNullableBundle(reply, o10);
                    return true;
                case 11:
                    data.enforceInterface(DESCRIPTOR);
                    Bundle b11 = data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null;
                    Bundle o11 = onFarDeviceData(b11);
                    reply.writeNoException();
                    writeNullableBundle(reply, o11);
                    return true;
                case 12:
                    data.enforceInterface(DESCRIPTOR);
                    int i12 = data.readInt();
                    Bundle b12 = data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null;
                    Bundle o12 = clientToAsr(i12, b12);
                    reply.writeNoException();
                    writeNullableBundle(reply, o12);
                    return true;
                case 13:
                    data.enforceInterface(DESCRIPTOR);
                    int i13 = data.readInt();
                    Bundle b13 = data.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(data) : null;
                    IBinder o13 = getService(i13, b13);
                    reply.writeNoException();
                    reply.writeStrongBinder(o13);
                    return true;
                case 14:
                    data.enforceInterface(DESCRIPTOR);
                    String a = data.readString();
                    String b = data.readString();
                    String c = data.readString();
                    data.readStrongBinder();
                    int o14 = sendEventToServer(a, b, c, null);
                    reply.writeNoException();
                    reply.writeInt(o14);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static void writeNullableBundle(Parcel reply, Bundle b) {
            if (b != null) {
                reply.writeInt(1);
                b.writeToParcel(reply, 1);
            } else {
                reply.writeInt(0);
            }
        }

        /** Exactly the official Stub.Proxy: same order, same encoding, same readException. */
        private static final class Proxy implements IAliTVASR {
            private final IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public String getInterfaceDescriptor() {
                return DESCRIPTOR;
            }

            @Override
            public IBinder asBinder() {
                return mRemote;
            }

            @Override
            public void registerCallback(String packageJson, IAliTVASRCallback cb, boolean showUI) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeString(packageJson);
                    d.writeStrongBinder(cb != null ? cb.asBinder() : null);
                    d.writeInt(showUI ? 1 : 0);
                    mRemote.transact(TRANSACTION_registerCallback, d, r, 0);
                    r.readException();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public void unregisterCallback(String packageName) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeString(packageName);
                    mRemote.transact(TRANSACTION_unregisterCallback, d, r, 0);
                    r.readException();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public void setAliTVASREnable(String packageName, boolean enable) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeString(packageName);
                    d.writeInt(enable ? 1 : 0);
                    mRemote.transact(TRANSACTION_setAliTVASREnable, d, r, 0);
                    r.readException();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public boolean playTTS(String text) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeString(text);
                    mRemote.transact(TRANSACTION_playTTS, d, r, 0);
                    r.readException();
                    return r.readInt() != 0;
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public void stopTTS() throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    mRemote.transact(TRANSACTION_stopTTS, d, r, 0);
                    r.readException();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public void setResultMode(String packageName, int mode) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeString(packageName);
                    d.writeInt(mode);
                    mRemote.transact(TRANSACTION_setResultMode, d, r, 0);
                    r.readException();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public void setASRMode(String packageName, int mode) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeString(packageName);
                    d.writeInt(mode);
                    mRemote.transact(TRANSACTION_setASRMode, d, r, 0);
                    r.readException();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public void showASRUI(String packageName, boolean show) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeString(packageName);
                    d.writeInt(show ? 1 : 0);
                    mRemote.transact(TRANSACTION_showASRUI, d, r, 0);
                    r.readException();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public boolean playTTSWithCallback(String text, IAliTVASRTTSCallback cb) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeString(text);
                    d.writeStrongBinder(cb != null ? cb.asBinder() : null);
                    mRemote.transact(TRANSACTION_playTTSWithCallback, d, r, 0);
                    r.readException();
                    return r.readInt() != 0;
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public Bundle updateAppScene(Bundle bundle) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    if (bundle != null) {
                        d.writeInt(1);
                        bundle.writeToParcel(d, 0);
                    } else {
                        d.writeInt(0);
                    }
                    mRemote.transact(TRANSACTION_updateAppScene, d, r, 0);
                    r.readException();
                    return r.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(r) : null;
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public Bundle onFarDeviceData(Bundle bundle) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    if (bundle != null) {
                        d.writeInt(1);
                        bundle.writeToParcel(d, 0);
                    } else {
                        d.writeInt(0);
                    }
                    mRemote.transact(TRANSACTION_onFarDeviceData, d, r, 0);
                    r.readException();
                    return r.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(r) : null;
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public Bundle clientToAsr(int id, Bundle bundle) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeInt(id);
                    if (bundle != null) {
                        d.writeInt(1);
                        bundle.writeToParcel(d, 0);
                    } else {
                        d.writeInt(0);
                    }
                    mRemote.transact(TRANSACTION_clientToAsr, d, r, 0);
                    r.readException();
                    return r.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(r) : null;
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public IBinder getService(int id, Bundle bundle) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeInt(id);
                    if (bundle != null) {
                        d.writeInt(1);
                        bundle.writeToParcel(d, 0);
                    } else {
                        d.writeInt(0);
                    }
                    mRemote.transact(TRANSACTION_getService, d, r, 0);
                    r.readException();
                    return r.readStrongBinder();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public int sendEventToServer(String a, String b, String c, IAliTVASRResponseCallback responseCallback) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeString(a);
                    d.writeString(b);
                    d.writeString(c);
                    d.writeStrongBinder(responseCallback != null ? responseCallback.asBinder() : null);
                    mRemote.transact(TRANSACTION_sendEventToServer, d, r, 0);
                    r.readException();
                    return r.readInt();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }
        }
    }
}
