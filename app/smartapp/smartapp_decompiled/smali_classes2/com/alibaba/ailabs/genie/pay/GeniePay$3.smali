.class Lcom/alibaba/ailabs/genie/pay/GeniePay$3;
.super Ljava/lang/Object;
.source "GeniePay.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/pay/GeniePayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/GeniePay;->paySellTypeTwo(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/GeniePay;

.field final synthetic val$listener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/GeniePay;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$3;->this$0:Lcom/alibaba/ailabs/genie/pay/GeniePay;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$3;->val$listener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeniePayActivity onFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeniePay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$3;->val$listener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V
    .locals 3

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeniePayActivity onSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModelList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeniePay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModelList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 372
    check-cast v2, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    .line 373
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$3;->this$0:Lcom/alibaba/ailabs/genie/pay/GeniePay;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->setGeniePayResult(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V

    .line 377
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$3;->this$0:Lcom/alibaba/ailabs/genie/pay/GeniePay;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->access$200(Lcom/alibaba/ailabs/genie/pay/GeniePay;)V

    goto :goto_1

    .line 379
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$3;->val$listener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    if-eqz p1, :cond_2

    .line 380
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    const-string v1, "server return null"

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    :cond_2
    :goto_1
    return-void
.end method
