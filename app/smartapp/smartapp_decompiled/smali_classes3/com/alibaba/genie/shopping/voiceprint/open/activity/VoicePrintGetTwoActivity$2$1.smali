.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2$1;
.super Ljava/lang/Object;
.source "VoicePrintGetTwoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;->onFocusChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;

.field final synthetic val$hasFocus:Z


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;Z)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;

    iput-boolean p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2$1;->val$hasFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 119
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2$1;->val$hasFocus:Z

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    const/4 v1, 0x0

    const-string v2, "\u8bf7\u6682\u505c\u97f3\u9891\u64ad\u653e\uff0c\u7136\u540e\u91cd\u65b0\u6ce8\u518c\u58f0\u7eb9"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->access$002(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;Z)Z

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->cancelSoundPrint(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2$1;->this$1:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->finish()V

    :cond_1
    return-void
.end method
