.class public Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;
.super Landroid/app/Service;
.source "MessageCenterService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageCenterService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIpcServiceImp:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private dispatchOtherApp(Ljava/lang/String;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->mIpcServiceImp:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->notifyOtherApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private dispatchSmartCareByRouter(Ljava/lang/String;)Z
    .locals 2

    .line 143
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "data"

    .line 144
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extData"

    .line 146
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "messageType"

    .line 148
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "payload"

    .line 150
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance p1, Lcom/alibaba/ailabs/ipc/event/Event;

    const-string v1, "childAiCareSubscribe"

    invoke-direct {p1, v1, v0}, Lcom/alibaba/ailabs/ipc/event/Event;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 152
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->publish(Lcom/alibaba/ailabs/ipc/event/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getCountUnread(Landroid/content/Context;)V
    .locals 2

    .line 178
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 179
    new-instance v1, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService$1;-><init>(Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->getCountUnread(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method private handleCommonMsg(Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->mIpcServiceImp:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->handleCommonMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleNewMessage(Ljava/lang/String;)V
    .locals 1

    .line 116
    invoke-direct {p0, p0}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->getCountUnread(Landroid/content/Context;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->mIpcServiceImp:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->handleMessageNotify(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleNewNotification(Ljava/lang/String;)V
    .locals 1

    .line 123
    invoke-direct {p0, p0}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->getCountUnread(Landroid/content/Context;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->mIpcServiceImp:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->handleNewNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleStatusNotify(Ljava/lang/String;)V
    .locals 1

    .line 168
    invoke-direct {p0, p0}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->getCountUnread(Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->mIpcServiceImp:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->handleStatusNotify(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->mIpcServiceImp:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->mIpcServiceImp:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->mIpcServiceImp:Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "MessageCenterService"

    const-string v1, "onCreate: renderData"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 2

    .line 196
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const-string v0, "persist.sys.is.study.mode"

    const-string v1, "0"

    .line 57
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MessageCenterService"

    if-eqz v0, :cond_0

    const-string v0, "\u5b66\u4e60\u6a21\u5f0f\u4e0d\u5f39\u6d88\u606f"

    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "renderData"

    const-string v2, "pageType"

    if-eqz p1, :cond_7

    .line 62
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AliGenie.Notify.Notification"

    .line 65
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->handleNewNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v5, "AliGenie.Notify.MessageStatusChanged"

    .line 68
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->handleStatusNotify(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "AliGenie.Notify.Message"

    .line 71
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 72
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->dispatchSmartCareByRouter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 75
    :cond_3
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->handleNewMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v5, "AliGenie.Notify.CommonMsg"

    .line 76
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 78
    const-class v3, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;

    invoke-static {v4, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;

    if-eqz v3, :cond_6

    .line 80
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;->getData()Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 82
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;->getMessageType()Ljava/lang/String;

    move-result-object v3

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "genius.sys.msg.standard.bigImg"

    .line 86
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "bigImg"

    .line 87
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->handleCommonMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_5
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->dispatchOtherApp(Ljava/lang/String;)V

    .line 99
    :cond_6
    :goto_0
    :try_start_0
    invoke-direct {p0, p0}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterService;->getCountUnread(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand: getCountUnread-->Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 106
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
