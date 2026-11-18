.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$1;
.super Ljava/lang/Object;
.source "VoicePrintAlipayStartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 80
    new-instance p1, Lcom/alibaba/genie/shopping/view/WhiteDialog;

    invoke-direct {p1}, Lcom/alibaba/genie/shopping/view/WhiteDialog;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "AliPay"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/shopping/view/WhiteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
