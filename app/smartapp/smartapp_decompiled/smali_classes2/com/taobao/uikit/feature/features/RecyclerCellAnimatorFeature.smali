.class public Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "RecyclerCellAnimatorFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/RecyclerAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;,
        Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$CustomAnimatorFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/support/v7/widget/RecyclerView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/RecyclerAdapterCallback;"
    }
.end annotation


# instance fields
.field private mAnimatorAdapter:Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;

.field private mAnimatorDelayMillis:I

.field private mAnimatorDurationMillis:I

.field private mCustomAnimatorFactory:Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$CustomAnimatorFactory;

.field private mInitialDelayMillis:I

.field private mIsAnimatorEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/16 v0, 0x64

    .line 28
    iput v0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mInitialDelayMillis:I

    .line 33
    iput v0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDelayMillis:I

    const/16 v0, 0x190

    .line 38
    iput v0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDurationMillis:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mIsAnimatorEnable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;)Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$CustomAnimatorFactory;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mCustomAnimatorFactory:Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$CustomAnimatorFactory;

    return-object p0
.end method


# virtual methods
.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 57
    sget-object v0, Lcom/taobao/uikit/R$styleable;->CellAnimatorFeature:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    sget p2, Lcom/taobao/uikit/R$styleable;->CellAnimatorFeature_uik_initialDelay:I

    iget p3, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mInitialDelayMillis:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mInitialDelayMillis:I

    .line 61
    sget p2, Lcom/taobao/uikit/R$styleable;->CellAnimatorFeature_uik_animatorDelay:I

    iget p3, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDelayMillis:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDelayMillis:I

    .line 62
    sget p2, Lcom/taobao/uikit/R$styleable;->CellAnimatorFeature_uik_animatorDuration:I

    iget p3, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDurationMillis:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDurationMillis:I

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public getAnimatorDelayMillis()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDelayMillis:I

    return v0
.end method

.method public getAnimatorDurationMillis()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDurationMillis:I

    return v0
.end method

.method public getInitialDelayMillis()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mInitialDelayMillis:I

    return v0
.end method

.method public isAnimatorEnable()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mIsAnimatorEnable:Z

    return v0
.end method

.method public resetAnimators()V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->getHost()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;->reset()V

    :cond_0
    return-void
.end method

.method public setAnimatorDelayMillis(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDelayMillis:I

    return-void
.end method

.method public setAnimatorDurationMillis(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDurationMillis:I

    return-void
.end method

.method public setAnimatorEnable(Z)V
    .locals 1

    .line 99
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mIsAnimatorEnable:Z

    .line 100
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->getHost()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;->setAnimatorEnable(Z)V

    :cond_0
    return-void
.end method

.method public setCustomAnimatorFactory(Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$CustomAnimatorFactory;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mCustomAnimatorFactory:Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$CustomAnimatorFactory;

    return-void
.end method

.method public setInitialDelayMillis(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mInitialDelayMillis:I

    return-void
.end method

.method public wrapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    if-eqz p1, :cond_0

    .line 70
    instance-of v0, p1, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->getHost()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v1}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 73
    iget v1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mInitialDelayMillis:I

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->setInitialDelayMillis(I)V

    .line 74
    iget v1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDelayMillis:I

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->setAnimationDelayMillis(I)V

    .line 75
    iget v1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorDurationMillis:I

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;->setAnimationDurationMillis(I)V

    .line 77
    new-instance v1, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;

    invoke-direct {v1, p0, p1}, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;-><init>(Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;

    .line 78
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;->setRecyclerCellAnimatorController(Lcom/taobao/uikit/feature/features/cellanimator/RecyclerCellAnimatorController;)V

    .line 79
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mIsAnimatorEnable:Z

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;->setAnimatorEnable(Z)V

    .line 80
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/RecyclerCellAnimatorFeature$AnimatorAdapter;

    :cond_0
    return-object p1
.end method
