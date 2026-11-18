.class public Lcom/alibaba/mbg/unet/internal/UnetManagerJni;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static native nativeAddPreResolveDns(JLjava/lang/String;Ljava/lang/String;I)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public static native nativeAddPreconnection(JLjava/lang/String;I)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public static native nativeCreateSdkManager()J
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public static native nativeGetCookieList(JLjava/lang/String;Lcom/alibaba/mbg/unet/internal/GetCookieCallback;)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public static native nativeGetHostCacheFromHttpDns(JLjava/lang/String;)Ljava/lang/String;
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public static native nativeInitManagerOnMainThread(JLcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;I)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public static native nativeNotifyForegoundChange(J)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public static native nativeNotifyNetCacheBeforePauseOrDestroy(J)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public static native nativeSetIntValueSetting(JLjava/lang/String;I)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public static native nativeSetListControlValue(JLjava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public static native nativeSetStringValueSetting(JLjava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method
