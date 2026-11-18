.class Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController$1;
.super Ljava/lang/Object;
.source "RecyclerCellAnimatorController.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;-><init>(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController$1;->this$0:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController$1;->this$0:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->access$000(Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController$1;->this$0:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->access$000(Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
