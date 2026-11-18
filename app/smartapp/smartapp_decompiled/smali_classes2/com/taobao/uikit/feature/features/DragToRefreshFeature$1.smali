.class Lcom/taobao/uikit/feature/features/DragToRefreshFeature$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "DragToRefreshFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->addAutoLoadScrollListener(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/DragToRefreshFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/DragToRefreshFeature;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature$1;->this$0:Lcom/taobao/uikit/feature/features/DragToRefreshFeature;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 92
    :cond_0
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature$1;->this$0:Lcom/taobao/uikit/feature/features/DragToRefreshFeature;

    invoke-static {p2}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->access$000(Lcom/taobao/uikit/feature/features/DragToRefreshFeature;)Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->isScrollStop()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature$1;->this$0:Lcom/taobao/uikit/feature/features/DragToRefreshFeature;

    .line 93
    invoke-static {p2}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->access$000(Lcom/taobao/uikit/feature/features/DragToRefreshFeature;)Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->getState()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature$1;->this$0:Lcom/taobao/uikit/feature/features/DragToRefreshFeature;

    .line 94
    invoke-static {p2, p1}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->access$100(Lcom/taobao/uikit/feature/features/DragToRefreshFeature;Landroid/support/v7/widget/RecyclerView;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->access$200(Lcom/taobao/uikit/feature/features/DragToRefreshFeature;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/DragToRefreshFeature$1;->this$0:Lcom/taobao/uikit/feature/features/DragToRefreshFeature;

    invoke-static {p1}, Lcom/taobao/uikit/feature/features/DragToRefreshFeature;->access$000(Lcom/taobao/uikit/feature/features/DragToRefreshFeature;)Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/RefreshController;->autoLoadingData()V

    :cond_1
    return-void
.end method
