.class public Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;
.super Ljava/lang/Object;
.source "GeniePayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;
    }
.end annotation


# static fields
.field public static final COMMON_QRCODE_PAY:I = 0x1

.field public static final COMMON_QRCODE_PAY_CREATORDER_ERROR:I = -0x2

.field public static final COMMON_QRCODE_PAY_ERROR:I = -0x5

.field public static final COMMON_QRCODE_PAY_PARAM_ERROR:I = -0x1

.field public static final COMMON_QRCODE_PAY_QUERYORDER_ERROR:I = -0x4

.field public static final COMMON_QRCODE_PAY_QUERYORDER_TIMEOUT:I = -0x3

.field public static final COMMON_QRCODE_PAY_SUCCESS:I

.field private static mInstance:Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAppinfo:Lcom/alibaba/fastjson/JSONObject;

.field private mContext:Landroid/content/Context;

.field private mQrcodePayResultCallback:Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->mInstance:Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GeniePayManager"

    .line 24
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->mInstance:Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    const-string v0, "isPaySuccess"

    .line 176
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v0, "paySuccessData"

    .line 177
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "payErrorCode"

    .line 178
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "payErrorMsg"

    .line 179
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qrcode, isPaySuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "; paySuccessDataJson="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; payErrorCode="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; payErrorMsg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GeniePayManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private qrcode(Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 146
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alibaba/ailabs/genie/commonpay/utils/Utils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 151
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sellerId"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 154
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "amount"

    invoke-virtual {v1, p5, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "appId"

    .line 155
    invoke-virtual {v1, p4, p6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "outItemId"

    .line 156
    invoke-virtual {v1, p4, p7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "outItemName"

    .line 157
    invoke-virtual {v1, p4, p8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "outOrderId"

    .line 158
    invoke-virtual {v1, p4, p9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "payExpireTime"

    invoke-virtual {v1, p5, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "content"

    .line 162
    invoke-virtual {v0, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "sign"

    .line 163
    invoke-virtual {v0, p2, p12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance p2, Landroid/content/Intent;

    const-string p3, "genie://com.alibaba.ailabs.genie.commonpay/qrcode"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p2, p4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "data"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p3, 0x4d2

    .line 168
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onEvent(Lcom/alibaba/ailabs/genie/commonpay/PayEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 187
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->getPayType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->mQrcodePayResultCallback:Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;

    if-eqz v0, :cond_2

    .line 191
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->mAppinfo:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->getRetdata()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;->paySuccess(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->mQrcodePayResultCallback:Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;

    if-eqz v0, :cond_2

    .line 195
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->mAppinfo:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->getRetCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->getRetMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;->payFailure(Lcom/alibaba/fastjson/JSONObject;ILjava/lang/String;)V

    .line 198
    :cond_2
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 199
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public qrcode(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v2, p12

    .line 99
    iput-object v2, v0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->mAppinfo:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v2, p13

    .line 100
    iput-object v2, v0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->mQrcodePayResultCallback:Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;

    .line 102
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 106
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 107
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "sellerId"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 110
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "amount"

    invoke-virtual {v3, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "appId"

    move-object v6, p5

    .line 111
    invoke-virtual {v3, v5, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "outItemId"

    move-object v6, p6

    .line 112
    invoke-virtual {v3, v5, p6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "outItemName"

    move-object v6, p7

    .line 113
    invoke-virtual {v3, v5, p7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "outOrderId"

    move-object v6, p8

    .line 114
    invoke-virtual {v3, v5, p8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "payExpireTime"

    invoke-virtual {v3, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    .line 118
    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz p14, :cond_2

    .line 134
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayFromWebappsActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 136
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "data"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 139
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public qrcode(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;Z)V
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 72
    invoke-static {}, Lcom/alibaba/ailabs/genie/commonpay/utils/Utils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->mAppinfo:Lcom/alibaba/fastjson/JSONObject;

    .line 76
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->mQrcodePayResultCallback:Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p3

    invoke-virtual {p3, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p3

    invoke-virtual {p3, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    if-eqz p5, :cond_2

    .line 84
    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayFromWebappsActivity;

    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 86
    :cond_2
    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;

    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/high16 p4, 0x10000000

    .line 88
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p4, "data"

    .line 89
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public uninit()V
    .locals 1

    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
