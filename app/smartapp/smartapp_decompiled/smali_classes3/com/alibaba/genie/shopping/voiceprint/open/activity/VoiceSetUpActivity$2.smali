.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$2;
.super Ljava/lang/Object;
.source "VoiceSetUpActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/voiceprint/open/activity/onItemDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->onItemDel(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;

.field final synthetic val$position:I

.field final synthetic val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;ILcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;

    iput p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$2;->val$position:I

    iput-object p3, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$2;->val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/app/Dialog;)V
    .locals 3

    .line 123
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 124
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;)Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$2;->val$position:I

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;->removeData(I)V

    .line 126
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetUpActivity$2;->val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->removeSoundPrintById(Ljava/lang/String;J)V

    return-void
.end method
