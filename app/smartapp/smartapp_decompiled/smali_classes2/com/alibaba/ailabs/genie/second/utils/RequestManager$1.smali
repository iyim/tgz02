.class final Lcom/alibaba/ailabs/genie/second/utils/RequestManager$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/utils/RequestManager;->getOssToken(Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/utils/RequestManager$1;->val$listener:Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",meg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oss"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/utils/RequestManager$1;->val$listener:Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;->onResponseFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData;",
            ">;)V"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oss"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/utils/RequestManager$1;->val$listener:Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;->onResponseSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    return-void
.end method
