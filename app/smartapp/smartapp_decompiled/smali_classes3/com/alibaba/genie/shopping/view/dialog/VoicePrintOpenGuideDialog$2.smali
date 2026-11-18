.class Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$2;
.super Ljava/lang/Object;
.source "VoicePrintOpenGuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->access$000(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->KEY_VOICEPRINT_OPEN_COME_FROM:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->access$000(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->startActivity(Landroid/content/Intent;)V

    .line 92
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->dismiss()V

    return-void
.end method
