.class public Lorg/eclipse/paho/android/service/MqttService;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Ld/a/a/a/a/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/MqttService$b;
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ld/a/a/a/a/c;

.field public e:Lorg/eclipse/paho/android/service/MqttService$b;

.field public volatile f:Z

.field public g:Ld/a/a/a/a/f;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ld/a/a/a/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/a/a/a/a/e;

    .line 2
    iget-boolean v1, v0, Ld/a/a/a/a/e;->i:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Ld/a/a/a/a/e;->j:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Android offline"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ld/a/a/a/a/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "debug"

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "trace"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    const-string v2, "exception"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.errorMessage"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.exception"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "MqttService.traceTag"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    sget-object p2, Lorg/eclipse/paho/android/service/Status;->ERROR:Lorg/eclipse/paho/android/service/Status;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/Status;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "trace"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.traceTag"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.errorMessage"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    sget-object p2, Lorg/eclipse/paho/android/service/Status;->ERROR:Lorg/eclipse/paho/android/service/Status;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/Status;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/eclipse/paho/android/service/Status;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "MqttService.callbackToActivity.v0"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "MqttService.clientHandle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "MqttService.callbackStatus"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public a()Z
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 4

    const-string v0, "Reconnect to server, client size="

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService"

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/a/a/a/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    iget-object v3, v1, Ld/a/a/a/a/e;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v3, v1, Ld/a/a/a/a/e;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Reconnect Client:"

    invoke-virtual {p0, v3, v2}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ld/a/a/a/a/e;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "MqttService.activityToken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Ld/a/a/a/a/f;

    invoke-virtual {v0, p1}, Ld/a/a/a/a/f;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Ld/a/a/a/a/f;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ld/a/a/a/a/f;

    invoke-direct {v0, p0}, Ld/a/a/a/a/f;-><init>(Lorg/eclipse/paho/android/service/MqttService;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Ld/a/a/a/a/f;

    new-instance v0, Ld/a/a/a/a/b;

    invoke-direct {v0, p0, p0}, Ld/a/a/a/a/b;-><init>(Lorg/eclipse/paho/android/service/MqttService;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Ld/a/a/a/a/c;

    return-void
.end method

.method public onDestroy()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/a/a/a/a/e;

    .line 1
    iget-object v3, v1, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    const-string v4, "MqttConnection"

    const-string v5, "disconnect()"

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Ld/a/a/a/a/e;->i:Z

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "MqttService.activityToken"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MqttService.invocationContext"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "disconnect"

    const-string v5, "MqttService.callbackAction"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Ld/a/a/a/a/e;->f:Ld/a/a/b/a/d;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ld/a/a/b/a/d;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Ld/a/a/a/a/e$c;

    invoke-direct {v4, v1, v3, v2}, Ld/a/a/a/a/e$c;-><init>(Ld/a/a/a/a/e;Landroid/os/Bundle;Ld/a/a/a/a/d;)V

    :try_start_0
    iget-object v5, v1, Ld/a/a/a/a/e;->f:Ld/a/a/b/a/d;

    invoke-virtual {v5, v2, v4}, Ld/a/a/b/a/d;->a(Ljava/lang/Object;Ld/a/a/b/a/a;)Ld/a/a/b/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v1, v3, v2}, Ld/a/a/a/a/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    const-string v2, "not connected"

    const-string v5, "MqttService.errorMessage"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v5, v4, v2}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v4, v1, Ld/a/a/a/a/e;->d:Ljava/lang/String;

    sget-object v5, Lorg/eclipse/paho/android/service/Status;->ERROR:Lorg/eclipse/paho/android/service/Status;

    invoke-virtual {v2, v4, v5, v3}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/Status;Landroid/os/Bundle;)V

    :goto_1
    iget-object v2, v1, Ld/a/a/a/a/e;->c:Ld/a/a/b/a/g;

    if-eqz v2, :cond_1

    .line 2
    iget-boolean v2, v2, Ld/a/a/b/a/g;->a:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, v1, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, v2, Lorg/eclipse/paho/android/service/MqttService;->d:Ld/a/a/a/a/c;

    iget-object v3, v1, Ld/a/a/a/a/e;->d:Ljava/lang/String;

    check-cast v2, Ld/a/a/a/a/b;

    invoke-virtual {v2, v3}, Ld/a/a/a/a/b;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ld/a/a/a/a/e;->b()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Ld/a/a/a/a/f;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Ld/a/a/a/a/f;

    .line 5
    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$b;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$b;

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Ld/a/a/a/a/c;

    if-eqz v0, :cond_5

    check-cast v0, Ld/a/a/a/a/b;

    .line 7
    iget-object v0, v0, Ld/a/a/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 8
    :cond_5
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$b;

    if-nez p1, :cond_0

    new-instance p1, Lorg/eclipse/paho/android/service/MqttService$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/eclipse/paho/android/service/MqttService$b;-><init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttService$a;)V

    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$b;

    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$b;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p1, 0x1

    return p1
.end method
