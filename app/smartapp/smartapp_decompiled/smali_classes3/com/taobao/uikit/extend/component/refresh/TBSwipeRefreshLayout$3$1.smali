.class Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3$1;
.super Ljava/lang/Object;
.source "TBSwipeRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3$1;->this$1:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3$1;->this$1:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
