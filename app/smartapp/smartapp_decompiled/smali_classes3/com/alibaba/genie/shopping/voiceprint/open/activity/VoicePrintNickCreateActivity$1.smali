.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$1;
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

    .line 55
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->access$100(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;->access$200(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
