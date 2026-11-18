.class Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;
.super Ljava/lang/Object;
.source "UnCollectUtil.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

.field final synthetic val$apiResponse:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->val$apiResponse:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unCollectAppletAndUninstall queryCollectedAppletWithPattern onError errorCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnCollectUtil"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    iget-object p2, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->val$apiResponse:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unCollectAppletAndUninstall queryCollectedAppletWithPattern onSuccess traceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnCollectUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unCollectAppletAndUninstall queryCollectedAppletWithPattern onSuccess model:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->access$200(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unCollectAppletAndUninstall queryCollectedAppletWithPattern onSuccess isCollect:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->val$apiResponse:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$packageName:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;-><init>(Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;)V

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->unInstallApp(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketApkDeleteListener;)V

    :cond_1
    :goto_0
    return-void
.end method
