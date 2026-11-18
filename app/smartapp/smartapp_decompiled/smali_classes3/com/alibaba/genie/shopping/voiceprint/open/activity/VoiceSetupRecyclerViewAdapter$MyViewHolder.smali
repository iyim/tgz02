.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VoiceSetupRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

.field tv_voice_del:Landroid/widget/TextView;

.field tv_voice_name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$MyViewHolder;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;

    .line 134
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 135
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_voice_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$MyViewHolder;->tv_voice_name:Landroid/widget/TextView;

    .line 136
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_voice_del:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$MyViewHolder;->tv_voice_del:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;Landroid/view/View;Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter$MyViewHolder;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoiceSetupRecyclerViewAdapter;Landroid/view/View;)V

    return-void
.end method
