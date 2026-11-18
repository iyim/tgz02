.class public Lcom/taobao/uikit/feature/features/CellAnimatorFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "CellAnimatorFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/AdapterCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;,
        Lcom/taobao/uikit/feature/features/CellAnimatorFeature$CustomAnimatorFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/ListView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/AdapterCallback;"
    }
.end annotation


# instance fields
.field private mAnimatorAdapter:Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;

.field private mAnimatorDelayMillis:I

.field private mAnimatorDurationMillis:I

.field private mCustomAnimatorFactory:Lcom/taobao/uikit/feature/features/CellAnimatorFeature$CustomAnimatorFactory;

.field private mInitialDelayMillis:I

.field private mIsAnimatorEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/16 v0, 0x64

    .line 29
    iput v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mInitialDelayMillis:I

    const/16 v0, 0x1e

    .line 34
    iput v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDelayMillis:I

    const/16 v0, 0x190

    .line 39
    iput v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDurationMillis:I

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mIsAnimatorEnable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/feature/features/CellAnimatorFeature;)Lcom/taobao/uikit/feature/features/CellAnimatorFeature$CustomAnimatorFactory;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mCustomAnimatorFactory:Lcom/taobao/uikit/feature/features/CellAnimatorFeature$CustomAnimatorFactory;

    return-object p0
.end method


# virtual methods
.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 58
    sget-object v0, Lcom/taobao/uikit/R$styleable;->CellAnimatorFeature:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    sget p2, Lcom/taobao/uikit/R$styleable;->CellAnimatorFeature_uik_initialDelay:I

    iget p3, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mInitialDelayMillis:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mInitialDelayMillis:I

    .line 62
    sget p2, Lcom/taobao/uikit/R$styleable;->CellAnimatorFeature_uik_animatorDelay:I

    iget p3, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDelayMillis:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDelayMillis:I

    .line 63
    sget p2, Lcom/taobao/uikit/R$styleable;->CellAnimatorFeature_uik_animatorDuration:I

    iget p3, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDurationMillis:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDurationMillis:I

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public getAnimatorDelayMillis()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDelayMillis:I

    return v0
.end method

.method public getAnimatorDurationMillis()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDurationMillis:I

    return v0
.end method

.method public getInitialDelayMillis()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mInitialDelayMillis:I

    return v0
.end method

.method public isAnimatorEnable()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mIsAnimatorEnable:Z

    return v0
.end method

.method public resetAnimators()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->getHost()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;->reset()V

    :cond_0
    return-void
.end method

.method public setAnimatorDelayMillis(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDelayMillis:I

    return-void
.end method

.method public setAnimatorDurationMillis(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDurationMillis:I

    return-void
.end method

.method public setAnimatorEnable(Z)V
    .locals 1

    .line 103
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mIsAnimatorEnable:Z

    .line 104
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->getHost()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;->setAnimatorEnable(Z)V

    :cond_0
    return-void
.end method

.method public setCustomAnimatorFactory(Lcom/taobao/uikit/feature/features/CellAnimatorFeature$CustomAnimatorFactory;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mCustomAnimatorFactory:Lcom/taobao/uikit/feature/features/CellAnimatorFeature$CustomAnimatorFactory;

    return-void
.end method

.method public setInitialDelayMillis(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mInitialDelayMillis:I

    return-void
.end method

.method public wrapAdapter(Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 2

    if-eqz p1, :cond_0

    .line 71
    instance-of v0, p1, Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;

    if-nez v0, :cond_0

    .line 73
    instance-of v0, p1, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->getHost()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {v0, v1}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;-><init>(Landroid/widget/ListView;)V

    .line 76
    iget v1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mInitialDelayMillis:I

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->setInitialDelayMillis(I)V

    .line 77
    iget v1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDelayMillis:I

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->setAnimationDelayMillis(I)V

    .line 78
    iget v1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorDurationMillis:I

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;->setAnimationDurationMillis(I)V

    .line 80
    new-instance v1, Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;

    nop

    nop

    invoke-direct {v1, p0, p1}, Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;-><init>(Lcom/taobao/uikit/feature/features/CellAnimatorFeature;Landroid/widget/BaseAdapter;)V

    iput-object v1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;

    .line 81
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;->setCellAnimatorController(Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorController;)V

    .line 82
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mIsAnimatorEnable:Z

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;->setAnimatorEnable(Z)V

    .line 83
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->mAnimatorAdapter:Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;

    :cond_0
    return-object p1
.end method
