.class public Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShoppingAddressRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$OnItemClickListener;,
        Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$OnItemClickListener;

.field private mRv:Landroid/support/v7/widget/RecyclerView;

.field private mSelectedPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mSelectedPos:I

    .line 30
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mData:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mRv:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mSelectedPos:I

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mSelectedPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mRv:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;)Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$OnItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mOnItemClickListener:Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$OnItemClickListener;

    return-object p0
.end method

.method private changPricesize(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .line 136
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "."

    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
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
.method public getItemCount()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->onBindViewHolder(Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;I)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    if-eqz v0, :cond_0

    .line 59
    iget-boolean v1, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->isSelected:Z

    if-eqz v1, :cond_0

    .line 60
    iput p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mSelectedPos:I

    .line 64
    :cond_0
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;->ivSelect:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-boolean v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->isSelected:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 65
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;->ivSelect:Landroid/widget/ImageView;

    new-instance v2, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;ILcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_4

    .line 90
    iget-object v1, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->userName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;->tv_receive_person:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_1
    iget-object v1, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->tel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;->tv_receive_tel:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->tel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_2
    iget-object v1, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 99
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;->tv_receive_address:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6536\u8d27\u5730\u5740: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_3
    iget-object v1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$2;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$2;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;ILcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;
    .locals 2

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 51
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$layout;->recyclerview_address_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$MyViewHolder;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;Landroid/view/View;Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$1;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$OnItemClickListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;->mOnItemClickListener:Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter$OnItemClickListener;

    return-void
.end method
