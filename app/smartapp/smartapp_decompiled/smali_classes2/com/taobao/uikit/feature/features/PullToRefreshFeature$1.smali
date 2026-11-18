.class Lcom/taobao/uikit/feature/features/PullToRefreshFeature$1;
.super Ljava/lang/Object;
.source "PullToRefreshFeature.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->addScrollListener(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/PullToRefreshFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/PullToRefreshFeature;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PullToRefreshFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 298
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PullToRefreshFeature;

    invoke-static {p1}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->access$000(Lcom/taobao/uikit/feature/features/PullToRefreshFeature;)Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->isScrollStop()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PullToRefreshFeature;

    .line 299
    invoke-static {p1}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->access$000(Lcom/taobao/uikit/feature/features/PullToRefreshFeature;)Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getState()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PullToRefreshFeature;

    .line 300
    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->hasArrivedBottomEdge()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PullToRefreshFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PullToRefreshFeature;

    invoke-static {p1}, Lcom/taobao/uikit/feature/features/PullToRefreshFeature;->access$000(Lcom/taobao/uikit/feature/features/PullToRefreshFeature;)Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->autoLoadingData()V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
