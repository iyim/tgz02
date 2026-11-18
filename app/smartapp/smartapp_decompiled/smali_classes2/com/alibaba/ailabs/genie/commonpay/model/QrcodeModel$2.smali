.class Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;
.super Ljava/lang/Object;
.source "QrcodeModel.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->queryPaymentStatus(JLjava/lang/String;Ljava/lang/String;)V
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

    .line 230
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;)V
    .locals 24

    move-object/from16 v1, p0

    const-string v0, "common_qrcode_pay_query_pay_status_failure"

    const-string v2, "common_qrcode_pay_qrcode_page"

    const-string v3, "a2i1i.b43891792"

    const-string v4, "spm"

    const-string v5, "response_param"

    const-string v6, "request data="

    const-string v7, "request_param"

    const-string v8, "authInfo"

    if-eqz p1, :cond_3

    .line 234
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

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CommonPay"

    invoke-static {v10, v9}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "queryPaymentStatus response; traceid = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; response data="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; request data="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-virtual {v12}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->getData()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    const-string v10, "traceid = "

    if-eqz v9, :cond_2

    const-string v12, "success"

    .line 240
    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "msgInfo"

    .line 241
    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "model"

    .line 242
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    if-eqz v12, :cond_1

    if-eqz v14, :cond_0

    .line 246
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    move-result-object v15

    const-string v0, "sellerId"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v0, "appId"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v0, "outOrderId"

    .line 247
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v0, "orderId"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v0, "orderStatus"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v20

    const-string v0, "outItemId"

    .line 248
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v0, "outItemName"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v0, "failMsg"

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 246
    invoke-interface/range {v15 .. v23}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;->onQueryOrderSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :try_start_0
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "traceid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_qrcode_pay_query_pay_status_success"

    .line 255
    iget-object v3, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-static {v0, v2, v3}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 260
    :cond_0
    iget-object v11, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-static {v11}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    move-result-object v11

    const-string v12, "-4"

    const-string v13, "response model is null"

    invoke-interface {v11, v12, v13}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;->onQueryOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :try_start_1
    iget-object v11, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v8, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; response model is null; response data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v5, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v3, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-static {v0, v2, v3}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 272
    :cond_1
    iget-object v12, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-static {v12}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    move-result-object v12

    const-string v14, "-3"

    invoke-interface {v12, v14, v13}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;->onQueryOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :try_start_2
    iget-object v12, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v8, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; msgInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v5, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v3, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-static {v0, v2, v3}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 284
    :cond_2
    iget-object v9, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-static {v9}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    move-result-object v9

    const-string v11, "-2"

    const-string v12, "response data is null"

    invoke-interface {v9, v11, v12}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;->onQueryOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :try_start_3
    iget-object v9, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v8, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; response data is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v5, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v3, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-static {v0, v2, v3}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 297
    :cond_3
    iget-object v9, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-static {v9}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->access$000(Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;)Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;

    move-result-object v9

    const-string v10, "response is null"

    const-string v11, "-1"

    invoke-interface {v9, v11, v10}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;->onQueryOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :try_start_4
    iget-object v9, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v8, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$datas:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-interface {v6, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v5, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v3, v1, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel$2;->val$properts:Ljava/util/Map;

    invoke-static {v0, v2, v3}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
