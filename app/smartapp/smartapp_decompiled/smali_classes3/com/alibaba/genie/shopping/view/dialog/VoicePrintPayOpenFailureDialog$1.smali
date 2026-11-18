.class Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$1;
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

    .line 72
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 76
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->dismiss()V

    .line 79
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
