.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExtendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderOther"
.end annotation


# instance fields
.field adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;)V
    .locals 9

    .line 345
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    .line 346
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 347
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/GridSpaceItemDecoration;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->itemView:Landroid/view/View;

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->itemView:Landroid/view/View;

    .line 349
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {p2, v2, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/GridSpaceItemDecoration;-><init>(III)V

    .line 350
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->itemView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->gridRyId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 351
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 352
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$1;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, p0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;Landroid/content/Context;ILcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)V

    .line 358
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 359
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 360
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->extend_other_list:I

    move-object v3, p2

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;Landroid/content/Context;ILjava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    .line 402
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public refreshData(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;)V
    .locals 1

    .line 406
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 407
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
