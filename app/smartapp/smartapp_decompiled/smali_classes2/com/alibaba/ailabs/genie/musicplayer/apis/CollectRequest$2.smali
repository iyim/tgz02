.class Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$2;
.super Ljava/lang/Object;
.source "CollectRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;->remove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "REMOVE---onError---msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CollectRequest"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;)Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;)Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;->onFailed()V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CollectRequest"

    const-string v1, "REMOVE---onSuccess---"

    .line 96
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess, traceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;)Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;)Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;->onSuccess()V

    :cond_0
    return-void
.end method
