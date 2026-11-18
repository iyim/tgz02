.class final Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$2;
.super Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;
.source "CmRtcRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository;->queryRemainTime(Ljava/lang/String;Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;)V
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
.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$2;->val$callback:Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$2;->onFailure(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 87
    sget-object p1, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryRemainTime onFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$2;->val$callback:Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;

    if-eqz p1, :cond_1

    const-string p1, "400"

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 90
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$2;->val$callback:Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2, p1, p3}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;->onQueryRemainTime(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$2;->onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;)V
    .locals 3

    .line 79
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryRemainTime ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/ModelResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$2;->val$callback:Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 81
    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/CmRtcRepository$OnQueryRemainTimeCallback;->onQueryRemainTime(ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method
