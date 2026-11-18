.class public Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
.super Ljava/lang/Object;
.source "TBMaterialSimpleListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mBackgroundColor:I

.field protected mContent:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mIconPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mContext:Landroid/content/Context;

    const-string p1, "#BCBCBC"

    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mBackgroundColor:I

    return-void
.end method


# virtual methods
.method public backgroundColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 92
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mBackgroundColor:I

    return-object p0
.end method

.method public backgroundColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 101
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->backgroundColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public backgroundColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 97
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->backgroundColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;
    .locals 2

    .line 105
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;-><init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$1;)V

    return-object v0
.end method

.method public content(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 88
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->content(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public content(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public icon(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 64
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public iconPadding(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param

    .line 68
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mIconPadding:I

    return-object p0
.end method

.method public iconPaddingDp(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param

    int-to-float p1, p1

    .line 73
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 73
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mIconPadding:I

    return-object p0
.end method

.method public iconPaddingRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 79
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->iconPadding(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;

    move-result-object p1

    return-object p1
.end method
