.class public Lcom/aligenie/ags/analytics/AliicxService;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Lc/f/a/b/b;


# instance fields
.field public b:Lc/f/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aligenie/ags/analytics/AliicxService;->b:Lc/f/a/b/a;

    const-class v0, Lcom/aligenie/ags/analytics/AliicxService;

    const-string v1, "Aliicx Service init."

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-class v0, Lcom/aligenie/ags/analytics/AliicxService;

    const-string v1, "Aliicx commitEvent."

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",trackId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",eventId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aligenie/ags/analytics/AliicxService;

    invoke-static {v0, v1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x1

    if-eq p4, v0, :cond_2

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    const/4 v0, 0x3

    if-eq p4, v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/aligenie/ags/analytics/AliicxService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    const-class p1, Lcom/aligenie/ags/analytics/AliicxService;

    const-string p2, "TT mode not yet implemented"

    invoke-static {p2, p1}, Lc/b/a/b/o/i;->c(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1

    :cond_2
    const-class p4, Lcom/aligenie/ags/analytics/AliicxService;

    const-string v0, "AliGenie did not use UT mode.Use LogProducer instead."

    invoke-static {v0, p4}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tag"

    const-string v1, "plugin_info"

    const-string v2, "event_type"

    invoke-static {v0, v1, v2, p1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object p1

    const-string v0, "event_name"

    invoke-virtual {p1, v0, p2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto :goto_0

    :cond_0
    new-instance p2, Lc/b/a/b/k/c;

    sget-object p3, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->SYSTEM_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    invoke-direct {p2, p3}, Lc/b/a/b/k/c;-><init>(Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;)V

    .line 1
    iget-object p3, p2, Lc/b/a/b/k/c;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-static {}, Lc/b/a/b/o/b;->a()Ljava/lang/String;

    .line 3
    sget-object p1, Lc/b/a/b/o/h$a;->a:Lc/b/a/b/o/h;

    .line 4
    iget-object p3, p1, Lc/b/a/b/o/h;->a:Ljava/lang/String;

    if-nez p3, :cond_1

    .line 5
    invoke-static {}, Lc/b/a/b/o/b;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lc/b/a/b/o/h;->a(Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lc/b/a/b/o/g;->Q:Ljava/lang/String;

    .line 6
    sget-object p3, Lc/b/a/b/o/h$a;->a:Lc/b/a/b/o/h;

    .line 7
    iget-object p3, p3, Lc/b/a/b/o/h;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, p1, p3}, Lc/b/a/b/k/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p1, Lc/b/a/b/a$a;->a:Lc/b/a/b/a;

    .line 10
    invoke-virtual {p1, p2}, Lc/b/a/b/a;->a(Lc/b/a/b/k/c;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 9

    const-class v0, Lcom/aligenie/ags/analytics/AliicxService;

    const-string v1, "Aliicx Service onCreate."

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lc/f/a/b/a;

    invoke-direct {v1, v0, p0}, Lc/f/a/b/a;-><init>(Landroid/content/Context;Lc/f/a/b/b;)V

    iput-object v1, p0, Lcom/aligenie/ags/analytics/AliicxService;->b:Lc/f/a/b/a;

    const-string v1, "alarm"

    .line 1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/aligenie/ags/analytics/AliicxService;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.yunos.tv.device.ALIICX_HEART_BEAT_START"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    :try_start_0
    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v1, Lcom/aligenie/ags/analytics/AliicxService;

    const-string v2, "Aliicx fail to start alarm."

    invoke-static {v2, v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-class v0, Lcom/aligenie/ags/analytics/AliicxService;

    const-string v1, "Aliicx Service onDestroy."

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/aligenie/ags/analytics/AliicxService;->b:Lc/f/a/b/a;

    invoke-virtual {v0}, Lc/f/a/b/a;->a()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    if-eqz p1, :cond_0

    const-string p2, "Aliicx Service onStartCommand. action : "

    invoke-static {p2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/aligenie/ags/analytics/AliicxService;

    invoke-static {p1, p2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    iget-object p1, p0, Lcom/aligenie/ags/analytics/AliicxService;->b:Lc/f/a/b/a;

    .line 1
    iget-boolean p2, p1, Lc/f/a/b/a;->f:Z

    const/4 p3, 0x1

    if-nez p2, :cond_1

    const-string p2, "AliicxServer start."

    const-string v0, "Aliicx"

    .line 2
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p2, p1, Lc/f/a/b/a;->b:Lc/f/a/b/f;

    .line 4
    iget-object v0, p2, Lc/f/a/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p2, Lc/f/a/b/f;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lc/f/a/b/f;->d:J

    iput-wide v0, p2, Lc/f/a/b/f;->c:J

    .line 5
    new-instance p2, Lc/f/a/b/e;

    iget-object v0, p1, Lc/f/a/b/a;->b:Lc/f/a/b/f;

    invoke-direct {p2, v0}, Lc/f/a/b/e;-><init>(Lc/f/a/b/f;)V

    iput-object p2, p1, Lc/f/a/b/a;->c:Lc/f/a/b/e;

    iget-object p2, p1, Lc/f/a/b/a;->c:Lc/f/a/b/e;

    invoke-virtual {p2}, Lc/f/a/b/e;->start()V

    new-instance p2, Lc/f/a/b/c;

    iget-object v0, p1, Lc/f/a/b/a;->a:Landroid/content/Context;

    iget-object v1, p1, Lc/f/a/b/a;->b:Lc/f/a/b/f;

    iget-object v2, p1, Lc/f/a/b/a;->e:Lc/f/a/b/b;

    invoke-direct {p2, v0, v1, v2}, Lc/f/a/b/c;-><init>(Landroid/content/Context;Lc/f/a/b/f;Lc/f/a/b/b;)V

    iput-object p2, p1, Lc/f/a/b/a;->d:Lc/f/a/b/c;

    iget-object p2, p1, Lc/f/a/b/a;->d:Lc/f/a/b/c;

    invoke-virtual {p2}, Lc/f/a/b/c;->start()V

    iput-boolean p3, p1, Lc/f/a/b/a;->f:Z

    iget-object p2, p1, Lc/f/a/b/a;->g:Landroid/os/Handler;

    iget-object p1, p1, Lc/f/a/b/a;->h:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return p3
.end method
