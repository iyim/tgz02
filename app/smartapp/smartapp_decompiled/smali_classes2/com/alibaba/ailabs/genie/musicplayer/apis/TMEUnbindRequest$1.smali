.class Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$1;
.super Ljava/lang/Object;
.source "TMEUnbindRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest;->unbind(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "EC00000"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;->failed()V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.unbind,onError, errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnbindRequest"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnbindRequest"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;->success()V

    return-void
.end method
