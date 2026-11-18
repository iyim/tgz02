.class Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$2;
.super Ljava/lang/Object;
.source "ListAppsBySceneRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;->getListAppsByScene(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

.field final synthetic val$callBack:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$2;->val$callBack:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$2;->val$callBack:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listAppsByScene"

    .line 123
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setCurrentTraceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.listAppsBySceneWithContext,onSuccess, traceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ListAppsByScene"

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ListAppsBySceneRequest$2;->val$callBack:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    return-void
.end method
