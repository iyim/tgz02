.class public abstract Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerCellAnimatorAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field private static final SAVEDINSTANCESTATE_VIEWANIMATOR:Ljava/lang/String; = "savedinstancestate_viewanimator"


# instance fields
.field private mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

.field private mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mIsRootAdapter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mIsRootAdapter:Z

    .line 51
    instance-of v0, p1, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p1

    nop

    nop

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mIsRootAdapter:Z

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private animateViewIfNecessary(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v1, v0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;

    if-eqz v1, :cond_0

    .line 167
    nop

    nop

    invoke-virtual {v0, p3, p2}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object p3

    if-nez p3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x2

    .line 176
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p2, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 177
    invoke-static {v0, p3, v1}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->concatAnimators([Landroid/animation/Animator;[Landroid/animation/Animator;Landroid/animation/Animator;)[Landroid/animation/Animator;

    move-result-object p3

    .line 178
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->animateViewIfNecessary(ILandroid/view/View;[Landroid/animation/Animator;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static concatAnimators([Landroid/animation/Animator;[Landroid/animation/Animator;Landroid/animation/Animator;)[Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 188
    :cond_0
    array-length v1, p0

    :goto_0
    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 189
    :cond_1
    array-length v2, p1

    :goto_1
    add-int v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    .line 190
    new-array v3, v3, [Landroid/animation/Animator;

    if-eqz p0, :cond_2

    if-lez v1, :cond_2

    .line 194
    invoke-static {p0, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-eqz p1, :cond_3

    if-lez v2, :cond_3

    .line 199
    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    :cond_3
    array-length p0, v3

    add-int/lit8 p0, p0, -0x1

    aput-object p2, v3, p0

    return-object v3
.end method


# virtual methods
.method public abstract getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Landroid/animation/Animator;
.end method

.method public getItemCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getRecyclerCellAnimatorController()Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 66
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mIsRootAdapter:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->animateViewIfNecessary(ILandroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 238
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 240
    nop

    nop

    .line 241
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

    if-eqz v0, :cond_0

    const-string v1, "savedinstancestate_viewanimator"

    .line 243
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "savedinstancestate_viewanimator"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->reset()V

    .line 125
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v1, v0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;

    if-eqz v1, :cond_0

    .line 127
    nop

    nop

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->reset()V

    :cond_0
    return-void
.end method

.method public setAnimatorEnable(Z)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->setAnimatorEnable(Z)V

    :cond_0
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method public setRecyclerCellAnimatorController(Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
