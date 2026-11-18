.class public Ld/a/a/a/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/a/a/b/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/a/a/a/e$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ld/a/a/b/a/g;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ld/a/a/b/a/d;

.field public g:Ld/a/a/a/a/a;

.field public h:Lorg/eclipse/paho/android/service/MqttService;

.field public volatile i:Z

.field public j:Z

.field public volatile k:Z

.field public l:Landroid/os/PowerManager$WakeLock;


# virtual methods
.method public declared-synchronized a()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld/a/a/a/a/e;->f:Ld/a/a/b/a/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "Reconnect myClient = null. Will not do reconnect"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ld/a/a/a/a/e;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "The client is connecting. Reconnect return directly."

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttService;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "MqttConnection"

    const-string v2, "The network is not reachable. Will not do reconnect"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Ld/a/a/a/a/e;->c:Ld/a/a/b/a/g;

    .line 3
    iget-boolean v0, v0, Ld/a/a/b/a/g;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v0, "MqttConnection"

    const-string v3, "Requesting Automatic reconnect using New Java AC"

    .line 4
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "MqttService.activityToken"

    iget-object v4, p0, Ld/a/a/a/a/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MqttService.invocationContext"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MqttService.callbackAction"

    const-string v3, "connect"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Ld/a/a/a/a/e;->f:Ld/a/a/b/a/d;

    invoke-virtual {v2}, Ld/a/a/b/a/d;->b()V
    :try_end_4
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_5
    const-string v3, "MqttConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred attempting to reconnect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Ld/a/a/a/a/e;->a(Z)V

    :goto_0
    invoke-virtual {p0, v0, v2}, Ld/a/a/a/a/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_3
    iget-boolean v0, p0, Ld/a/a/a/a/e;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ld/a/a/a/a/e;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    const-string v3, "MqttConnection"

    const-string v4, "Do Real Reconnect!"

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "MqttService.activityToken"

    iget-object v4, p0, Ld/a/a/a/a/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MqttService.invocationContext"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MqttService.callbackAction"

    const-string v4, "connect"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v3, Ld/a/a/a/a/e$b;

    invoke-direct {v3, p0, v0, v0}, Ld/a/a/a/a/e$b;-><init>(Ld/a/a/a/a/e;Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v4, p0, Ld/a/a/a/a/e;->f:Ld/a/a/b/a/d;

    iget-object v5, p0, Ld/a/a/a/a/e;->c:Ld/a/a/b/a/g;

    invoke-virtual {v4, v5, v2, v3}, Ld/a/a/b/a/d;->a(Ld/a/a/b/a/g;Ljava/lang/Object;Ld/a/a/b/a/a;)Ld/a/a/b/a/c;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ld/a/a/a/a/e;->a(Z)V
    :try_end_6
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_7
    iget-object v3, p0, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    const-string v4, "MqttConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot reconnect to remote server."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ld/a/a/a/a/e;->a(Z)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/4 v3, 0x6

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {p0, v0, v1}, Ld/a/a/a/a/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v2

    iget-object v3, p0, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    const-string v4, "MqttConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot reconnect to remote server."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ld/a/a/a/a/e;->a(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/os/Bundle;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p2, p0, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v0, p0, Ld/a/a/a/a/e;->d:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/paho/android/service/Status;->ERROR:Lorg/eclipse/paho/android/service/Status;

    invoke-virtual {p2, v0, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/Status;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "connectionLost("

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttConnection"

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/a/a/a/a/e;->i:Z

    :try_start_0
    iget-object v0, p0, Ld/a/a/a/a/e;->c:Ld/a/a/b/a/g;

    .line 1
    iget-boolean v0, v0, Ld/a/a/b/a/g;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/a/a/a/a/e;->f:Ld/a/a/b/a/d;

    const/4 v1, 0x0

    new-instance v2, Ld/a/a/a/a/e$a;

    invoke-direct {v2, p0}, Ld/a/a/a/a/e$a;-><init>(Ld/a/a/a/a/e;)V

    invoke-virtual {v0, v1, v2}, Ld/a/a/b/a/d;->a(Ljava/lang/Object;Ld/a/a/b/a/a;)Ld/a/a/b/a/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/a/a/a/a/e;->g:Ld/a/a/a/a/a;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ld/a/a/a/a/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "onConnectionLost"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttService.errorMessage"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v1, :cond_1

    const-string v1, "MqttService.exception"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MqttService.exceptionStack"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ld/a/a/a/a/e;->h:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Ld/a/a/a/a/e;->d:Ljava/lang/String;

    sget-object v2, Lorg/eclipse/paho/android/service/Status;->OK:Lorg/eclipse/paho/android/service/Status;

    invoke-virtual {p1, v1, v2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/Status;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ld/a/a/a/a/e;->b()V

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ld/a/a/a/a/e;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Ld/a/a/a/a/e;->l:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/a/a/a/e;->l:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method
