.class public Lunet/org/chromium/base/PowerMonitor;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lunet/org/chromium/base/PowerMonitor$LazyHolder;
    }
.end annotation

.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static a:Lunet/org/chromium/base/PowerMonitor;


# instance fields
.field private b:Z

.field private final c:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lunet/org/chromium/base/PowerMonitor;->c:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lunet/org/chromium/base/PowerMonitor;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 3

    .line 57
    sget-object v0, Lunet/org/chromium/base/PowerMonitor;->a:Lunet/org/chromium/base/PowerMonitor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v1, "plugged"

    .line 62
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 64
    sget-object v0, Lunet/org/chromium/base/PowerMonitor;->a:Lunet/org/chromium/base/PowerMonitor;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lunet/org/chromium/base/PowerMonitor;->b:Z

    .line 66
    invoke-static {}, Lunet/org/chromium/base/PowerMonitor;->nativeOnBatteryChargingChanged()V

    return-void
.end method

.method private static isBatteryPower()Z
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 71
    sget-object v0, Lunet/org/chromium/base/PowerMonitor;->a:Lunet/org/chromium/base/PowerMonitor;

    iget-boolean v0, v0, Lunet/org/chromium/base/PowerMonitor;->b:Z

    return v0
.end method

.method private static native nativeOnBatteryChargingChanged()V
.end method
