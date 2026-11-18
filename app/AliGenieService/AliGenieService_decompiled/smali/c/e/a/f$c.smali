.class public final Lc/e/a/f$c;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    const-string v0, "level"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1
    sput v0, Lc/e/a/f;->A:I

    const-string v0, "scale"

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3
    sput v0, Lc/e/a/f;->B:I

    const-string v0, "voltage"

    .line 4
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 5
    sput v0, Lc/e/a/f;->C:I

    const-string v0, "health"

    .line 6
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7
    sput v0, Lc/e/a/f;->D:I

    const-string v0, "plugged"

    .line 8
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 9
    sput v0, Lc/e/a/f;->E:I

    const-string v0, "status"

    .line 10
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 11
    sput v0, Lc/e/a/f;->F:I

    const-string v0, "temperature"

    .line 12
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 13
    sput p1, Lc/e/a/f;->G:I

    const-string p1, "technology"

    .line 14
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    sput-object p1, Lc/e/a/f;->H:Ljava/lang/String;

    .line 16
    sget p1, Lc/e/a/f;->K:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lc/e/a/f;->K:I

    const/4 p2, 0x2

    if-lt p1, p2, :cond_2

    .line 17
    invoke-static {}, Lc/e/a/f;->f()V

    .line 18
    sput v2, Lc/e/a/f;->K:I

    return-void

    :cond_0
    const-string p2, "android.intent.action.BATTERY_LOW"

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.ANR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 20
    :try_start_0
    invoke-static {p1}, Lc/e/a/f;->b(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 21
    invoke-static {p1, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_2
    return-void

    .line 22
    :cond_3
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 23
    sput-boolean p1, Lc/e/a/f;->I:Z

    .line 24
    invoke-static {}, Lc/e/a/f;->f()V

    return-void
.end method
