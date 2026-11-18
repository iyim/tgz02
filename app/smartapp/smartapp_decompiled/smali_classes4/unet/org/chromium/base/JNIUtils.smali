.class public Lunet/org/chromium/base/JNIUtils;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lunet/org/chromium/base/annotations/MainDex;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getClassLoader()Ljava/lang/Object;
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 22
    const-class v0, Lunet/org/chromium/base/JNIUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
