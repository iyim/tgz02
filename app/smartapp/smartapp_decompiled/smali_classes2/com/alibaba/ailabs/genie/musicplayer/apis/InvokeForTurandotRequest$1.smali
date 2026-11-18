.class Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$1;
.super Ljava/lang/Object;
.source "InvokeForTurandotRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;->InvalidAccountBind(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;->failed()V

    .line 69
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

    .line 62
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TurandotRequest"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;->success()V

    return-void
.end method
