.class public Lcom/aligenie/ags/analytics/service/AccService$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aligenie/ags/analytics/service/AccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/aligenie/ags/analytics/service/AccService;


# direct methods
.method public constructor <init>(Lcom/aligenie/ags/analytics/service/AccService;)V
    .locals 0

    iput-object p1, p0, Lcom/aligenie/ags/analytics/service/AccService$a;->a:Lcom/aligenie/ags/analytics/service/AccService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/aligenie/ags/analytics/service/AccService$a;->a:Lcom/aligenie/ags/analytics/service/AccService;

    iget-object p1, p1, Lcom/aligenie/ags/analytics/service/AccService;->c:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/b/m/a;

    .line 1
    iget-object v2, v1, Lc/b/a/b/m/a;->i:Landroid/media/AudioPlaybackConfiguration;

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "AccMonitor"

    if-eqz v2, :cond_0

    const-string v2, "containsKey:"

    invoke-static {v2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3
    iget-object v1, v1, Lc/b/a/b/m/a;->i:Landroid/media/AudioPlaybackConfiguration;

    .line 4
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v1, Lc/b/a/b/m/a;->i:Landroid/media/AudioPlaybackConfiguration;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v2, "not containsKey:"

    .line 6
    invoke-static {v2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7
    iget-object v4, v1, Lc/b/a/b/m/a;->i:Landroid/media/AudioPlaybackConfiguration;

    .line 8
    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lc/b/a/b/k/b;

    invoke-direct {v2}, Lc/b/a/b/k/b;-><init>()V

    const-string v3, "event_type"

    const-string v4, "sys_player"

    invoke-virtual {v2, v3, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v3, "event_name"

    const-string v4, "release"

    invoke-virtual {v2, v3, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    .line 9
    iget-object v1, v1, Lc/b/a/b/m/a;->i:Landroid/media/AudioPlaybackConfiguration;

    .line 10
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v1

    sget-object v3, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/b/m/a;

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    iget-wide v6, v3, Lc/b/a/b/m/a;->h:J

    add-long/2addr v4, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "playid"

    invoke-virtual {v2, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    .line 11
    iget-wide v4, v3, Lc/b/a/b/m/a;->e:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-string v5, "play_seconds"

    if-eqz v4, :cond_3

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 13
    iget-wide v8, v3, Lc/b/a/b/m/a;->e:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    .line 14
    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    .line 15
    :goto_1
    iget-object v4, v3, Lc/b/a/b/m/a;->k:Ljava/lang/String;

    .line 16
    invoke-static {v4}, Lc/b/a/b/o/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_name"

    invoke-virtual {v2, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    .line 17
    iget-object v4, v3, Lc/b/a/b/m/a;->k:Ljava/lang/String;

    .line 18
    invoke-static {v4}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_verison"

    invoke-virtual {v2, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    .line 19
    iget-object v4, v3, Lc/b/a/b/m/a;->j:Ljava/lang/String;

    const-string v5, "processName"

    .line 20
    invoke-virtual {v2, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    .line 21
    iget-object v4, v3, Lc/b/a/b/m/a;->k:Ljava/lang/String;

    const-string v5, "packageName"

    .line 22
    invoke-virtual {v2, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget-object v4, v3, Lc/b/a/b/m/a;->f:Ljava/lang/String;

    const-string v5, "voice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lc/b/a/b/m/a;->b:Ljava/lang/String;

    const-string v5, "traceId"

    invoke-virtual {v2, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget-object v4, v3, Lc/b/a/b/m/a;->c:Ljava/lang/String;

    const-string v5, "asrLogId"

    invoke-virtual {v2, v5, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget-object v3, v3, Lc/b/a/b/m/a;->d:Ljava/lang/String;

    const-string v4, "commandId"

    invoke-virtual {v2, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    :cond_4
    invoke-static {v2}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    sget-object v2, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-void
.end method
