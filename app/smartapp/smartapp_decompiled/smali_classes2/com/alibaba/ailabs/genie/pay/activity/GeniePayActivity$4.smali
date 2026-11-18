.class Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;
.super Ljava/lang/Object;
.source "GeniePayActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/pay/GeniePayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->handleBaseMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V
    .locals 3

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeniePay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;->sendEmptyMessage(I)Z

    .line 291
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    iget-object v2, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorMessage:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V
    .locals 5

    const-wide/16 v0, 0x3e8

    const/16 v2, 0x7d1

    if-eqz p1, :cond_0

    .line 259
    iget-object v3, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModel:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 261
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    if-eqz v3, :cond_1

    .line 262
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 263
    iput v2, v3, Landroid/os/Message;->what:I

    .line 264
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    invoke-virtual {v4, v3, v0, v1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    :cond_1
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModel:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatus;

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pay status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GeniePay"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatus;->status:Ljava/lang/String;

    const-string v3, "SUCCESS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 273
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    const/16 v0, 0x7d2

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;->sendEmptyMessage(I)Z

    .line 275
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->access$100(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->onSuccess(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    if-eqz p1, :cond_3

    .line 279
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 280
    iput v2, p1, Landroid/os/Message;->what:I

    .line 281
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 282
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    invoke-virtual {v2, p1, v0, v1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_0
    return-void
.end method
