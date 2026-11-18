.class public Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;
.super Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;
.source "PayOrderQueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;
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

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.commonPay.queryOrderResult"

    .line 13
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 19
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->NEED_ECODE:Z

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->NEED_SESSION:Z

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->API_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->setApiName(Ljava/lang/String;)V

    .line 36
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->NEED_ECODE:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->setNeedEcode(Z)V

    .line 37
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->NEED_SESSION:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->setNeedSession(Z)V

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;->setVersion(Ljava/lang/String;)V

    return-void
.end method
