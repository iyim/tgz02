.class public Lcom/taobao/tao/log/message/SendMessage;
.super Ljava/lang/Object;
.source "SendMessage.java"


# static fields
.field private static TAG:Ljava/lang/String; = "SendMessage"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static pull(Landroid/content/Context;)V
    .locals 2

    .line 88
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getMessageSender()Lcom/taobao/tao/log/message/MessageSender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v1, Lcom/taobao/tao/log/message/MessageInfo;

    invoke-direct {v1}, Lcom/taobao/tao/log/message/MessageInfo;-><init>()V

    .line 91
    iput-object p0, v1, Lcom/taobao/tao/log/message/MessageInfo;->context:Landroid/content/Context;

    .line 92
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/taobao/tao/log/message/MessageInfo;->appKey:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->getTtid()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/taobao/tao/log/message/MessageInfo;->ttid:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getUTDID()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/taobao/tao/log/message/MessageInfo;->deviceId:Ljava/lang/String;

    .line 95
    invoke-interface {v0, v1}, Lcom/taobao/tao/log/message/MessageSender;->pullMsg(Lcom/taobao/tao/log/message/MessageInfo;)Lcom/taobao/tao/log/message/MessageReponse;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/taobao/tao/log/message/MessageReponse;->result:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/taobao/tao/log/task/PullTask;->getInstance()Lcom/taobao/tao/log/task/PullTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/tao/log/task/PullTask;->handle(Lcom/taobao/tao/log/message/MessageReponse;)V

    :cond_0
    return-void
.end method

.method public static send(Landroid/content/Context;Lcom/taobao/android/tlog/protocol/model/RequestResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/taobao/tao/log/message/SendMessage;->send(Landroid/content/Context;Lcom/taobao/android/tlog/protocol/model/RequestResult;Ljava/lang/Boolean;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static send(Landroid/content/Context;Lcom/taobao/android/tlog/protocol/model/RequestResult;Ljava/lang/Boolean;)V
    .locals 4

    .line 39
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_SEND_COUNT:Ljava/lang/String;

    const-string v2, "SEND MESSAGE COUNT"

    const-string/jumbo v3, "\u5f00\u59cb\u53d1\u9001\u6d88\u606f"

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/taobao/tao/log/message/MessageInfo;

    invoke-direct {v0}, Lcom/taobao/tao/log/message/MessageInfo;-><init>()V

    .line 44
    iput-object p0, v0, Lcom/taobao/tao/log/message/MessageInfo;->context:Landroid/content/Context;

    .line 45
    iget-object p0, p1, Lcom/taobao/android/tlog/protocol/model/RequestResult;->content:Ljava/lang/String;

    iput-object p0, v0, Lcom/taobao/tao/log/message/MessageInfo;->content:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/tao/log/message/MessageInfo;->appKey:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->getTtid()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/tao/log/message/MessageInfo;->ttid:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getUTDID()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/tao/log/message/MessageInfo;->deviceId:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/taobao/android/tlog/protocol/TLogSecret;->getInstance()Lcom/taobao/android/tlog/protocol/TLogSecret;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/android/tlog/protocol/TLogSecret;->getRsaMd5Value()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/tao/log/message/MessageInfo;->publicKeyDigest:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->getMessageSender()Lcom/taobao/tao/log/message/MessageSender;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p0, v0}, Lcom/taobao/tao/log/message/MessageSender;->sendStartUp(Lcom/taobao/tao/log/message/MessageInfo;)Lcom/taobao/tao/log/message/MessageReponse;

    move-result-object p0

    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {p0, v0}, Lcom/taobao/tao/log/message/MessageSender;->sendMsg(Lcom/taobao/tao/log/message/MessageInfo;)Lcom/taobao/tao/log/message/MessageReponse;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 60
    iget-object p1, p0, Lcom/taobao/tao/log/message/MessageReponse;->result:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/taobao/tao/log/message/MessageReponse;->serviceId:Ljava/lang/String;

    .line 62
    iget-object p2, p0, Lcom/taobao/tao/log/message/MessageReponse;->userId:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/taobao/tao/log/message/MessageReponse;->dataId:Ljava/lang/String;

    .line 64
    iget-object p0, p0, Lcom/taobao/tao/log/message/MessageReponse;->result:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/taobao/tao/log/CommandDataCenter;->getInstance()Lcom/taobao/tao/log/CommandDataCenter;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p1, p2, v0, p0}, Lcom/taobao/tao/log/CommandDataCenter;->onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    .line 71
    sget-object p0, Lcom/taobao/tao/log/message/SendMessage;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "send request message error,result is null "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 77
    :cond_2
    sget-object p0, Lcom/taobao/tao/log/message/SendMessage;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "send request message error,you need impl message sender "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p0

    sget-object p1, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_SEND:Ljava/lang/String;

    const-string p2, "SEND MESSAGE"

    const-string/jumbo v0, "\u53d1\u9001\u6d88\u606f\u5931\u8d25\uff0c\u56e0\u4e3a\u6ca1\u6709\u5b9e\u73b0\u6d88\u606f\u670d\u52a1"

    invoke-interface {p0, p1, p2, v0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
