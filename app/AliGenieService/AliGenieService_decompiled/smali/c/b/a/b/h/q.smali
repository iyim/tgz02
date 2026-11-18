.class public Lc/b/a/b/h/q;
.super Lc/b/a/b/h/k;
.source ""


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/b/a/b/h/k;-><init>(Lc/b/a/b/h/i$a;)V

    .line 1
    sget-object p1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    iput-object p1, p0, Lc/b/a/b/h/k;->b:Landroid/content/Context;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->b(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onEventReceive(Lc/b/a/b/o/j;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->ASYNC:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lc/b/a/b/o/j;->b:Ljava/lang/String;

    const-string v0, "com.updateTouch"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lc/b/a/b/o/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lc/b/a/b/o/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_type"

    const-string v2, "touch"

    const-string v3, "event_name"

    const-string v4, "touch_start"

    invoke-static {v1, v2, v3, v4}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v1

    const-string v2, "top_package"

    invoke-virtual {v1, v2, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string p1, "top_activity"

    invoke-virtual {v1, p1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v1}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    :cond_0
    return-void
.end method
