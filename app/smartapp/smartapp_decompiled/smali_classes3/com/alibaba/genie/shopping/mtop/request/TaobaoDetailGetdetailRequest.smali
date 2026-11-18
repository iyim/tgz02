.class public Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;
.super Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;
.source "TaobaoDetailGetdetailRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;
    }
.end annotation


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v0, "mtop.taobao.detail.getDetail"

    .line 27
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "6.0"

    .line 33
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->NEED_ECODE:Z

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->NEED_SESSION:Z

    .line 122
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->API_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->setApiName(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->setVersion(Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->NEED_ECODE:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->setNeedEcode(Z)V

    .line 125
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->NEED_SESSION:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->setNeedSession(Z)V

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
