.class public Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "VoicePrintListRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$OnItemClickListener;,
        Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;)Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$OnItemClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->mOnItemClickListener:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$OnItemClickListener;

    return-object p0
.end method

.method private changPricesize(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .line 118
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "."

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->onBindViewHolder(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;I)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;->tv_voice_name:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;->tv_voice_name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;->tv_voice_name:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :goto_0
    iget-object v0, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;->tv_voice_pay_open:Landroid/widget/Switch;

    invoke-virtual {p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->isEnablePay()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 91
    iget-object v0, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;->tv_voice_pay_open:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object p1, p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;->tv_voice_pay_open:Landroid/widget/Switch;

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$1;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;
    .locals 2

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 67
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$layout;->recyclerview_voiceprint_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$MyViewHolder;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;Landroid/view/View;Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$1;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeData(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 58
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->notifyItemRemoved(I)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$OnItemClickListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter;->mOnItemClickListener:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListRecyclerViewAdapter$OnItemClickListener;

    return-void
.end method
