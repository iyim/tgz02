.class public abstract Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CellAnimatorAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field private static final SAVEDINSTANCESTATE_VIEWANIMATOR:Ljava/lang/String; = "savedinstancestate_viewanimator"


# instance fields
.field private mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;

.field private mDelegateAdapter:Landroid/widget/BaseAdapter;

.field private mIsRootAdapter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mIsRootAdapter:Z

    .line 51
    instance-of v0, p1, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;

    if-eqz v0, :cond_0

    .line 52
    nop

    nop

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mIsRootAdapter:Z

    :cond_0
    return-void
.end method

.method private animateViewIfNecessary(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;

    if-eqz v1, :cond_0

    .line 179
    nop

    nop

    invoke-virtual {v0, p3, p2}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object p3

    if-nez p3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x2

    .line 185
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p2, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 186
    invoke-static {v0, p3, v1}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->concatAnimators([Landroid/animation/Animator;[Landroid/animation/Animator;Landroid/animation/Animator;)[Landroid/animation/Animator;

    move-result-object p3

    .line 187
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->animateViewIfNecessary(ILandroid/view/View;[Landroid/animation/Animator;)V

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

    .line 196
    :cond_0
    array-length v1, p0

    :goto_0
    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 197
    :cond_1
    array-length v2, p1

    :goto_1
    add-int v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    .line 198
    new-array v3, v3, [Landroid/animation/Animator;

    if-eqz p0, :cond_2

    if-lez v1, :cond_2

    .line 201
    invoke-static {p0, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-eqz p1, :cond_3

    if-lez v2, :cond_3

    .line 205
    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :cond_3
    array-length p0, v3

    add-int/lit8 p0, p0, -0x1

    aput-object p2, v3, p0

    return-object v3
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public abstract getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Landroid/animation/Animator;
.end method

.method public getCellAnimatorController()Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 112
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mIsRootAdapter:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->animateViewIfNecessary(ILandroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 241
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 242
    nop

    nop

    .line 243
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;

    if-eqz v0, :cond_0

    const-string v1, "savedinstancestate_viewanimator"

    .line 244
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "savedinstancestate_viewanimator"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-object v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->reset()V

    .line 145
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;

    if-eqz v1, :cond_0

    .line 146
    nop

    nop

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->reset()V

    :cond_0
    return-void
.end method

.method public setAnimatorEnable(Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->setAnimatorEnable(Z)V

    :cond_0
    return-void
.end method

.method public setCellAnimatorController(Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mCellAnimatorController:Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;->mDelegateAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
