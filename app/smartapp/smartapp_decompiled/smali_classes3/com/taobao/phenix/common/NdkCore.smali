.class public Lcom/taobao/phenix/common/NdkCore;
.super Ljava/lang/Object;
.source "NdkCore.java"


# static fields
.field private static sCpuType:Ljava/lang/String;

.field private static sLoadedSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "phxcore"

    .line 15
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    sput-boolean v0, Lcom/taobao/phenix/common/NdkCore;->sLoadedSuccess:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "JNI"

    const-string v2, "loadLibrary phxcore error=%s"

    invoke-static {v1, v2, v0}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getCpuType()Ljava/lang/String;
    .locals 3

    .line 36
    sget-object v0, Lcom/taobao/phenix/common/NdkCore;->sCpuType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 39
    :try_start_0
    invoke-static {}, Lcom/taobao/phenix/common/NdkCore;->isLoadedSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/phenix/common/NdkCore;->nativeGetCpuAbi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/phenix/common/NdkCore;->sCpuType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 43
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "JNI"

    const-string v2, "NdkCore.nativeGetCpuAbi error=%s"

    invoke-static {v0, v2, v1}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_0
    :goto_0
    sget-object v0, Lcom/taobao/phenix/common/NdkCore;->sCpuType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v0, Lcom/taobao/phenix/common/NdkCore;->sCpuType:Ljava/lang/String;

    .line 49
    :cond_1
    sget-object v0, Lcom/taobao/phenix/common/NdkCore;->sCpuType:Ljava/lang/String;

    return-object v0
.end method

.method public static isCpuSupportNEON()Z
    .locals 4

    .line 28
    :try_start_0
    invoke-static {}, Lcom/taobao/phenix/common/NdkCore;->nativeCpuSupportNEON()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "JNI"

    const-string v3, "NdkCore.nativeCpuSupportNEON error=%s"

    invoke-static {v0, v3, v1}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static isLoadedSuccess()Z
    .locals 1

    .line 23
    sget-boolean v0, Lcom/taobao/phenix/common/NdkCore;->sLoadedSuccess:Z

    return v0
.end method

.method public static native nativeCpuSupportNEON()Z
.end method

.method public static native nativeGetCpuAbi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativePinBitmap(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public static native nativePinBitmapWithAddr(Landroid/graphics/Bitmap;[J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native nativeUnpinBitmap(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method
