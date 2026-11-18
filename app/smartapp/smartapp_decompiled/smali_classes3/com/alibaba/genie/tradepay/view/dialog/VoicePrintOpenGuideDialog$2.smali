.class Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog$2;
.super Ljava/lang/Object;
.source "VoicePrintOpenGuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog$2;->this$0:Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "genie://com.alibaba.ailabs.genie.shopping/voicePrintList"

    .line 80
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "guide"

    const/16 v1, 0x8

    .line 82
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    iget-object p1, p0, Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog$2;->this$0:Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog;

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog;->startActivity(Landroid/content/Intent;)V

    .line 84
    iget-object p1, p0, Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog$2;->this$0:Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/view/dialog/VoicePrintOpenGuideDialog;->dismiss()V

    return-void
.end method
