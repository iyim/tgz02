.class Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;
.super Ljava/lang/Object;
.source "CustomGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/view/CustomGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollListenerWrapper"
.end annotation


# instance fields
.field private mAutoScrollPosition:I

.field private mLastAutoScrollPosition:I

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/CustomGridView;


# direct methods
.method private constructor <init>(Lcom/alibaba/genie/shopping/view/CustomGridView;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/shopping/view/CustomGridView;Lcom/alibaba/genie/shopping/view/CustomGridView$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;-><init>(Lcom/alibaba/genie/shopping/view/CustomGridView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->access$100(Lcom/alibaba/genie/shopping/view/CustomGridView;)Lcom/alibaba/genie/shopping/view/OnRecycleViewScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->access$200(Lcom/alibaba/genie/shopping/view/CustomGridView;)I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/view/CustomGridView;->access$300(Lcom/alibaba/genie/shopping/view/CustomGridView;)I

    move-result v1

    .line 60
    iget-object v2, p0, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-static {v2}, Lcom/alibaba/genie/shopping/view/CustomGridView;->access$400(Lcom/alibaba/genie/shopping/view/CustomGridView;)I

    move-result v2

    const/4 v3, 0x0

    add-int v4, v2, v1

    const/high16 v5, 0x3f800000    # 1.0f

    if-lt v4, v0, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    if-eqz v0, :cond_1

    int-to-float v1, v1

    mul-float v1, v1, v5

    int-to-float v0, v0

    div-float v3, v1, v0

    .line 72
    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 73
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/view/CustomGridView;->access$100(Lcom/alibaba/genie/shopping/view/CustomGridView;)Lcom/alibaba/genie/shopping/view/OnRecycleViewScrollListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/genie/shopping/view/OnRecycleViewScrollListener;->onScrollPercentChanged(F)V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    .line 78
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_3
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/CustomGridView$OnScrollListenerWrapper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method
