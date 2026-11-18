.class public abstract Lcom/alibaba/ailabs/genie/custom/contacts/common/view/PaginationScrollListener;
.super Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment$MyOnScrollListener;
.source "PaginationScrollListener.java"


# instance fields
.field private mLastVisibleItemPosition:I


# direct methods
.method protected constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment$MyOnScrollListener;-><init>(Ljava/lang/ref/WeakReference;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected abstract loadMoreItems()V
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 23
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment$MyOnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 24
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 25
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 26
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/PaginationScrollListener;->mLastVisibleItemPosition:I

    :cond_0
    if-nez p2, :cond_1

    .line 29
    iget p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/PaginationScrollListener;->mLastVisibleItemPosition:I

    add-int/lit8 p2, p2, 0x1

    .line 30
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/PaginationScrollListener;->loadMoreItems()V

    :cond_1
    return-void
.end method
