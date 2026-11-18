.class public Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;
.super Ljava/lang/Object;
.source "JNI_orderManager.java"


# static fields
.field public static volatile ourInstance:Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "shoppingSdk"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->ourInstance:Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;
    .locals 2

    .line 15
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->ourInstance:Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    if-nez v0, :cond_1

    .line 16
    const-class v0, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->ourInstance:Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    invoke-direct {v1}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;-><init>()V

    sput-object v1, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->ourInstance:Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->ourInstance:Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    return-object v0
.end method


# virtual methods
.method public callRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JNI_orderManager_log:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/NetRequest;->getInstance()Lcom/alibaba/genie/tradepay/manager/NetRequest;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/genie/tradepay/manager/NetRequest;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public cancelVoicePayFailed(Ljava/lang/String;)I
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelVoicePayFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JNI_orderManager_log:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "retcode"

    .line 181
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "status"

    .line 182
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "message"

    .line 183
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    const-class v1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    const-class v1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->cancelVoicePayFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cancelVoicePaySuccess(Ljava/lang/String;)I
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelVoicePaySuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JNI_orderManager_log:"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-class p1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    const-class p1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->cancelVoicePaySuccess(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public native cancelVpay()I
.end method

.method public native destoryAllac()I
.end method

.method public getVoicecodeFailed(Ljava/lang/String;)I
    .locals 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoicecodeFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JNI_orderManager_log:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "retcode"

    .line 199
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "status"

    .line 200
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "message"

    .line 201
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    const-class v1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    const-class v1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getVoiceCodeFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getVoicecodeSuccess(Ljava/lang/String;)I
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoicecodeSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JNI_orderManager_log:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-class v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    const-class v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getVoiceCodeSuccess(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public native getVoiceode()I
.end method

.method public native init()I
.end method

.method public native processNLPResult(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native putorder_c_lib(Ljava/lang/String;)I
.end method

.method public returnPayFailed(Ljava/lang/String;)I
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "returnPayFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JNI_orderManager_log:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "retcode"

    .line 114
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "model"

    .line 115
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v1, Lcom/alibaba/genie/tradepay/manager/payEvent;

    invoke-direct {v1}, Lcom/alibaba/genie/tradepay/manager/payEvent;-><init>()V

    const/4 v2, 0x0

    .line 117
    invoke-virtual {v1, v2}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setSuccess(Z)V

    .line 118
    invoke-virtual {v1, v0}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setCode(I)V

    .line 119
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setModel(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/OrderManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->pay_end(Lcom/alibaba/genie/tradepay/manager/payEvent;)V

    return v2
.end method

.method public returnPaySuccess(Ljava/lang/String;)I
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "returnPaySuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JNI_orderManager_log:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "retcode"

    .line 127
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "model"

    .line 128
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    new-instance v1, Lcom/alibaba/genie/tradepay/manager/payEvent;

    invoke-direct {v1}, Lcom/alibaba/genie/tradepay/manager/payEvent;-><init>()V

    const/4 v2, 0x1

    .line 130
    invoke-virtual {v1, v2}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setSuccess(Z)V

    .line 131
    invoke-virtual {v1, v0}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setCode(I)V

    .line 132
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setModel(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/OrderManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->pay_end(Lcom/alibaba/genie/tradepay/manager/payEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public returnPutorderFailed(Ljava/lang/String;)I
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "returnPutorderFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JNI_orderManager_log:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "retcode"

    .line 140
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    const-string/jumbo v0, "status"

    .line 141
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "message"

    .line 142
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public returnPutorderSuccess(Ljava/lang/String;)I
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "returnPutorderSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JNI_orderManager_log:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/OrderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->putorder_success(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public returnTophoneFailed(Ljava/lang/String;)I
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "returnTophoneFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JNI_orderManager_log:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "retcode"

    .line 163
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "status"

    .line 164
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "message"

    .line 165
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    const-class v1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    const-class v1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->sendPayToPhoneFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public returnTophoneSuccess(Ljava/lang/String;)I
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "returnTophoneSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JNI_orderManager_log:"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-class p1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    const-class p1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->sendPayToPhoneSuccess()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public native setResponse_lib(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native tradepay_c_lib(Ljava/lang/String;)I
.end method

.method public native usePhonepay()I
.end method

.method public vpayCancelDynamic()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public vpayCheckErro()I
    .locals 2

    const-string v0, "JNI_orderManager_log:"

    const-string/jumbo v1, "vpayCheckErro"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-class v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    const-class v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->vpayErro()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public vpayTimeOut()I
    .locals 2

    const-string v0, "JNI_orderManager_log:"

    const-string/jumbo v1, "vpayTimeOut"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-class v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    const-class v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->vpayErro()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
