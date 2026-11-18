.class public Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;
.super Ljava/lang/Object;
.source "ContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$LeftItemDecoration;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private contentView:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

.field private context:Landroid/content/Context;

.field private diffScroll:I

.field private hasAddFooter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MyRecyclerView"

    .line 21
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->hasAddFooter:Z

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->context:Landroid/content/Context;

    const/high16 v0, 0x42200000    # 40.0f

    .line 29
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->diffScroll:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->hasAddFooter:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->hasAddFooter:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->diffScroll:I

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->contentView:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    return-object p0
.end method


# virtual methods
.method public getContentView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->contentView:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    return-object v0
.end method

.method public setDataList(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->contentView:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    .line 34
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->context:Landroid/content/Context;

    const/high16 v2, 0x42c60000    # 99.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 36
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->contentView:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->context:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->contentView:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 39
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->contentView:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$LeftItemDecoration;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->context:Landroid/content/Context;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$LeftItemDecoration;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;I)V

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 40
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->contentView:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 41
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->contentView:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;Ljava/util/List;Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;)V

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 68
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->contentView:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    new-instance p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$2;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$2;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->setOnExposedListener(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$OnExposedListener;)V

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->contentView:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->refreshExposed()V

    return-void
.end method
