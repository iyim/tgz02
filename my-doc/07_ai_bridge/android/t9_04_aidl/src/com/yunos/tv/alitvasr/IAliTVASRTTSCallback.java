/*
 * IAliTVASRTTSCallback.java -- T9-04 client side of the factory TTS callback.
 *
 * Transcribed 1:1 from the official artifact (see IAliTVASR.java for provenance):
 *   DESCRIPTOR = "com.yunos.tv.alitvasr.IAliTVASRTTSCallback"
 *   TRANSACTION_onTtsStart = 1, TRANSACTION_onTtsStop = 2, TRANSACTION_onException = 3
 *   onTtsStart(String), onTtsStop(), onException(String)
 *
 * Our probe implements Stub; the factory gets it through readStrongBinder() and calls
 * transact(1|2|3) on it. The callbacks therefore arrive in OUR process, on a binder thread.
 */
package com.yunos.tv.alitvasr;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IAliTVASRTTSCallback extends IInterface {

    void onException(String msg) throws RemoteException;

    void onTtsStart(String text) throws RemoteException;

    void onTtsStop() throws RemoteException;

    public static abstract class Stub extends Binder implements IAliTVASRTTSCallback {
        private static final String DESCRIPTOR = "com.yunos.tv.alitvasr.IAliTVASRTTSCallback";
        static final int TRANSACTION_onTtsStart = 1;
        static final int TRANSACTION_onTtsStop = 2;
        static final int TRANSACTION_onException = 3;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAliTVASRTTSCallback asInterface(IBinder binder) {
            if (binder == null) return null;
            IInterface local = binder.queryLocalInterface(DESCRIPTOR);
            if (local != null && (local instanceof IAliTVASRTTSCallback)) return (IAliTVASRTTSCallback) local;
            return new Proxy(binder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                onTtsStart(data.readString());
                reply.writeNoException();
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                onTtsStop();
                reply.writeNoException();
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                onException(data.readString());
                reply.writeNoException();
                return true;
            }
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(code, data, reply, flags);
        }

        private static final class Proxy implements IAliTVASRTTSCallback {
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
            public void onTtsStart(String text) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeString(text);
                    mRemote.transact(TRANSACTION_onTtsStart, d, r, 0);
                    r.readException();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public void onTtsStop() throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    mRemote.transact(TRANSACTION_onTtsStop, d, r, 0);
                    r.readException();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }

            @Override
            public void onException(String msg) throws RemoteException {
                Parcel d = Parcel.obtain();
                Parcel r = Parcel.obtain();
                try {
                    d.writeInterfaceToken(DESCRIPTOR);
                    d.writeString(msg);
                    mRemote.transact(TRANSACTION_onException, d, r, 0);
                    r.readException();
                } finally {
                    r.recycle();
                    d.recycle();
                }
            }
        }
    }
}
