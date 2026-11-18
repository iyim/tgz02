.class Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;
.super Ljava/lang/Object;
.source "VoicePrintOpenFailureDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 114
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->dismiss()V

    .line 118
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->access$000(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 123
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "nickName"

    .line 124
    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->access$000(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->startActivity(Landroid/content/Intent;)V

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;

    if-eqz p1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mNext:Z

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
