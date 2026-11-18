.class Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TMEChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderRank"
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x6

.field private static final PAGE_START:I = 0x1


# instance fields
.field adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

.field private currentPage:I

.field private hasNextPage:Z

.field private hasRankData:Z

.field private isLoading:Z

.field private layoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;)V
    .locals 8

    .line 249
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    .line 250
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 241
    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->currentPage:I

    const/4 p2, 0x0

    .line 242
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->hasRankData:Z

    .line 243
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->hasNextPage:Z

    .line 244
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->isLoading:Z

    .line 251
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->itemView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->rankGirdRyId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 252
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 253
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/GridLayoutManager;->setOrientation(I)V

    .line 254
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 255
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 256
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_brand_rank_item:I

    move-object v2, v1

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;Landroid/content/Context;ILjava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    .line 326
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 327
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 329
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->loadFirstBillBoardPage()V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;Ljava/util/List;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->setData(Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->loadNextBillBoardPage()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;Ljava/util/List;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->addData(Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;I)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->needLoadNextBillBoardPage(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)Z
    .locals 0

    .line 237
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->hasRankData:Z

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;Z)Z
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->hasRankData:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)Z
    .locals 0

    .line 237
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->hasNextPage:Z

    return p0
.end method

.method static synthetic access$702(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;Z)Z
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->hasNextPage:Z

    return p1
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)I
    .locals 0

    .line 237
    iget p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->currentPage:I

    return p0
.end method

.method static synthetic access$802(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;I)I
    .locals 0

    .line 237
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->currentPage:I

    return p1
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)Z
    .locals 0

    .line 237
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->isLoading:Z

    return p0
.end method

.method static synthetic access$902(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;Z)Z
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->isLoading:Z

    return p1
.end method

.method private addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;",
            ">;)V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 340
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private loadFirstBillBoardPage()V
    .locals 5

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->hasNextPage:Z

    .line 350
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest;-><init>()V

    .line 351
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->currentPage:I

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)V

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest;->getBillBoardList(Ljava/lang/String;IILcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method private loadNextBillBoardPage()V
    .locals 5

    .line 409
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest;-><init>()V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " loadNextBillBoardPage currentPage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->currentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TME-ChannelAdapter"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 411
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->isLoading:Z

    .line 412
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->currentPage:I

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$3;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)V

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest;->getBillBoardList(Ljava/lang/String;IILcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method private needLoadNextBillBoardPage(I)V
    .locals 3

    .line 388
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->hasRankData:Z

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x4

    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    .line 400
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->isLoading:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->hasNextPage:Z

    if-eqz p1, :cond_1

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " needLoadNextBillBoardPage currentPage"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->hasNextPage:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TME-ChannelAdapter"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->loadNextBillBoardPage()V

    :cond_1
    return-void
.end method

.method private setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;",
            ">;)V"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
