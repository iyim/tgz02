.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;
.super Ljava/lang/Object;
.source "VoicePrintAlipayStartActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->access$300(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 170
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 171
    sget-object p2, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->KEY_SOUND_INFO:Ljava/lang/String;

    iget-object p3, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object p3, p3, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-static {p3}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->access$200(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 173
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object p2, p2, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->setResult(ILandroid/content/Intent;)V

    .line 174
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->finish()V

    return-void

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->finish()V

    return-void
.end method

.method public onSuccess(I)V
    .locals 2

    .line 140
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->access$200(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 141
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$string;->va_add_sound_print_get_auth_info_failed:I

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->showLong(I)V

    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    .line 146
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->access$300(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 148
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 149
    sget-object v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->KEY_SOUND_INFO:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object v1, v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->access$200(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->setResult(ILandroid/content/Intent;)V

    .line 151
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->finish()V

    return-void

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->access$200(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->isAlipaySigned()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    sget-object v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->KEY_SOUND_INFO:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object v1, v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->access$200(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->finish()V

    goto :goto_0

    .line 162
    :cond_2
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    const v1, 0x9c42

    invoke-static {p1, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->signAliPayProtocol(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    :goto_0
    return-void
.end method
