.class Lcom/taobao/uikit/feature/view/TRecyclerView$InnerRecyclerListener;
.super Ljava/lang/Object;
.source "TRecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/view/TRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerRecyclerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/view/TRecyclerView;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$InnerRecyclerListener;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$InnerRecyclerListener;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-static {v0}, Lcom/taobao/uikit/feature/view/TRecyclerView;->access$100(Lcom/taobao/uikit/feature/view/TRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 487
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$InnerRecyclerListener;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-static {v1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->access$100(Lcom/taobao/uikit/feature/view/TRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    if-eqz v1, :cond_0

    .line 490
    invoke-interface {v1, p1}, Landroid/support/v7/widget/RecyclerView$RecyclerListener;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
