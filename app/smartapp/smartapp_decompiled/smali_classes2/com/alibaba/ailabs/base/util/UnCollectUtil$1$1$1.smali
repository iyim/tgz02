.class Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;
.super Ljava/lang/Object;
.source "UnCollectUtil.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketApkDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;->this$1:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUninstallFailed(Ljava/lang/String;I)V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unInstallApp onUninstallFailed pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",retCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnCollectUtil"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;->this$1:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;->this$1:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    iget-object p2, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;->this$1:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;

    iget-object p2, p2, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->val$apiResponse:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    :cond_0
    return-void
.end method

.method public onUninstallSuccess(Ljava/lang/String;I)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unInstallApp onUninstallSuccess pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",retCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnCollectUtil"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 149
    iget-object p2, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;->this$1:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;

    iget-object p2, p2, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object p2, p2, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$name:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object p2, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;->this$1:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;

    iget-object p2, p2, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object p2, p2, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$packageName:Ljava/lang/String;

    const-string v0, "pkgName"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "deleteApkFinish"

    .line 151
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportCleanEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 152
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;->this$1:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;->this$1:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    iget-object p2, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1$1;->this$1:Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;

    iget-object p2, p2, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1$1;->val$apiResponse:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    :cond_0
    return-void
.end method
