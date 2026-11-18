.class public Lcom/taobao/android/internal/RuntimeGlobals;
.super Ljava/lang/Object;
.source "RuntimeGlobals.java"


# static fields
.field private static final sMainThread:Ljava/lang/Thread;

.field private static sUidShared:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/internal/RuntimeGlobals;->sMainThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isMainThread()Z
    .locals 2

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/taobao/android/internal/RuntimeGlobals;->sMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMultiPackageMode(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
