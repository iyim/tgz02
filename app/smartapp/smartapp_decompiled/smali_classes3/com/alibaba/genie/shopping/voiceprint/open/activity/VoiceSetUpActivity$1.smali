.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$1;
.super Ljava/lang/Object;
.source "VoiceSetUpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->finish()V

    return-void
.end method
