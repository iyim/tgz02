.class public Lcom/taobao/android/ultron/message/MessageChannel;
.super Ljava/lang/Object;
.source "MessageChannel.java"


# instance fields
.field private final channelId:Ljava/lang/String;

.field private extParams:Lcom/alibaba/fastjson/JSONObject;

.field private final messageManager:Lcom/taobao/android/ultron/message/MessageManager;

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/message/MessageChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/android/ultron/message/MessageManager;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/message/MessageChannel;->observers:Ljava/util/List;

    .line 23
    iput-object p2, p0, Lcom/taobao/android/ultron/message/MessageChannel;->messageManager:Lcom/taobao/android/ultron/message/MessageManager;

    .line 24
    iput-object p1, p0, Lcom/taobao/android/ultron/message/MessageChannel;->channelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized addObserver(Lcom/taobao/android/ultron/message/MessageChannel;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageChannel;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 43
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public close()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageChannel;->messageManager:Lcom/taobao/android/ultron/message/MessageManager;

    invoke-virtual {v0, p0}, Lcom/taobao/android/ultron/message/MessageManager;->unregisterChannel(Lcom/taobao/android/ultron/message/MessageChannel;)V

    return-void
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageChannel;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParams()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageChannel;->extParams:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getMessageManager()Lcom/taobao/android/ultron/message/MessageManager;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageChannel;->messageManager:Lcom/taobao/android/ultron/message/MessageManager;

    return-object v0
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageChannel;->messageManager:Lcom/taobao/android/ultron/message/MessageManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/ultron/message/MessageManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public postNotification(Ljava/lang/Object;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageChannel;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/message/MessageChannel;

    .line 61
    iget-object v1, v1, Lcom/taobao/android/ultron/message/MessageChannel;->channelId:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/taobao/android/ultron/message/MessageChannel;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized removeObserver(Lcom/taobao/android/ultron/message/MessageChannel;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ultron/message/MessageChannel;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 49
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
