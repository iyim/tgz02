.class public Lcom/alibaba/ailabs/genie/density/adapter/view/GenieRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "GenieRecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/density/adapter/view/GenieRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/density/adapter/view/GenieRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/density/adapter/view/GenieRecyclerView;->updateMargin()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private updateGutter(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private updateMargin()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/adapter/view/RecyclerViewRules;->getMargin()I

    move-result v0

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/alibaba/ailabs/genie/density/adapter/view/GenieRecyclerView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/density/adapter/view/GenieRecyclerView;->updateGutter(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
