.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;
.super Ljava/lang/Object;
.source "VoicePrintAlipayStartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 133
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/Utils;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    .line 137
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5$1;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;)V

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;->startVerify(Landroid/content/Context;Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;I)V

    :cond_0
    return-void
.end method
