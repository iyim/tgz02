.class public Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;
.super Landroid/widget/ScrollView;
.source "ScrollMiniBar.java"


# instance fields
.field TAG:Ljava/lang/String;

.field mScrollListener:Lcom/alibaba/ailabs/childmode/ui/widget/OnRecycleViewScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const-string p1, "ScrollMiniBar"

    .line 9
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "ScrollMiniBar"

    .line 9
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "ScrollMiniBar"

    .line 9
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "ScrollMiniBar"

    .line 9
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPercentVal()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->mScrollListener:Lcom/alibaba/ailabs/childmode/ui/widget/OnRecycleViewScrollListener;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->computeVerticalScrollOffset()I

    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->computeVerticalScrollRange()I

    move-result v1

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->computeVerticalScrollExtent()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->mScrollListener:Lcom/alibaba/ailabs/childmode/ui/widget/OnRecycleViewScrollListener;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/OnRecycleViewScrollListener;->onScrollPercentChanged(F)V

    :cond_1
    return-void
.end method

.method public setOnRecycleViewScrollListener(Lcom/alibaba/ailabs/childmode/ui/widget/OnRecycleViewScrollListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->mScrollListener:Lcom/alibaba/ailabs/childmode/ui/widget/OnRecycleViewScrollListener;

    .line 32
    new-instance p1, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method
