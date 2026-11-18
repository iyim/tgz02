.class public Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment$MyOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BaseLazyLoadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyOnScrollListener"
.end annotation


# instance fields
.field private mLoadFragmentWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment$MyOnScrollListener;->mLoadFragmentWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment$MyOnScrollListener;->mLoadFragmentWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    nop

    :cond_0
    return-void
.end method
