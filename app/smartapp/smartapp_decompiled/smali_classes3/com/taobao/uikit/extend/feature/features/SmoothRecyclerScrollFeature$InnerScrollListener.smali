.class Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$InnerScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SmoothRecyclerScrollFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerScrollListener"
.end annotation


# instance fields
.field private mLastScrollState:I

.field final synthetic this$0:Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$InnerScrollListener;->this$0:Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$InnerScrollListener;->mLastScrollState:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    const/4 v0, 0x2

    .line 100
    iget v1, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$InnerScrollListener;->mLastScrollState:I

    if-ne v0, v1, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$InnerScrollListener;->this$0:Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;->access$000(Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;Landroid/view/View;)V

    .line 104
    :cond_1
    iput p2, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$InnerScrollListener;->mLastScrollState:I

    return-void
.end method
