.class Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;
.super Ljava/lang/Object;
.source "GeniePayActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/pay/GeniePayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getConfirmOrderV0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 143
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V
    .locals 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfirmOrderV0 onFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GeniePay"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorCode:Ljava/lang/String;

    const-string v3, "MAX_BUY_QUANTITY_EXCEEDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfirmOrderV0 onFailure MAX_BUY_QUANTITY_EXCEEDED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->access$300(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    .line 183
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V
    .locals 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfirmOrderV0 onSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModel:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeniePay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->access$102(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModel:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    iput-object p1, v0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    .line 151
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getQrPayCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qrcode == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    .line 153
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getVoiceText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->finish()V

    return-void

    .line 158
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->access$200(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;-><init>(Landroid/view/View;)V

    const/4 v0, 0x2

    .line 159
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getQrPayCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 163
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x7d1

    .line 164
    iput v0, p1, Landroid/os/Message;->what:I

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 169
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, -0x3eb

    .line 170
    iput v0, p1, Landroid/os/Message;->what:I

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
