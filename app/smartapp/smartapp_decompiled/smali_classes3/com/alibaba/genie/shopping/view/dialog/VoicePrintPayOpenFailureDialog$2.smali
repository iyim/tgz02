.class Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$2;
.super Ljava/lang/Object;
.source "VoicePrintPayOpenFailureDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 90
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->dismiss()V

    .line 92
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mNext:Z

    .line 100
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    sget-object v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->KEY_SOUND_INFO:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->access$000(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;)Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->startActivity(Landroid/content/Intent;)V

    .line 104
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
