.class Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;
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

    .line 77
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 80
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->dismiss()V

    .line 81
    sget p1, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=shopping&menuBusinessName=\u8d2d\u7269&modeType=0"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 82
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 83
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {p1, v1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    :cond_0
    sget p1, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 86
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "come_from_voiceprint_open"

    .line 87
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :cond_1
    sget p1, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 93
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 94
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {p1, v1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
