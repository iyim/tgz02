.class Lcom/alibaba/genie/tradepay/manager/NetRequest$1;
.super Ljava/lang/Object;
.source "NetRequest.java"

# interfaces
.implements Lcom/alibaba/genie/tradepay/mtop/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/tradepay/manager/NetRequest;->MtopCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/tradepay/manager/NetRequest;

.field final synthetic val$api:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/tradepay/manager/NetRequest;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/manager/NetRequest$1;->this$0:Lcom/alibaba/genie/tradepay/manager/NetRequest;

    iput-object p2, p0, Lcom/alibaba/genie/tradepay/manager/NetRequest$1;->val$api:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/alibaba/genie/tradepay/mtop/response/MtopBizRsp;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/manager/NetRequest$1;->val$api:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/mtop/response/MtopBizRsp;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/mtop/response/MtopBizRsp;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/manager/NetRequest$1;->val$api:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->setResponse_lib(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/manager/NetRequest$1;->val$api:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->setResponse_lib(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/tradepay/manager/NetRequest$1;->val$api:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->setResponse_lib(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
