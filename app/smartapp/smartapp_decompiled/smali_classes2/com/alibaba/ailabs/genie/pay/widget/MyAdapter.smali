.class public Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$OnItemClickListener;,
        Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x6


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mDataset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mDataset:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;)Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$OnItemClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public addDataSet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;I)V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mDataset:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeniePay"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    const/4 v3, 0x6

    if-lt v1, v3, :cond_0

    .line 73
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->content:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/pay/R$dimen;->genie_pay_price_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->content:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/pay/R$dimen;->genie_pay_text_size_54:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    :goto_0
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->getItemCount()I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alibaba/ailabs/genie/pay/R$dimen;->genie_pay_itemWidth_one:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$dimen;->genie_pay_itemWidth_two:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$dimen;->genie_pay_itemWidth_three:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    if-lt v0, v3, :cond_3

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$dimen;->genie_pay_itemWidth_four:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 91
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 92
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/pay/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$1;-><init>(Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mCurrentPosition:I

    if-ne v0, p2, :cond_4

    .line 109
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$drawable;->genie_pay_sku_gradient_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$color;->genie_pay_color_623A0C:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$color;->genie_pay_color_623A0C:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->yuan:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/pay/R$color;->genie_pay_color_623A0C:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 114
    :cond_4
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$drawable;->genie_pay_sku_gradient_unselected_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$color;->genie_pay_color_ffffff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$color;->genie_pay_color_ffffff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->yuan:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/pay/R$color;->genie_pay_color_ffffff:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;
    .locals 2

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setDataset(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mDataset:Ljava/util/List;

    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$OnItemClickListener;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$OnItemClickListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->mCurrentPosition:I

    return-void
.end method
