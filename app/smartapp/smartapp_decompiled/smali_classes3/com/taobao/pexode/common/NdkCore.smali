.class public Lcom/taobao/pexode/common/NdkCore;
.super Ljava/lang/Object;
.source "NdkCore.java"


# static fields
.field private static final LIBRARY_JNI_VERSION:I = 0x2

.field private static final LIBRARY_NAME:Ljava/lang/String; = "pexcore"

.field private static sCpuAbiList:[Ljava/lang/String;

.field private static sIsSoInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "Pexode"

    const-string v1, "pexcore"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 22
    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/taobao/pexode/common/NdkCore;->nativeLoadedVersionTest()I

    move-result v5

    if-ne v5, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    sput-boolean v5, Lcom/taobao/pexode/common/NdkCore;->sIsSoInstalled:Z

    const-string v5, "system load lib%s.so success"

    .line 24
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v0, v5, v6}, Lcom/taobao/tcommon/log/FLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object v5, v2, v3

    const-string v1, "system load lib%s.so error=%s"

    invoke-static {v0, v1, v2}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isCpuAbiSupported(Ljava/lang/String;)Z
    .locals 6

    .line 51
    sget-object v0, Lcom/taobao/pexode/common/NdkCore;->sCpuAbiList:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const/16 v0, 0x15

    .line 53
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v0, :cond_0

    .line 54
    invoke-static {}, Lcom/taobao/pexode/common/NdkCore;->nativeGetCpuAbiList()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ","

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/taobao/pexode/common/NdkCore;->sCpuAbiList:[Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_0
    new-array v3, v1, [Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v4}, Lcom/taobao/pexode/common/NdkCore;->nativeGetCpuAbi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    sput-object v3, Lcom/taobao/pexode/common/NdkCore;->sCpuAbiList:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 62
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "Pexode"

    const-string v5, "NdkCore.isCpuAbiSupported error=%s"

    invoke-static {v3, v5, v4}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_1
    :goto_0
    sget-object v3, Lcom/taobao/pexode/common/NdkCore;->sCpuAbiList:[Ljava/lang/String;

    if-nez v3, :cond_3

    .line 66
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v0, :cond_2

    .line 67
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    sput-object v0, Lcom/taobao/pexode/common/NdkCore;->sCpuAbiList:[Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_2
    new-array v0, v1, [Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lcom/taobao/pexode/common/NdkCore;->sCpuAbiList:[Ljava/lang/String;

    .line 73
    :cond_3
    :goto_1
    sget-object v0, Lcom/taobao/pexode/common/NdkCore;->sCpuAbiList:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 74
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return v2
.end method

.method public static isCpuSupportNEON()Z
    .locals 4

    .line 43
    :try_start_0
    invoke-static {}, Lcom/taobao/pexode/common/NdkCore;->nativeCpuSupportNEON()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Pexode"

    const-string v3, "NdkCore.isCpuSupportNEON error=%s"

    invoke-static {v0, v3, v1}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static isFdSeekable(Ljava/io/FileDescriptor;)Z
    .locals 3

    .line 83
    :try_start_0
    invoke-static {p0}, Lcom/taobao/pexode/common/NdkCore;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Pexode"

    const-string v2, "NdkCore.isFdSeekable error=%s"

    invoke-static {p0, v2, v0}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static isSoInstalled()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/taobao/pexode/common/NdkCore;->sIsSoInstalled:Z

    return v0
.end method

.method private static native nativeCpuSupportNEON()Z
.end method

.method private static native nativeGetCpuAbi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetCpuAbiList()Ljava/lang/String;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static native nativeLoadedVersionTest()I
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

.method public static prepare(Landroid/content/Context;)V
    .locals 4

    .line 31
    sget-boolean p0, Lcom/taobao/pexode/common/NdkCore;->sIsSoInstalled:Z

    if-nez p0, :cond_1

    const-string p0, "pexcore"

    const/4 v0, 0x2

    .line 32
    invoke-static {p0, v0}, Lcom/taobao/pexode/common/SoInstallMgrSdk;->loadBackup(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/taobao/pexode/common/NdkCore;->nativeLoadedVersionTest()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/taobao/pexode/common/NdkCore;->sIsSoInstalled:Z

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    sget-boolean p0, Lcom/taobao/pexode/common/NdkCore;->sIsSoInstalled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "Pexode"

    const-string v1, "retry load lib%s.so result=%b"

    invoke-static {p0, v1, v0}, Lcom/taobao/tcommon/log/FLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
