.class public abstract Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;
.super Ljava/lang/Object;
.source "AbsViewHolder.java"


# instance fields
.field protected mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field protected mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

.field protected mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;->onBindData(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    return-void
.end method

.method public final createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;->mRootView:Landroid/view/View;

    .line 28
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public final getRootView()Landroid/view/View;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract onBindData(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .param p1    # Lcom/taobao/android/ultron/common/model/IDMComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
