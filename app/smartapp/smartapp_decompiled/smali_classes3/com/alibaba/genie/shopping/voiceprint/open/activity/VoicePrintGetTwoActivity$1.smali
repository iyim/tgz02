.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$1;
.super Ljava/lang/Object;
.source "VoicePrintGetTwoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    new-instance p1, Lcom/alibaba/genie/shopping/view/WhiteDialog;

    invoke-direct {p1}, Lcom/alibaba/genie/shopping/view/WhiteDialog;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "getTwo"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/shopping/view/WhiteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
