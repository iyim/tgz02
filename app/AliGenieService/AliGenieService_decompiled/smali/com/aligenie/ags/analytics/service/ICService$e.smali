.class public Lcom/aligenie/ags/analytics/service/ICService$e;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aligenie/ags/analytics/service/ICService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lcom/aligenie/ags/analytics/service/ICService;


# direct methods
.method public synthetic constructor <init>(Lcom/aligenie/ags/analytics/service/ICService;Lcom/aligenie/ags/analytics/service/ICService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aligenie/ags/analytics/service/ICService$e;->a:Lcom/aligenie/ags/analytics/service/ICService;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/aligenie/ags/analytics/service/ICService$e;->a:Lcom/aligenie/ags/analytics/service/ICService;

    .line 1
    iget-object v1, v1, Lcom/aligenie/ags/analytics/service/ICService;->b:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v2

    invoke-static {v1, v2}, Lc/b/a/b/o/l;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "IC ID:"

    invoke-static {v3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-- packageName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-- pageName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-- PrepackageName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lc/b/a/b/o/g;->o:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-- PrepageName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lc/b/a/b/o/g;->p:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-- app_name:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lc/b/a/b/o/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-- app_version:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -- type:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -- u/pid:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -- state:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v5

    invoke-static {v0, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/media/AudioPlaybackConfiguration;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -- attr:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/b/a/b/o/i;->a(Ljava/lang/String;)V

    new-instance v3, Lc/b/a/b/k/b;

    invoke-direct {v3}, Lc/b/a/b/k/b;-><init>()V

    const-string v5, "event_type"

    const-string v6, "sys_player"

    invoke-virtual {v3, v5, v6}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v5

    invoke-static {v0, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/media/AudioPlaybackConfiguration;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v6

    sget-object v7, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "started"

    if-nez v7, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    return-void

    :cond_2
    sget-object v7, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, ""

    if-nez v7, :cond_4

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lc/b/a/b/m/a;

    invoke-direct {v11, v6}, Lc/b/a/b/m/a;-><init>(I)V

    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/m/a;

    .line 3
    sget-object v10, Lc/b/a/b/o/g;->a:Ljava/lang/String;

    .line 4
    iput-object v10, v7, Lc/b/a/b/m/a;->a:Ljava/lang/String;

    sget-object v7, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/m/a;

    .line 5
    iput-object v0, v7, Lc/b/a/b/m/a;->i:Landroid/media/AudioPlaybackConfiguration;

    .line 6
    sget-object v7, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/m/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v7, Lc/b/a/b/m/a;->h:J

    sget-object v7, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/m/a;

    .line 7
    iput-object v2, v7, Lc/b/a/b/m/a;->k:Ljava/lang/String;

    .line 8
    sget-object v7, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/m/a;

    .line 9
    iput-object v1, v7, Lc/b/a/b/m/a;->j:Ljava/lang/String;

    .line 10
    sget-object v7, Lc/b/a/b/o/g;->x:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lc/b/a/b/o/g;->y:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v4, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    sput-object v4, Lc/b/a/b/o/g;->y:Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v7, Lc/b/a/b/o/g;->x:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    sget-object v10, Lc/b/a/b/o/g;->y:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lc/b/a/b/o/g;->x:Ljava/lang/Boolean;

    sput-object v9, Lc/b/a/b/o/g;->y:Ljava/lang/String;

    :cond_4
    :goto_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v4}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/b/m/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 11
    iput-wide v10, v4, Lc/b/a/b/m/a;->e:J

    .line 12
    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v4}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/b/m/a;

    iget v10, v4, Lc/b/a/b/m/a;->g:I

    add-int/2addr v10, v7

    iput v10, v4, Lc/b/a/b/m/a;->g:I

    :cond_5
    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    int-to-long v10, v4

    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v4}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/b/m/a;

    iget-wide v12, v4, Lc/b/a/b/m/a;->h:J

    add-long/2addr v10, v12

    int-to-long v12, v6

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v10, "playid"

    invoke-virtual {v3, v10, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    :cond_6
    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v4}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/b/m/a;

    iget v4, v4, Lc/b/a/b/m/a;->g:I

    if-eq v4, v7, :cond_7

    const-string v4, "resume"

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/aligenie/ags/analytics/service/ICService$e;->a:Lcom/aligenie/ags/analytics/service/ICService;

    .line 13
    invoke-virtual {v4, v5}, Lcom/aligenie/ags/analytics/service/ICService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    const-string v7, "event_name"

    .line 14
    invoke-virtual {v3, v7, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "stopped"

    if-eqz v4, :cond_a

    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "paused"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_8
    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v4}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/b/m/a;

    .line 15
    iget-wide v10, v4, Lc/b/a/b/m/a;->e:J

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    const-string v8, "play_seconds"

    if-eqz v4, :cond_9

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v4}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/b/m/a;

    .line 17
    iget-wide v12, v4, Lc/b/a/b/m/a;->e:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    .line 18
    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    :goto_4
    sget-object v4, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v4}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/b/m/a;

    const-wide/16 v10, 0x0

    .line 19
    iput-wide v10, v4, Lc/b/a/b/m/a;->e:J

    .line 20
    :cond_a
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "uid"

    invoke-virtual {v3, v8, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/media/AudioPlaybackConfiguration;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "pid"

    invoke-virtual {v3, v4, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "app_name"

    invoke-virtual {v3, v4, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "app_verison"

    invoke-virtual {v3, v4, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "processName"

    invoke-virtual {v3, v0, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "packageName"

    invoke-virtual {v3, v0, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    goto :goto_5

    :cond_b
    const-string v0, "activity_invisable"

    :goto_5
    const-string v1, "activityName"

    invoke-virtual {v3, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->t:Ljava/lang/String;

    const-string v1, "windowName"

    invoke-virtual {v3, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "voice"

    if-eqz v0, :cond_c

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v0}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/m/a;

    iget-object v0, v0, Lc/b/a/b/m/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lc/b/a/b/o/g;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v0}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/m/a;

    sget-object v2, Lc/b/a/b/o/g;->j:Ljava/lang/String;

    iput-object v2, v0, Lc/b/a/b/m/a;->b:Ljava/lang/String;

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v0}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/m/a;

    sget-object v2, Lc/b/a/b/o/g;->k:Ljava/lang/String;

    iput-object v2, v0, Lc/b/a/b/m/a;->c:Ljava/lang/String;

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v0}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/m/a;

    sget-object v2, Lc/b/a/b/o/g;->l:Ljava/lang/String;

    iput-object v2, v0, Lc/b/a/b/m/a;->d:Ljava/lang/String;

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v0}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/m/a;

    iput-object v1, v0, Lc/b/a/b/m/a;->f:Ljava/lang/String;

    :cond_c
    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v0}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/m/a;

    iget-object v0, v0, Lc/b/a/b/m/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v0}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/m/a;

    iget-object v0, v0, Lc/b/a/b/m/a;->b:Ljava/lang/String;

    const-string v1, "traceId"

    invoke-virtual {v3, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v0}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/m/a;

    iget-object v0, v0, Lc/b/a/b/m/a;->c:Ljava/lang/String;

    const-string v1, "asrLogId"

    invoke-virtual {v3, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v0}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/m/a;

    iget-object v0, v0, Lc/b/a/b/m/a;->d:Ljava/lang/String;

    const-string v1, "commandId"

    invoke-virtual {v3, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    :cond_d
    sget-object v0, Lc/b/a/b/o/g;->o:Ljava/lang/String;

    const-string v1, "prePackage"

    invoke-virtual {v3, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->p:Ljava/lang/String;

    const-string v1, "preActivity"

    invoke-virtual {v3, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->q:Ljava/lang/String;

    const-string v1, "prewindow"

    invoke-virtual {v3, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "content_name"

    if-eqz v0, :cond_e

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v0}, Lc/c/a/a/a;->a(ILjava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/m/a;

    iget-object v0, v0, Lc/b/a/b/m/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto :goto_6

    :cond_e
    invoke-virtual {v3, v1, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    .line 21
    :goto_6
    sget-object v0, Lc/b/a/b/o/g;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {v3, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    new-instance v0, Lc/b/a/b/o/a;

    invoke-direct {v0}, Lc/b/a/b/o/a;-><init>()V

    invoke-virtual {v0}, Lc/b/a/b/o/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_text"

    invoke-virtual {v3, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v3}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    return-void
.end method
