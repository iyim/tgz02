.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;
.super Ljava/lang/Object;
.source "CleanerMainItemViewHolder.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
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
.field final synthetic this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

.field final synthetic val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iput-object p2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 287
    sget-object v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unCollectApplet onError s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",s1:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",packageName:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 289
    iget-object p2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object p2, p2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->val$finalName:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object p2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object p2, p2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->val$packageName:Ljava/lang/String;

    const-string v0, "pkgName"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "deleteApkFinish"

    .line 291
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportCleanEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 292
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->access$400(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->access$400(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object p2, p2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->val$packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->val$retCode:I

    invoke-interface {p1, p2, v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;->onUninstallSuccess(Ljava/lang/String;I)V

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

    .line 270
    sget-object v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unCollectApplet onSuccess packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object v2, v2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",apiResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",traceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 272
    new-instance p1, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    const-string v2, "custom"

    .line 273
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;-><init>(ILcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    .line 274
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 276
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 277
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->val$finalName:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->val$packageName:Ljava/lang/String;

    const-string v1, "pkgName"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deleteApkFinish"

    .line 279
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportCleanEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 280
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->access$400(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 281
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->access$400(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->val$packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;

    iget v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$3;->val$retCode:I

    invoke-interface {p1, v0, v1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;->onUninstallSuccess(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
