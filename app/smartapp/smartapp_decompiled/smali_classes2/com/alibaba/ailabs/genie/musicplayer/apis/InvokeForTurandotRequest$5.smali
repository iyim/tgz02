.class Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$5;
.super Ljava/lang/Object;
.source "InvokeForTurandotRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;->queryRightRecordReal(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$QueryRecordCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$QueryRecordCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$QueryRecordCallback;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$5;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$QueryRecordCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryRightRecord error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  ; "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TME-binding"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;",
            ">;)V"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", traceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-binding"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$5;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$QueryRecordCallback;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$QueryRecordCallback;->success(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;)V

    return-void
.end method
