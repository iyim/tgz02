.class public Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;
.super Ljava/lang/Object;
.source "ThemeSingleton.java"


# static fields
.field private static singleton:Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;


# instance fields
.field public backgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public btnSelectorNegative:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnSelectorNeutral:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnSelectorPositive:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnSelectorStacked:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field public buttonsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field public contentColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public contentGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field public darkTheme:Z

.field public dividerColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public icon:Landroid/graphics/drawable/Drawable;

.field public itemColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public itemsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field public linkColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public listSelector:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public negativeColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public neutralColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public positiveColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public titleColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public titleGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field public widgetColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->darkTheme:Z

    .line 25
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->titleColor:I

    .line 27
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->contentColor:I

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->positiveColor:Landroid/content/res/ColorStateList;

    .line 31
    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->neutralColor:Landroid/content/res/ColorStateList;

    .line 33
    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->negativeColor:Landroid/content/res/ColorStateList;

    .line 35
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->widgetColor:I

    .line 37
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->itemColor:I

    .line 39
    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->icon:Landroid/graphics/drawable/Drawable;

    .line 40
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->backgroundColor:I

    .line 42
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->dividerColor:I

    .line 44
    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->linkColor:Landroid/content/res/ColorStateList;

    .line 47
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->listSelector:I

    .line 49
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorStacked:I

    .line 51
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorPositive:I

    .line 53
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorNeutral:I

    .line 55
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorNegative:I

    .line 58
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->titleGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 59
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->contentGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 60
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->END:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 61
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->itemsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 62
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->buttonsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    return-void
.end method

.method public static get()Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->get(Z)Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;

    move-result-object v0

    return-object v0
.end method

.method public static get(Z)Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;
    .locals 1

    .line 15
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->singleton:Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 16
    new-instance p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;

    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;-><init>()V

    sput-object p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->singleton:Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;

    .line 17
    :cond_0
    sget-object p0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->singleton:Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;

    return-object p0
.end method
