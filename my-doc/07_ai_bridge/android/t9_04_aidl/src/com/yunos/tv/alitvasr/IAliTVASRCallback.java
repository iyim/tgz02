/*
 * IAliTVASRCallback.java -- T9-04 marker for the factory callback type.
 *
 * Only the type identity matters for this experiment: AIDL writes an interface parameter as
 * writeStrongBinder(), so the wire encoding of registerCallback(1) is identical whatever the
 * interface declares. T9-04 never calls registerCallback; the type exists so that our copy of
 * IAliTVASR keeps the official signature. The official method set was not needed and has not
 * been transcribed (see the T9-03 report, evidence 04).
 */
package com.yunos.tv.alitvasr;

import android.os.IInterface;

public interface IAliTVASRCallback extends IInterface {
}
