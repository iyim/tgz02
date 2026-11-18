.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VoicePrintListRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

.field tv_voice_name:Landroid/widget/TextView;

.field tv_voice_pay_open:Landroid/widget/Switch;


# direct methods
.method private constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;

    .line 137
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 138
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_voice_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;->tv_voice_name:Landroid/widget/TextView;

    .line 140
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_voice_pay_open:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;->tv_voice_pay_open:Landroid/widget/Switch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;Landroid/view/View;Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$1;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;Landroid/view/View;)V

    return-void
.end method
