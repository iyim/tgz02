.class Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$1;
.super Ljava/lang/Object;
.source "ReOrderAppsRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest;->reOrderApps(Ljava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest;

.field final synthetic val$reorderListener:Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$1;->val$reorderListener:Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$1;->val$reorderListener:Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;->failed()V

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.orderApps,onError, errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReOrderAppsRequest"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$1;->val$reorderListener:Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;->success()V

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReOrderAppsRequest"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
