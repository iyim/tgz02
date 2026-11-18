.class Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$2;
.super Ljava/lang/Object;
.source "InvokeForTurandotRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;->QueryRightRecord(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$2;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  ; "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TurandotRequest"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$2;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;->failed()V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TurandotRequest"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$2;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;->getModel()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;->success(Ljava/util/List;)V

    .line 102
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;->getModel()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$2;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;->failed()V

    :goto_0
    return-void
.end method
