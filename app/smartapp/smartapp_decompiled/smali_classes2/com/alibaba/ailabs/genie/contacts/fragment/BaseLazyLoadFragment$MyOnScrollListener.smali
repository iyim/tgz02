.class public Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment$MyOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BaseLazyLoadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;
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
            "Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment$MyOnScrollListener;->mLoadFragmentWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 127
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment$MyOnScrollListener;->mLoadFragmentWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 132
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->pauseRequests()V

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->resumeRequests()V

    :cond_2
    :goto_0
    return-void
.end method
