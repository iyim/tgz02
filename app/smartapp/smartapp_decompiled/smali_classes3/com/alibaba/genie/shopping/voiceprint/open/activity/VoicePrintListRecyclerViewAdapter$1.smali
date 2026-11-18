.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "VoicePrintListRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->onBindViewHolder(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

.field final synthetic val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

    iput-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$1;->val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$1;->val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-object v1, p1

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->setEnablePay(Z)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->access$100(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;)Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$OnItemClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$OnItemClickListener;->onIsOpen(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;Z)V

    return-void
.end method
