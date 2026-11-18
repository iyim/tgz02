.class public Lc/b/a/b/n/g;
.super Lc/b/a/b/h/i;
.source ""


# instance fields
.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/b/a/b/h/i;-><init>(Lc/b/a/b/h/i$a;)V

    const-string p1, "usage"

    iput-object p1, p0, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    .line 1
    sget-object p1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    iput-object p1, p0, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->b(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lc/b/a/b/o/j;)V
    .locals 0

    return-void
.end method

.method public b(Lc/b/a/b/o/j;)V
    .locals 0

    return-void
.end method

.method public c(Lc/b/a/b/o/j;)V
    .locals 0

    return-void
.end method

.method public onEventReceive(Lc/b/a/b/o/j;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->ASYNC:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lc/b/a/b/o/j;->b:Ljava/lang/String;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.updateJob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.updatePackage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "com.updateActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v5

    goto :goto_0

    :sswitch_3
    const-string v2, "com.lowmemory"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lc/b/a/b/n/g;->b(Lc/b/a/b/o/j;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lc/b/a/b/n/g;->c(Lc/b/a/b/o/j;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lc/b/a/b/n/g;->a(Lc/b/a/b/o/j;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lc/b/a/b/n/g;->a()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3471c6d8 -> :sswitch_3
        -0x3c04fb -> :sswitch_2
        0x4ef15590 -> :sswitch_1
        0x6915f207 -> :sswitch_0
    .end sparse-switch
.end method
