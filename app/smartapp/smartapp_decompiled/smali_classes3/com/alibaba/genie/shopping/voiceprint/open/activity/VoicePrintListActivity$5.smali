.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$5;
.super Ljava/lang/Object;
.source "VoicePrintListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->onItemDel(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

.field final synthetic val$position:I

.field final synthetic val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;I)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    iput-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$5;->val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    iput p3, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 250
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$5;->val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->removeSoundPrintById(Ljava/lang/String;J)V

    .line 251
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$5;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->access$100(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$5;->val$position:I

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->removeData(I)V

    return-void
.end method
