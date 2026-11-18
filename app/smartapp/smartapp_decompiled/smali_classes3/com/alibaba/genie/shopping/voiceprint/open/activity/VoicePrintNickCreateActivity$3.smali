.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$3;
.super Ljava/lang/Object;
.source "VoicePrintNickCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/InputMethodUtils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 80
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->access$300(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->access$400(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nickName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$3;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->finish()V

    :cond_0
    return-void
.end method
