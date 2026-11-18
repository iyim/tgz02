.class final Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;
.super Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;
.source "CmRtcRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository;->getToken(Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback<",
        "Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;->val$callback:Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;->onFailure(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    sget-object p1, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getToken onFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;->val$callback:Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const-string p3, "error"

    .line 53
    invoke-interface {p1, p2, p3}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;->onGetToken(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;->onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;)V
    .locals 3

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getToken ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;->val$callback:Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "registerToken"

    .line 43
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$1;->val$callback:Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnTokenCallback;->onGetToken(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
