.class Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;
.super Ljava/lang/Object;
.source "QrcodeModel.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->createOrder(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

.field final synthetic val$datas:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$properts:Ljava/util/Map;

.field final synthetic val$request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;)V
    .locals 28

    move-object/from16 v1, p0

    const-string v0, "common_qrcode_pay_create_order_failure"

    const-string v2, "common_qrcode_pay_qrcode_page"

    const-string v3, "a2i1i.b43891792"

    const-string v4, "spm"

    const-string v5, "response_param"

    const-string v6, "request data="

    const-string v7, "request_param"

    const-string v8, "authInfo"

    if-eqz p1, :cond_4

    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request.response; traceid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "CommonPay"

    invoke-static {v11, v9}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createOrder response; traceid = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; response data="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; request data="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-virtual {v12}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->getData()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v11, "success"

    .line 89
    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "msgCode"

    .line 90
    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "msgInfo"

    .line 91
    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "model"

    .line 94
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    if-eqz v11, :cond_2

    if-eqz v14, :cond_1

    const-string v11, "orderStatus"

    .line 98
    invoke-virtual {v14, v11}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x12c

    const-string v15, "traceid="

    if-ne v12, v13, :cond_0

    .line 99
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    move-result-object v16

    const-string v0, "sellerId"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v17

    const-string v0, "appId"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v0, "outOrderId"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v0, "amount"

    .line 100
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v21

    const-string v0, "orderId"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v0, "outItemId"

    .line 101
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v0, "outItemName"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v0, "payUrl"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v0, "merchantName"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 99
    invoke-interface/range {v16 .. v27}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;->onCreateOrderSuccess(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :try_start_0
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_qrcode_pay_create_order_success"

    .line 108
    iget-object v3, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-static {v0, v2, v3}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 113
    :cond_0
    iget-object v10, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-static {v10}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    move-result-object v10

    invoke-virtual {v14, v11}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "response orderstatus = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v12, v0}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;->onCreateOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; orderStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; reponse data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    move-object/from16 v10, v16

    invoke-static {v10, v2, v0}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    move-object v10, v0

    .line 127
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    move-result-object v0

    const-string v9, "-4"

    const-string v11, "response model is null"

    invoke-interface {v0, v9, v11}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;->onCreateOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_2
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response model is null;traceid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-static {v10, v2, v0}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    move-object v10, v0

    .line 140
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    move-result-object v0

    invoke-interface {v0, v12, v13}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;->onCreateOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :try_start_3
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "success=false; traceid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";response data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-static {v10, v2, v0}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    move-object v10, v0

    .line 152
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    move-result-object v0

    const-string v9, "-2"

    const-string v11, "response data is null"

    invoke-interface {v0, v9, v11}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;->onCreateOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_4
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response data is null; traceid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-static {v10, v2, v0}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    move-object v10, v0

    .line 165
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    move-result-object v0

    const-string v9, "response is null"

    const-string v11, "-1"

    invoke-interface {v0, v11, v9}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;->onCreateOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_5
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$1;->val$properts:Ljava/util/Map;

    invoke-static {v10, v2, v0}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
