.class public Lcom/alibaba/genie/shopping/view/CustomGridView;
.super Landroid/widget/GridView;
.source "CustomGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;
    }
.end annotation


# instance fields
.field private mOnRecycleViewScrollListener:Lcom/alibaba/genie/shopping/view/OnRecycleViewScrollListener;

.field private mOnScrollListenerWrapper:Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;-><init>(Lcom/alibaba/genie/shopping/view/CustomGridView;Lcom/alibaba/genie/shopping/view/CustomGridView$1;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/CustomGridView;->mOnScrollListenerWrapper:Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;

    .line 25
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/CustomGridView;->mOnScrollListenerWrapper:Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;

    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/view/CustomGridView;)Lcom/alibaba/genie/shopping/view/OnRecycleViewScrollListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/CustomGridView;->mOnRecycleViewScrollListener:Lcom/alibaba/genie/shopping/view/OnRecycleViewScrollListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/view/CustomGridView;)I
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/shopping/view/CustomGridView;)I
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/genie/shopping/view/CustomGridView;)I
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method


# virtual methods
.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/CustomGridView;->mOnScrollListenerWrapper:Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;

    return-void
.end method

.method public setScrollViewListener(Lcom/alibaba/genie/shopping/view/OnRecycleViewScrollListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/CustomGridView;->mOnRecycleViewScrollListener:Lcom/alibaba/genie/shopping/view/OnRecycleViewScrollListener;

    return-void
.end method
