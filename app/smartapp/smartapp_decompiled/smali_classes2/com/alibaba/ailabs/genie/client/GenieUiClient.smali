.class public Lcom/alibaba/ailabs/genie/client/GenieUiClient;
.super Ljava/lang/Object;
.source "GenieUiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/client/GenieUiClient$OnClickListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GenieUiClient"


# instance fields
.field private clientHandler:Landroid/os/Handler;

.field private clientMessenger:Landroid/os/Messenger;

.field private context:Landroid/content/Context;

.field mCallback:Lcom/alibaba/ailabs/genie/client/data/GestureCallback;

.field private mListenerRegister:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/client/data/RegisterListenerData;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Lcom/alibaba/ailabs/genie/client/GenieUiClient$OnClickListener;

.field private msgWaitToSend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private needReconnect:Z

.field private reconnect:Z

.field private serverMessenger:Landroid/os/Messenger;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private whoIs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->mListenerRegister:Ljava/util/List;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->needReconnect:Z

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->reconnect:Z

    .line 48
    new-instance v0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;-><init>(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->whoIs:Ljava/lang/String;

    .line 87
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->msgWaitToSend:Ljava/util/List;

    .line 88
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/client/GenieUiClient$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient$2;-><init>(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->clientHandler:Landroid/os/Handler;

    .line 114
    new-instance p1, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->clientHandler:Landroid/os/Handler;

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->clientMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Landroid/os/Messenger;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->serverMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/client/GenieUiClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->serverMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/client/GenieUiClient;ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->msgWaitToSend:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->reconnect:Z

    return p0
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/client/GenieUiClient;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->reconnect:Z

    return p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->mListenerRegister:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->needReconnect:Z

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/client/GenieUiClient;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->onGenieUiClick(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private onGenieUiClick(Ljava/lang/String;)V
    .locals 1

    .line 118
    const-class v0, Lcom/alibaba/ailabs/genie/client/data/GenieUiClickData;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/client/data/GenieUiClickData;

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->mOnClickListener:Lcom/alibaba/ailabs/genie/client/GenieUiClient$OnClickListener;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/GenieUiClickData;->getClickType()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient$OnClickListener;->onClick(I)V

    :cond_0
    return-void
.end method

.method private sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V
    .locals 2

    .line 178
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->clientMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 180
    iput p1, v0, Landroid/os/Message;->what:I

    .line 181
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->whoIs:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;->setWho(Ljava/lang/String;)V

    .line 182
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 183
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "data"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 185
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->serverMessenger:Landroid/os/Messenger;

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->msgWaitToSend:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeStatus(ILjava/lang/String;)V
    .locals 1

    .line 138
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    .line 139
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setTips(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    const/16 p1, 0x2715

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    return-void
.end method

.method public changeStatus(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 145
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    .line 146
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setTips(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p3}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setMode(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    const/16 p1, 0x2715

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    return-void
.end method

.method public hideUI(Z)V
    .locals 1

    .line 238
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;-><init>(Z)V

    const/16 p1, 0x2714

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public initial(Landroid/content/Context;)V
    .locals 3

    .line 220
    sget-object v0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->TAG:Ljava/lang/String;

    const-string v1, "initial"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.tg.UI_SERVICE"

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 225
    sget-object v0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->TAG:Ljava/lang/String;

    const-string v1, "BIND_AUTO_CREATE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->context:Landroid/content/Context;

    return-void
.end method

.method public isUiShow(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 243
    sget-object p1, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->TAG:Ljava/lang/String;

    const-string v1, "isUiShow: context is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 246
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "method"

    const-string v3, "isUIShow"

    .line 247
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.alibaba.ailabs.genie.smartapp"

    .line 248
    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;

    move-result-object p1

    const/16 v2, 0x2766

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->callSyncMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "isUiShow"

    .line 249
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public promptMessage(Ljava/lang/String;J)V
    .locals 1

    .line 131
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;-><init>()V

    .line 132
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;->setMessage(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;->setDuration(J)V

    const/16 p1, 0x271e

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 206
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    const/16 v1, 0x2712

    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->needReconnect:Z

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public setGenieBallClickListener(Lcom/alibaba/ailabs/genie/client/GenieUiClient$OnClickListener;)V
    .locals 1

    .line 230
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->mOnClickListener:Lcom/alibaba/ailabs/genie/client/GenieUiClient$OnClickListener;

    .line 231
    new-instance p1, Lcom/alibaba/ailabs/genie/client/data/RegisterListenerData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/client/data/RegisterListenerData;-><init>()V

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/client/data/RegisterListenerData;->setListenerType(I)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->mListenerRegister:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x2719

    .line 234
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    return-void
.end method

.method public setWakeupRecommendEnable(Z)V
    .locals 1

    .line 212
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/EnableWakeupRecommend;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/EnableWakeupRecommend;-><init>(Z)V

    const/16 p1, 0x2720

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showGestureAnimation(ILjava/lang/String;Lcom/alibaba/ailabs/genie/client/data/GestureCallback;)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "---text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->mCallback:Lcom/alibaba/ailabs/genie/client/data/GestureCallback;

    .line 162
    new-instance p3, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;-><init>(ILjava/lang/String;)V

    const/16 p1, 0x271b

    .line 163
    invoke-direct {p0, p1, p3}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    return-void
.end method

.method public showGestureHint(Z)V
    .locals 1

    .line 172
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/GestureReqData;-><init>(Z)V

    const/16 p1, 0x271f

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showNotification(Lcom/alibaba/ailabs/genie/client/data/NotificationBean;)V
    .locals 1

    const/16 v0, 0x271a

    .line 202
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showUI(Z)V
    .locals 1

    .line 216
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;-><init>(Z)V

    const/16 p1, 0x2713

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateASRText(Ljava/lang/String;)V
    .locals 1

    .line 125
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;-><init>()V

    .line 126
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;->setText(Ljava/lang/String;)V

    const/16 p1, 0x2717

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    return-void
.end method
