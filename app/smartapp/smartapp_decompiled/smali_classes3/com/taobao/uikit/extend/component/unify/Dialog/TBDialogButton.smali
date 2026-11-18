.class public Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;
.super Landroid/widget/TextView;
.source "TBDialogButton.java"


# instance fields
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mStacked:Z

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedEndPadding:I

.field private mStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStacked:Z

    .line 31
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStacked:Z

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStacked:Z

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_mdDialogFrameMargin:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStackedEndPadding:I

    .line 47
    sget-object p1, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->END:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    return-void
.end method


# virtual methods
.method public setAllCapsCompat(Z)V
    .locals 2

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method public setDefaultSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStacked:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setStacked(ZZ)V

    :cond_0
    return-void
.end method

.method setStacked(ZZ)V
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStacked:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_6

    :cond_0
    const/16 p2, 0x11

    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->getGravityInt()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    :goto_0
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setGravity(I)V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p2, :cond_3

    if-eqz p1, :cond_2

    .line 62
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->getTextAlignment()I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x4

    :goto_1
    invoke-virtual {p0, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setTextAlignment(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 65
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-static {p0, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_5

    .line 67
    iget p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStackedEndPadding:I

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStackedEndPadding:I

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setPadding(IIII)V

    .line 70
    :cond_5
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStacked:Z

    :cond_6
    return-void
.end method

.method public setStackedGravity(Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    return-void
.end method

.method public setStackedSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->mStacked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setStacked(ZZ)V

    :cond_0
    return-void
.end method
