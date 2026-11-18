.class public Lcom/alibaba/genie/tradepay/manager/OrderManager;
.super Ljava/lang/Object;
.source "OrderManager.java"


# static fields
.field public static volatile ourInstance:Lcom/alibaba/genie/tradepay/manager/OrderManager;


# instance fields
.field private asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

.field private mAppinfo:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/genie/tradepay/manager/OrderManager;
    .locals 2

    .line 32
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/OrderManager;->ourInstance:Lcom/alibaba/genie/tradepay/manager/OrderManager;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/alibaba/genie/tradepay/manager/OrderManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/tradepay/manager/OrderManager;->ourInstance:Lcom/alibaba/genie/tradepay/manager/OrderManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/alibaba/genie/tradepay/manager/OrderManager;

    invoke-direct {v1}, Lcom/alibaba/genie/tradepay/manager/OrderManager;-><init>()V

    sput-object v1, Lcom/alibaba/genie/tradepay/manager/OrderManager;->ourInstance:Lcom/alibaba/genie/tradepay/manager/OrderManager;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/OrderManager;->ourInstance:Lcom/alibaba/genie/tradepay/manager/OrderManager;

    return-object v0
.end method


# virtual methods
.method public createOrderAndPay(Ljava/lang/String;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 0

    .line 163
    iput-object p2, p0, Lcom/alibaba/genie/tradepay/manager/OrderManager;->asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    .line 164
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->init()I

    .line 165
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->putorder_c_lib(Ljava/lang/String;)I

    return-void
.end method

.method public pay_end(Lcom/alibaba/genie/tradepay/manager/payEvent;)V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/manager/OrderManager;->asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->isSuccess()Z

    move-result v1

    const-string v2, "isSuccess"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getCode()I

    move-result v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/alibaba/genie/tradepay/manager/OrderManager;->asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->isSuccess()Z

    move-result v0

    const-string/jumbo v1, "shopping_pay_native"

    const-string v2, "model="

    const-string v3, "code="

    const-string/jumbo v4, "return\uff1a isSuccess="

    const-string v5, "PayOverMsg"

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->isSuccess()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getCode()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getModel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pay_success"

    const-string v2, "a211mb.c1599730516628"

    .line 112
    invoke-static {p1, v1, v2, v0}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->isSuccess()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getCode()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getModel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pay_failed"

    const-string v2, "a211mb.c1599730557802"

    .line 117
    invoke-static {p1, v1, v2, v0}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 120
    :cond_1
    :goto_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5f53\u524d\u65f6\u95f4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pay callback at"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance p1, Lcom/alibaba/genie/tradepay/manager/OrderManager$1;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/tradepay/manager/OrderManager$1;-><init>(Lcom/alibaba/genie/tradepay/manager/OrderManager;)V

    .line 139
    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/OrderManager$1;->start()V

    return-void
.end method

.method public putorder_success(Ljava/lang/String;)V
    .locals 10

    .line 43
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "changeText"

    .line 45
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-static {}, Lcom/alibaba/genie/tradepay/WebTradePayApplication;->getApplication()Landroid/app/Application;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "87fa86ae-d34a-48f2-b098-92973292cc94"

    invoke-static/range {v3 .. v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    :cond_0
    const-string v1, "orderCode"

    .line 51
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "payOrderCode"

    .line 52
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "payType"

    .line 53
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v1, "vpPayCode"

    .line 54
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "qrPayCode"

    .line 55
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "voiceText"

    .line 56
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "tbNickname"

    .line 57
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "openVoiceBuy"

    .line 58
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-object v2, p0

    .line 60
    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->toPayActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/manager/OrderManager;->asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz v0, :cond_2

    .line 64
    new-instance v0, Lcom/alibaba/genie/tradepay/manager/payEvent;

    invoke-direct {v0}, Lcom/alibaba/genie/tradepay/manager/payEvent;-><init>()V

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setSuccess(Z)V

    const/16 v1, -0x7d1

    .line 66
    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setCode(I)V

    const-string/jumbo v1, "{\"model\":{}}"

    .line 67
    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setModel(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->pay_end(Lcom/alibaba/genie/tradepay/manager/payEvent;)V

    .line 71
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "params"

    .line 72
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "createorder_success"

    const-string/jumbo v1, "shopping_pay_native"

    const-string v2, "a211mb.c1599728187374"

    .line 73
    invoke-static {p1, v1, v2, v0}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public toPayActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "genie://com.alibaba.ailabs.genie.webapps_shopping_sdk_forampe/open"

    .line 170
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10008000

    .line 172
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "vpaycode"

    .line 173
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "voicetext"

    .line 174
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "paytype"

    .line 175
    invoke-virtual {v1, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ordercode"

    .line 176
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "nickname"

    .line 177
    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "qrcode"

    .line 178
    invoke-virtual {v1, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "payordercode"

    .line 179
    invoke-virtual {v1, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-static {}, Lcom/alibaba/genie/tradepay/WebTradePayApplication;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/alibaba/genie/tradepay/manager/OrderManager;->asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz p1, :cond_0

    .line 183
    new-instance p1, Lcom/alibaba/genie/tradepay/manager/payEvent;

    invoke-direct {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;-><init>()V

    .line 184
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setSuccess(Z)V

    const/16 p2, -0x7d1

    .line 185
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setCode(I)V

    const-string/jumbo p2, "{\"model\":{}}"

    .line 186
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setModel(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->pay_end(Lcom/alibaba/genie/tradepay/manager/payEvent;)V

    :cond_0
    return-void

    .line 191
    :cond_1
    invoke-static {}, Lcom/alibaba/genie/tradepay/WebTradePayApplication;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public tradePay(Ljava/lang/String;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 0

    .line 150
    iput-object p2, p0, Lcom/alibaba/genie/tradepay/manager/OrderManager;->asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    .line 151
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->init()I

    .line 152
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->tradepay_c_lib(Ljava/lang/String;)I

    return-void
.end method

.method public userExit_end(Lcom/alibaba/genie/tradepay/manager/payEvent;)V
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/manager/OrderManager;->asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->isSuccess()Z

    move-result v1

    const-string v2, "isSuccess"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getCode()I

    move-result v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/alibaba/genie/tradepay/manager/OrderManager;->asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->isSuccess()Z

    move-result v0

    const-string/jumbo v1, "shopping_pay_native"

    const-string v2, "model="

    const-string v3, "code="

    const-string/jumbo v4, "return\uff1a isSuccess="

    const-string v5, "PayOverMsg"

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->isSuccess()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getCode()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getModel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pay_success"

    const-string v2, "a211mb.c1599730516628"

    .line 90
    invoke-static {p1, v1, v2, v0}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->isSuccess()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getCode()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->getModel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pay_failed"

    const-string v2, "a211mb.c1599730557802"

    .line 95
    invoke-static {p1, v1, v2, v0}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->destoryAllac()I

    .line 99
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->removeAllActivity()V

    return-void
.end method
