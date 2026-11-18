.class public Lcom/taobao/android/ultron/message/MessageManager;
.super Ljava/lang/Object;
.source "MessageManager.java"


# instance fields
.field private final channelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/message/MessageChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/message/MessageManager;->channelMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Lcom/taobao/android/ultron/message/MessageChannel;)V
    .locals 1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageManager;->channelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/ultron/message/MessageChannel;

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1, p2}, Lcom/taobao/android/ultron/message/MessageChannel;->addObserver(Lcom/taobao/android/ultron/message/MessageChannel;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageManager;->channelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getChannelMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/message/MessageChannel;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageManager;->channelMap:Ljava/util/Map;

    return-object v0
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageManager;->channelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/ultron/message/MessageChannel;

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1, p2}, Lcom/taobao/android/ultron/message/MessageChannel;->onMessage(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public postNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageManager;->channelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/ultron/message/MessageChannel;

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1, p2}, Lcom/taobao/android/ultron/message/MessageChannel;->postNotification(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized registerChannel(Lcom/taobao/android/ultron/message/MessageChannel;)V
    .locals 2

    monitor-enter p0

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/android/ultron/message/MessageChannel;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/taobao/android/ultron/message/MessageManager;->channelMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeObserver(Ljava/lang/String;Lcom/taobao/android/ultron/message/MessageChannel;)V
    .locals 1

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageManager;->channelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/ultron/message/MessageChannel;

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1, p2}, Lcom/taobao/android/ultron/message/MessageChannel;->removeObserver(Lcom/taobao/android/ultron/message/MessageChannel;)V

    :cond_1
    return-void
.end method

.method public unregisterAllChannels()V
    .locals 1

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageManager;->channelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized unregisterChannel(Lcom/taobao/android/ultron/message/MessageChannel;)V
    .locals 1

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/android/ultron/message/MessageChannel;->getChannelId()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageManager;->channelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
