.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity$2;
.super Ljava/lang/Object;
.source "VoicePrintGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 32
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintNickCreateActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 34
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;->finish()V

    return-void
.end method
