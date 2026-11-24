/*
 * IAliTVASRResponseCallback.java -- T9-04 marker for the factory response callback type.
 *
 * Same reasoning as IAliTVASRCallback: only the type identity is needed for the signature of
 * sendEventToServer(14), which T9-04 does not call. AIDL encodes it as writeStrongBinder().
 */
package com.yunos.tv.alitvasr;

import android.os.IInterface;

public interface IAliTVASRResponseCallback extends IInterface {
}
