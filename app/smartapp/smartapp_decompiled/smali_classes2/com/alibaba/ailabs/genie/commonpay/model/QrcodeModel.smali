.class public Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;
.super Lcom/alibaba/ailabs/genie/commonpay/model/BaseModel;
.source "QrcodeModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonPay"


# instance fields
.field private mQrcodeCallback:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/commonpay/model/BaseModel;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->mQrcodeCallback:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->mQrcodeCallback:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    return-object p0
.end method

.method private getBizGroup()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.product.model"

    .line 443
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/utils/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "AILABS_S1"

    :cond_0
    const-string v1, "_"

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 450
    aget-object v0, v0, v2

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public createOrder(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 59
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authInfo"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content"

    .line 61
    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "sign"

    .line 62
    invoke-virtual {v0, p3, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "sellerId"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uuid"

    .line 64
    invoke-virtual {v0, p1, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "biz"

    const-string p2, "CC"

    .line 66
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance p1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string p2, "mtop.alibaba.aicloud.t.commonPay.createOrder"

    .line 69
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string p2, "1.0"

    .line 70
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 72
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 75
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 78
    new-instance p2, Ljava/util/HashMap;

    const/16 p3, 0xa

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    new-instance p3, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    invoke-direct {p3, p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    new-instance p4, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;

    invoke-direct {p4, p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;-><init>(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {p3, p4}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 180
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public queryPaymentStatus(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 203
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 204
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sellerId"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "outOrderId"

    .line 205
    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance p3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 209
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v1

    const-string v3, "authInfo"

    invoke-virtual {p3, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p3, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uuid"

    .line 212
    invoke-virtual {p3, p1, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "biz"

    const-string p2, "CC"

    .line 214
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance p1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string p2, "mtop.alibaba.aicloud.t.commonPay.queryOrderResult"

    .line 217
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string p2, "1.0"

    .line 218
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 219
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 220
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 223
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 229
    new-instance p2, Ljava/util/HashMap;

    const/16 p4, 0xa

    invoke-direct {p2, p4}, Ljava/util/HashMap;-><init>(I)V

    .line 230
    new-instance p4, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    invoke-direct {p4, p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;-><init>(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {p4, v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 312
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
