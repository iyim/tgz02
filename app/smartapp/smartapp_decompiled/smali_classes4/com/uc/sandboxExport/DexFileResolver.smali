.class public Lcom/uc/sandboxExport/DexFileResolver;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/sandboxExport/Api;
.end annotation


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static loadDexByFd(I)Ljava/lang/Object;
    .locals 2

    .line 11
    sget-boolean v0, Lcom/uc/sandboxExport/DexFileResolver;->a:Z

    if-nez v0, :cond_0

    const-string v0, "servicedexloader"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lcom/uc/sandboxExport/DexFileResolver;->a:Z

    .line 15
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 1022
    invoke-static {p0}, Lcom/uc/sandboxExport/DexFileResolver;->nativeLoadDexByFdOnL(I)J

    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1026
    :cond_1
    invoke-static {p0}, Lcom/uc/sandboxExport/DexFileResolver;->nativeLoadDexByFdOnLAbove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeLoadDexByFdOnL(I)J
.end method

.method private static native nativeLoadDexByFdOnLAbove(I)Ljava/lang/Object;
.end method
