.class public Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecommendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$ItemClickListener;,
        Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final IS_SHOW_CHARGE:Ljava/lang/String; = "1"


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;",
            ">;"
        }
    .end annotation
.end field

.field private floatImgOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private itemClickListener:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$ItemClickListener;

.field private final mContext:Landroid/content/Context;

.field private options:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->data:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->mContext:Landroid/content/Context;

    .line 44
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {p1}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    const/16 p2, 0x85

    const/16 v0, 0xc6

    .line 45
    invoke-virtual {p1, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 46
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/task/R$drawable;->default_genie_loading:I

    .line 47
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/task/video/utils/GlideRoundTransform;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/task/R$dimen;->item_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/GlideRoundTransform;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 50
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->floatImgOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;)Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$ItemClickListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->itemClickListener:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$ItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RecyclerView"
        }
    .end annotation

    .line 30
    check-cast p1, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;I)V
    .locals 4
    .param p1    # Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RecyclerView"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;

    if-eqz v0, :cond_4

    .line 66
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getRating()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;->mRating:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getRating()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getCoverVertical()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getCoverVertical()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 79
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getFloatImg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getFloatImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getFloatImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->floatImgOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;->mCharge:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 82
    :cond_3
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;->mCharge:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    :goto_0
    iput p2, p1, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;->mPosition:I

    .line 87
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$1;-><init>(Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBindViewHolder: RecommendBean="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getCoverVertical()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecommendListAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/task/R$layout;->video_task_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$RecommendListViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnclickListener(Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$ItemClickListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->itemClickListener:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$ItemClickListener;

    return-void
.end method
