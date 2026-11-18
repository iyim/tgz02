.class public Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExtendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$FooterViewHolder;,
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$HeaderViewHolder;,
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;,
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;,
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderMore;,
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilarRadio;,
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilar;,
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTEND_TYPE_ALBUM:I = 0x3

.field public static final EXTEND_TYPE_FOOTER:I = 0x5

.field public static final EXTEND_TYPE_HEADER:I = 0x0

.field public static final EXTEND_TYPE_MORE:I = 0x2

.field public static final EXTEND_TYPE_OTHER:I = 0x4

.field public static final EXTEND_TYPE_SIMILAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExtendAdapter"

.field private static mItemType:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtendAlbumBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;

.field private mExtendMoreBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

.field private mExtendOtherBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;

.field private mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

.field private mExtendSimilarRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;

.field private mOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private mViewHolderAlbum:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

.field private mViewHolderMore:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderMore;

.field private mViewHolderOther:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

.field private mViewHolderSimilar:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilar;

.field private mViewHolderSimilarRadio:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilarRadio;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mList:Ljava/util/List;

    .line 109
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mContext:Landroid/content/Context;

    .line 110
    sput-object p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 112
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 113
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mList:Ljava/util/List;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    const-string v1, "header"

    invoke-direct {v0, v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x3

    if-lt p1, p3, :cond_0

    .line 116
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    const-string p3, "radio"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mList:Ljava/util/List;

    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    const/4 v0, 0x5

    const-string v1, "foot"

    invoke-direct {p3, v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isChildResource(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mContext:Landroid/content/Context;

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {p1, p3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mContext:Landroid/content/Context;

    const/high16 p3, 0x41000000    # 8.0f

    invoke-static {p1, p3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 127
    :goto_0
    new-instance p3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->defalut_white_logo:I

    .line 128
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->defalut_white_logo:I

    .line 129
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideRoundTransformNew;

    int-to-float p1, p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideRoundTransformNew;-><init>(FI)V

    .line 130
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 131
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method private refreshGridView(Landroid/view/View;ILcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;II)V
    .locals 9

    .line 432
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    .line 433
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getDataType()I

    move-result v8

    .line 434
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/GridSpaceItemDecoration;

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p4, p4

    invoke-static {v0, p4}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p4

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p5, p5

    invoke-static {v0, p5}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p5

    const/4 v0, 0x3

    invoke-direct {p3, v0, p4, p5}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/GridSpaceItemDecoration;-><init>(III)V

    .line 438
    sget p4, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->gridRyId:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/support/v7/widget/RecyclerView;

    .line 439
    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 440
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p3, p0, p5, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Landroid/content/Context;I)V

    .line 446
    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 447
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, p3

    move-object v2, p0

    move v4, p2

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Landroid/content/Context;ILjava/util/List;Landroid/view/View;Ljava/util/List;I)V

    .line 496
    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getDataType()I

    move-result p1

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$61$ExtendAdapter(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;Landroid/view/View;)V
    .locals 0

    .line 215
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;->onPlayAllClick(I)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$62$ExtendAdapter(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;Landroid/view/View;)V
    .locals 0

    .line 226
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;->onPlayAllClick(I)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 207
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    .line 208
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getDataType()I

    move-result p2

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 210
    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    const-string v0, "radio"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 211
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->sampleradio_item:I

    const/16 v4, 0x1f

    const/16 v5, 0x4a

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->refreshGridView(Landroid/view/View;ILcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;II)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->similar_gridview_item:I

    const/16 v4, 0x15

    const/16 v5, 0x18

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->refreshGridView(Landroid/view/View;ILcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;II)V

    .line 214
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;->bgPlayAll:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$JHPVSU0t2DF2MJWZwbBLGsxMNrw;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$JHPVSU0t2DF2MJWZwbBLGsxMNrw;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p2, :cond_2

    .line 223
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendMoreBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->similar_gridview_item:I

    const/16 v4, 0x15

    const/16 v5, 0x18

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->refreshGridView(Landroid/view/View;ILcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;II)V

    .line 225
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendMoreBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;->bgPlayAll:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$EhWdNqHuCY6UjHd3jtE_R_GGI6g;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$EhWdNqHuCY6UjHd3jtE_R_GGI6g;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v0, p2, :cond_3

    .line 233
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderAlbum:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->refreshData(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne v0, p2, :cond_4

    .line 235
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderOther:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->refreshData(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->music_header:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 148
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$HeaderViewHolder;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    const-string v2, "story"

    const/16 v3, 0x8

    const-string v4, "program"

    if-ne p2, v1, :cond_5

    .line 150
    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    const-string v1, "radio"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->radiostation_recyclerview:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;

    .line 152
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilarRadio;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilarRadio;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderSimilarRadio:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilarRadio;

    .line 153
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderSimilarRadio:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilarRadio;

    return-object p1

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->extend_similar:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    .line 156
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilar;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilar;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderSimilar:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilar;

    .line 157
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;->titleTvId:Landroid/widget/TextView;

    const-string p2, "\u76f8\u4f3c\u63a8\u8350"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_3
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isChildResource(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;->similarBg:Landroid/support/constraint/ConstraintLayout;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_similar_child:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;->similarIconId:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;->similarIconId:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;->similarBg:Landroid/support/constraint/ConstraintLayout;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_similar:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderSimilar:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilar;

    return-object p1

    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    .line 170
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->extend_more:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendMoreBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    .line 171
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderMore;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendMoreBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderMore;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderMore:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderMore;

    .line 172
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isChildResource(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 173
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendMoreBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;->moreBg:Landroid/support/constraint/ConstraintLayout;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_more_version_child:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendMoreBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;->moreIconId:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 176
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendMoreBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;->moreBg:Landroid/support/constraint/ConstraintLayout;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_more_version:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendMoreBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;->moreIconId:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderMore:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderMore;

    return-object p1

    :cond_7
    const/4 v1, 0x3

    if-ne p2, v1, :cond_9

    .line 181
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->extend_album:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendAlbumBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;

    .line 182
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendAlbumBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderAlbum:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    .line 183
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isChildResource(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 184
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendAlbumBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;->albumOtherBg:Landroid/support/constraint/ConstraintLayout;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_album_other_child:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 186
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendAlbumBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;->albumOtherBg:Landroid/support/constraint/ConstraintLayout;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_album_other:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :goto_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderAlbum:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    return-object p1

    :cond_9
    const/4 v1, 0x4

    if-ne p2, v1, :cond_c

    .line 190
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->extend_other:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendOtherBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;

    .line 191
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendOtherBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderOther:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    .line 192
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 193
    :cond_a
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendOtherBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;->titleTvId:Landroid/widget/TextView;

    const-string p2, "\u5176\u4ed6"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_b
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderOther:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    return-object p1

    :cond_c
    const/4 v1, 0x5

    if-ne p2, v1, :cond_d

    .line 197
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->music_footer:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 198
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$FooterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$FooterViewHolder;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Landroid/view/View;)V

    return-object p2

    :cond_d
    const-string p1, "ExtendAdapter"

    const-string p2, "viewType is error"

    .line 200
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 501
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 502
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 503
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;->unbind()V

    .line 504
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    .line 507
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;

    if-eqz p1, :cond_1

    .line 508
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;->unbind()V

    .line 509
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendSimilarRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;

    .line 512
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendMoreBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    if-eqz p1, :cond_2

    .line 513
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;->unbind()V

    .line 514
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendMoreBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    .line 517
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendAlbumBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;

    if-eqz p1, :cond_3

    .line 518
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;->unbind()V

    .line 519
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendAlbumBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;

    .line 522
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendOtherBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;

    if-eqz p1, :cond_4

    .line 523
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;->unbind()V

    .line 524
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mExtendOtherBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;

    .line 527
    :cond_4
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderSimilar:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilar;

    .line 528
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderSimilarRadio:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilarRadio;

    .line 529
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderMore:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderMore;

    .line 530
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderAlbum:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    .line 531
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mViewHolderOther:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    .line 532
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mContext:Landroid/content/Context;

    .line 533
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mList:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 534
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 535
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mList:Ljava/util/List;

    .line 537
    :cond_5
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 542
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0

    .line 101
    sput-object p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mItemType:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;

    return-void
.end method
