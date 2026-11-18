.class public Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;
.super Landroid/app/Service;
.source "GenieAssistantUiService.java"


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final TAG:Ljava/lang/String; = "GenieAssistantUiService"

.field private static final WHO_AM_I:Ljava/lang/String; = "GenieAssistantUiService"

.field private static flag:Z = false

.field private static uiService:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;


# instance fields
.field private mConnectedClient:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mServiceHandler:Landroid/os/Handler;

.field private mUiController:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

.field private messenger:Landroid/os/Messenger;

.field private userReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 107
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$4;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->userReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;Landroid/os/Message;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->dealMessage(Landroid/os/Message;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)Lcom/alibaba/ailabs/genie/genieui/GenieUiController;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mUiController:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->startAccessService()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private dealMessage(Landroid/os/Message;)V
    .locals 5

    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "GenieAssistantUiService"

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_0

    const-string p1, "error command"

    .line 180
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -- data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2719

    if-eq v0, v3, :cond_3

    const/16 v3, 0x271e

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2720

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 208
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->updateASR(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->insertStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd_change_status:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->changeStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd_hide_ui:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->hideUI(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd_show_ui:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->showUI(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->onClientDisconnect(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v2, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->onClientConnect(Ljava/lang/String;Landroid/os/Messenger;)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->disableWakeupRecommend(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->promptGenieBallMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->registerListener(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private disableWakeupRecommend(Ljava/lang/String;)V
    .locals 1

    .line 223
    const-class v0, Lcom/alibaba/ailabs/genie/client/data/EnableWakeupRecommend;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/client/data/EnableWakeupRecommend;

    .line 224
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mUiController:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/EnableWakeupRecommend;->isEnable()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->setWakeupRecommendEnable(Z)V

    return-void
.end method

.method public static getUiService()Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;
    .locals 1

    .line 326
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->uiService:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    return-object v0
.end method

.method private onClientConnect(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 2

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "GenieAssistantUiService"

    if-eqz v0, :cond_0

    const-string p1, "Client Connect but data is null"

    .line 145
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_0
    const-class v0, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;

    .line 149
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;->getWho()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Client Connect but who is empty"

    .line 150
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string p1, "Client Connect but messenger is null"

    .line 154
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mConnectedClient:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;->getWho()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onClientDisconnect(Ljava/lang/String;)V
    .locals 2

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "GenieAssistantUiService"

    if-eqz v0, :cond_0

    const-string p1, "Client Connect but data is null"

    .line 162
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_0
    const-class v0, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;

    .line 166
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;->getWho()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Client Connect but who is empty"

    .line 167
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->messenger:Landroid/os/Messenger;

    if-nez v0, :cond_2

    const-string p1, "Client Connect but messenger is null"

    .line 171
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mConnectedClient:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;->getWho()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private promptGenieBallMessage(Ljava/lang/String;)V
    .locals 1

    .line 228
    const-class v0, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mUiController:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->promptMessage(Lcom/alibaba/ailabs/genie/client/data/PromptMessageData;)V

    return-void
.end method

.method private registerBindUserReceiver()V
    .locals 2

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->userReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/ailabs/genie/client/data/BaseReqData;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 254
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "GenieAssistantUiService"

    .line 257
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;->setWho(Ljava/lang/String;)V

    .line 258
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 259
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mConnectedClient:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 262
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 263
    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 264
    iput p1, v0, Landroid/os/Message;->what:I

    .line 265
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "data"

    .line 266
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 269
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private startAccessService()V
    .locals 5

    .line 122
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 128
    invoke-virtual {v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/ailabs/genie/genieui/service/AccessibilityMonitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$5;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private updateASR(Ljava/lang/String;)V
    .locals 1

    .line 279
    const-class v0, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;

    .line 280
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mUiController:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->updateASRText(Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;)V

    return-void
.end method


# virtual methods
.method public changeStatus(Ljava/lang/String;)V
    .locals 1

    .line 288
    const-class v0, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mUiController:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->scheduleList(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V

    return-void
.end method

.method public hideUI(Ljava/lang/String;)V
    .locals 1

    .line 293
    const-class v0, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;

    .line 294
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mUiController:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;->isKeepShow()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->hideUI(Z)V

    return-void
.end method

.method public insertStatus(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "GenieAssistantUiService"

    const-string v0, "onBind"

    .line 312
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "GenieAssistantUiService"

    const-string v1, "onCreate..."

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sput-object p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->uiService:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$1;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mServiceHandler:Landroid/os/Handler;

    .line 73
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mServiceHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->messenger:Landroid/os/Messenger;

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mConnectedClient:Ljava/util/HashMap;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mListeners:Ljava/util/HashMap;

    .line 76
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getInstance()Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mUiController:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    .line 77
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mUiController:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->init(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mUiController:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->isValid()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->setLoginStatus(Z)V

    .line 80
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getInstance()Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$2;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->init(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$LoadListener;)V

    .line 91
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->startAccessService()V

    .line 92
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$3;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$3;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)V

    const/16 v3, 0x2766

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerSyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;)V

    .line 103
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->registerBindUserReceiver()V

    const-string v1, "init"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "GenieAssistantUiService"

    const-string v1, "onDestroy: "

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->userReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 321
    sput-object v0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->uiService:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    .line 322
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onGenieUiClick(I)V
    .locals 2

    .line 248
    new-instance v0, Lcom/alibaba/ailabs/genie/client/data/GenieUiClickData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/client/data/GenieUiClickData;-><init>()V

    .line 249
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/GenieUiClickData;->setClickType(I)V

    .line 250
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mListeners:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/16 v1, 0x2718

    invoke-direct {p0, v1, v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->sendMessage(ILcom/alibaba/ailabs/genie/client/data/BaseReqData;Ljava/util/List;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "GenieAssistantUiService"

    const-string p2, "onStartCommand"

    .line 300
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public registerListener(Ljava/lang/String;)V
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerListener :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAssistantUiService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-class v0, Lcom/alibaba/ailabs/genie/client/data/RegisterListenerData;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/client/data/RegisterListenerData;

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/RegisterListenerData;->getListenerType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/RegisterListenerData;->getWho()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/RegisterListenerData;->getWho()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/RegisterListenerData;->getListenerType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public showUI(Ljava/lang/String;)V
    .locals 1

    .line 305
    const-class v0, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;

    .line 306
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->mUiController:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/client/data/ShowUiRequest;->isKeepShow()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->showUI(Z)V

    return-void
.end method
