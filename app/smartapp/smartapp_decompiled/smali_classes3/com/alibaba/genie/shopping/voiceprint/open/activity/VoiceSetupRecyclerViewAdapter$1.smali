.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "VoiceSetupRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;->onBindViewHolder(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

.field final synthetic val$position:I

.field final synthetic val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;I)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

    iput-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$1;->val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    iput p3, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;->access$100(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;)Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$1;->val$soundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    iget v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$OnItemClickListener;->onItemDel(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;I)V

    return-void
.end method
