.class public Lc/b/a/b/h/a;
.super Lc/b/a/b/h/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/b/h/a$a;
    }
.end annotation


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 2

    invoke-direct {p0, p1}, Lc/b/a/b/h/k;-><init>(Lc/b/a/b/h/i$a;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    new-instance v1, Lc/b/a/b/h/a$a;

    invoke-direct {v1, p0}, Lc/b/a/b/h/a$a;-><init>(Lc/b/a/b/h/a;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    const-class v0, Lc/b/a/b/h/a;

    const-string v1, "start collect Battery info"

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x1

    return v0
.end method
