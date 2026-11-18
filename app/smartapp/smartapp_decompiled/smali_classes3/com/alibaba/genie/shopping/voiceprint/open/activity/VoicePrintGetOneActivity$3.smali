.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$3;
.super Ljava/lang/Object;
.source "VoicePrintGetOneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->onNotifyPushEvent(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 286
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mNext:Z

    .line 287
    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_print_intrapt_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->startActivity(Landroid/content/Intent;)V

    .line 291
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->finish()V

    return-void
.end method
