.class public Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
.super Ljava/lang/Object;
.source "TBMaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected adapter:Landroid/widget/ListAdapter;

.field protected alwaysCallMultiChoiceCallback:Z

.field protected alwaysCallSingleChoiceCallback:Z

.field protected autoDismiss:Z

.field protected backgroundColor:I

.field protected btnSelectorNegative:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected btnSelectorNeutral:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected btnSelectorPositive:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected btnSelectorStacked:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected btnStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field protected buttonRippleColor:I

.field protected buttonsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field protected callback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;

.field protected cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field protected cancelable:Z

.field protected cardDialog:Z

.field protected content:Ljava/lang/CharSequence;

.field protected contentColor:I

.field protected contentColorSet:Z

.field protected contentGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field protected contentLineSpacingMultiplier:F

.field protected final context:Landroid/content/Context;

.field protected customView:Landroid/view/View;

.field protected dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected dividerColor:I

.field protected dividerColorSet:Z

.field protected forceStacking:Z

.field protected icon:Landroid/graphics/drawable/Drawable;

.field protected itemColor:I

.field protected itemColorSet:Z

.field protected itemIds:[I

.field protected items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

.field protected itemsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field protected keyListener:Landroid/content/DialogInterface$OnKeyListener;

.field protected limitIconToDefaultSize:Z

.field protected linkColor:Landroid/content/res/ColorStateList;

.field protected listCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;

.field protected listCallbackCustom:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;

.field protected listCallbackMultiChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;

.field protected listCallbackSingleChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;

.field protected listSelector:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected mMaterialDialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

.field protected maxIconSize:I

.field protected negativeColor:Landroid/content/res/ColorStateList;

.field protected negativeColorSet:Z

.field protected negativeText:Ljava/lang/CharSequence;

.field protected neutralColor:Landroid/content/res/ColorStateList;

.field protected neutralColorSet:Z

.field protected neutralText:Ljava/lang/CharSequence;

.field protected onAnyCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

.field protected onNegativeCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

.field protected onNeutralCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

.field protected onPositiveCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

.field protected positiveColor:Landroid/content/res/ColorStateList;

.field protected positiveColorSet:Z

.field protected positiveText:Ljava/lang/CharSequence;

.field protected selectedIndex:I

.field protected selectedIndices:[Ljava/lang/Integer;

.field protected showListener:Landroid/content/DialogInterface$OnShowListener;

.field protected showMinMax:Z

.field protected theme:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

.field protected title:Ljava/lang/CharSequence;

.field protected titleColor:I

.field protected titleColorSet:Z

.field protected titleGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field protected widgetColor:I

.field protected widgetColorSet:Z

.field protected wrapCustomViewInScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->mMaterialDialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    .line 360
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 361
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 362
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->END:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 363
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 364
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    const/4 v1, 0x0

    .line 365
    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonRippleColor:I

    const/4 v2, -0x1

    .line 366
    iput v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleColor:I

    .line 367
    iput v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentColor:I

    .line 389
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->alwaysCallMultiChoiceCallback:Z

    .line 390
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->alwaysCallSingleChoiceCallback:Z

    .line 391
    sget-object v3, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->LIGHT:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    iput-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->theme:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    const/4 v3, 0x1

    .line 392
    iput-boolean v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->cancelable:Z

    const v4, 0x3f99999a    # 1.2f

    .line 393
    iput v4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentLineSpacingMultiplier:F

    .line 394
    iput v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    .line 395
    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    .line 396
    iput-boolean v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->autoDismiss:Z

    .line 399
    iput v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->maxIconSize:I

    .line 413
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleColorSet:Z

    .line 414
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentColorSet:Z

    .line 415
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemColorSet:Z

    .line 416
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColorSet:Z

    .line 417
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColorSet:Z

    .line 418
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColorSet:Z

    .line 419
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColorSet:Z

    .line 420
    iput-boolean v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dividerColorSet:Z

    .line 442
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    .line 443
    sget v0, Lcom/taobao/uikit/extend/R$color;->uik_mdMaterialBlue600:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 446
    sget v2, Lcom/taobao/uikit/extend/R$attr;->colorAccent:I

    invoke-static {p1, v2, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const v0, 0x1010435

    .line 448
    iget v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    invoke-static {p1, v0, v3}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    .line 451
    :cond_0
    iget v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    .line 452
    iget v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    .line 453
    iget v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    .line 454
    sget v0, Lcom/taobao/uikit/extend/R$attr;->uik_mdLinkColor:I

    iget v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    .line 455
    invoke-static {p1, v0, v3}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v0

    .line 454
    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->linkColor:Landroid/content/res/ColorStateList;

    .line 458
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    const v0, 0x101042c

    .line 459
    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    .line 460
    :cond_1
    sget v0, Lcom/taobao/uikit/extend/R$attr;->uik_mdBtnRippleColor:I

    sget v2, Lcom/taobao/uikit/extend/R$attr;->colorControlHighlight:I

    .line 461
    invoke-static {p1, v2, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    .line 460
    invoke-static {p1, v0, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonRippleColor:I

    const v0, 0x1010036

    .line 464
    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    .line 465
    invoke-static {v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->isColorDark(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->LIGHT:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->DARK:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    :goto_0
    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->theme:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    .line 468
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->checkSingleton()V

    .line 471
    sget v0, Lcom/taobao/uikit/extend/R$attr;->uik_mdTitleGravity:I

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-static {p1, v0, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveGravityEnum(Landroid/content/Context;ILcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 472
    sget v0, Lcom/taobao/uikit/extend/R$attr;->uik_mdContentGravity:I

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-static {p1, v0, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveGravityEnum(Landroid/content/Context;ILcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 473
    sget v0, Lcom/taobao/uikit/extend/R$attr;->uik_mdBtnstackedGravity:I

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-static {p1, v0, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveGravityEnum(Landroid/content/Context;ILcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 474
    sget v0, Lcom/taobao/uikit/extend/R$attr;->uik_mdItemsGravity:I

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-static {p1, v0, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveGravityEnum(Landroid/content/Context;ILcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 475
    sget v0, Lcom/taobao/uikit/extend/R$attr;->uik_mdButtonsGravity:I

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-static {p1, v0, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveGravityEnum(Landroid/content/Context;ILcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    return-void
.end method

.method private checkSingleton()V
    .locals 2

    const/4 v0, 0x0

    .line 479
    invoke-static {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->get(Z)Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    invoke-static {}, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->get()Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;

    move-result-object v0

    .line 481
    iget-boolean v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->darkTheme:Z

    if-eqz v1, :cond_1

    .line 482
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->DARK:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->theme:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    .line 483
    :cond_1
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->titleColor:I

    if-eqz v1, :cond_2

    .line 484
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->titleColor:I

    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleColor:I

    .line 485
    :cond_2
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->contentColor:I

    if-eqz v1, :cond_3

    .line 486
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->contentColor:I

    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentColor:I

    .line 487
    :cond_3
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->positiveColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    .line 488
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->positiveColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    .line 489
    :cond_4
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->neutralColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_5

    .line 490
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->neutralColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    .line 491
    :cond_5
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->negativeColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_6

    .line 492
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->negativeColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    .line 493
    :cond_6
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->itemColor:I

    if-eqz v1, :cond_7

    .line 494
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->itemColor:I

    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemColor:I

    .line 495
    :cond_7
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 496
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 497
    :cond_8
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->backgroundColor:I

    if-eqz v1, :cond_9

    .line 498
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->backgroundColor:I

    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->backgroundColor:I

    .line 499
    :cond_9
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->dividerColor:I

    if-eqz v1, :cond_a

    .line 500
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->dividerColor:I

    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dividerColor:I

    .line 501
    :cond_a
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorStacked:I

    if-eqz v1, :cond_b

    .line 502
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorStacked:I

    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorStacked:I

    .line 503
    :cond_b
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->listSelector:I

    if-eqz v1, :cond_c

    .line 504
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->listSelector:I

    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listSelector:I

    .line 505
    :cond_c
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorPositive:I

    if-eqz v1, :cond_d

    .line 506
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorPositive:I

    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorPositive:I

    .line 507
    :cond_d
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorNeutral:I

    if-eqz v1, :cond_e

    .line 508
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorNeutral:I

    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorNeutral:I

    .line 509
    :cond_e
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorNegative:I

    if-eqz v1, :cond_f

    .line 510
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnSelectorNegative:I

    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorNegative:I

    .line 511
    :cond_f
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->widgetColor:I

    if-eqz v1, :cond_10

    .line 512
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->widgetColor:I

    iput v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    .line 513
    :cond_10
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->linkColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_11

    .line 514
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->linkColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->linkColor:Landroid/content/res/ColorStateList;

    .line 515
    :cond_11
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->titleGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 516
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->contentGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 517
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->btnStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 518
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->itemsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    .line 519
    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/ThemeSingleton;->buttonsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    return-void
.end method


# virtual methods
.method public adapter(Landroid/widget/ListAdapter;Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1061
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->customView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1063
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    .line 1064
    iput-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackCustom:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;

    return-object p0

    .line 1062
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot set adapter() when you\'re using a custom view."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public alwaysCallMultiChoiceCallback()Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 756
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->alwaysCallMultiChoiceCallback:Z

    return-object p0
.end method

.method public alwaysCallSingleChoiceCallback()Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 728
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->alwaysCallSingleChoiceCallback:Z

    return-object p0
.end method

.method public autoDismiss(Z)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0

    .line 1049
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->autoDismiss:Z

    return-object p0
.end method

.method public backgroundColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 993
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->backgroundColor:I

    return-object p0
.end method

.method public backgroundColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 1002
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->backgroundColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public backgroundColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 998
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->backgroundColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public btnSelector(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 910
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorPositive:I

    .line 911
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorNeutral:I

    .line 912
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorNegative:I

    return-object p0
.end method

.method public btnSelector(ILcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 917
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$2;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$DialogAction:[I

    invoke-virtual {p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 919
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorPositive:I

    goto :goto_0

    .line 925
    :cond_0
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorNegative:I

    goto :goto_0

    .line 922
    :cond_1
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorNeutral:I

    :goto_0
    return-object p0
.end method

.method public btnSelectorStacked(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 905
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorStacked:I

    return-object p0
.end method

.method public btnStackedGravity(Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 938
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    return-object p0
.end method

.method public build()Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1113
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;-><init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->mMaterialDialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    .line 1114
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->cardDialog:Z

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->mMaterialDialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->mMaterialDialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/taobao/uikit/extend/R$style;->TBMD_CardAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->mMaterialDialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    return-object v0
.end method

.method public buttonRippleColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 538
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonRippleColor:I

    return-object p0
.end method

.method public buttonRippleColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 547
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonRippleColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public buttonRippleColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 543
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonRippleColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public buttonsGravity(Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 700
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    return-object p0
.end method

.method public callback(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1006
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->callback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;

    return-object p0
.end method

.method public cancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1096
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public cancelable(Z)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0

    .line 1036
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->cancelable:Z

    return-object p0
.end method

.method public cardDialog(Z)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0

    .line 960
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->cardDialog:Z

    return-object p0
.end method

.method public content(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 581
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    return-object p0
.end method

.method public varargs content(I[Ljava/lang/Object;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 593
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    return-object p0
.end method

.method public content(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 586
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->customView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 588
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->content:Ljava/lang/CharSequence;

    return-object p0

    .line 587
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot set content() when you\'re using a custom view."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public contentColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 598
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentColor:I

    const/4 p1, 0x1

    .line 599
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentColorSet:Z

    return-object p0
.end method

.method public contentColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 609
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    return-object p0
.end method

.method public contentColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 604
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    return-object p0
.end method

.method public contentGravity(Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 614
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    return-object p0
.end method

.method public contentLineSpacing(F)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0

    .line 619
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentLineSpacingMultiplier:F

    return-object p0
.end method

.method public customView(IZ)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 943
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 944
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public customView(Landroid/view/View;Z)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 948
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->content:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 950
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    if-nez v0, :cond_1

    .line 952
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 954
    :cond_0
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->customView:Landroid/view/View;

    .line 955
    iput-boolean p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->wrapCustomViewInScroll:Z

    return-object p0

    .line 951
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot use customView() when you have items set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 949
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot use customView() when you have content set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1091
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public dividerColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 979
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dividerColor:I

    const/4 p1, 0x1

    .line 980
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dividerColorSet:Z

    return-object p0
.end method

.method public dividerColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 989
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dividerColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public dividerColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 985
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dividerColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public forceStacking(Z)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0

    .line 1106
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->forceStacking:Z

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getItemColor()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemColor:I

    return v0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 566
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public iconAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 576
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public iconRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 571
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public itemColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 658
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public itemColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public itemColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 670
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public items(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .line 624
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 625
    array-length v0, p1

    new-array v0, v0, [Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    const/4 v1, 0x0

    .line 626
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 627
    new-instance v2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    invoke-direct {v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;-><init>()V

    aput-object v2, v0, v1

    .line 628
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->setText(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    :cond_0
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items([Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs items([Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # [Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 634
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->customView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 636
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    return-object p0

    .line 635
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot set items() when you\'re using a custom view."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public itemsCallback(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 641
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;

    const/4 p1, 0x0

    .line 642
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackSingleChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;

    .line 643
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackMultiChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;

    return-object p0
.end method

.method public itemsCallbackMultiChoice([Ljava/lang/Integer;Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # [Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 741
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 742
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;

    .line 743
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackSingleChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;

    .line 744
    iput-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackMultiChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;

    return-object p0
.end method

.method public itemsCallbackSingleChoice(ILcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p2    # Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 713
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    const/4 p1, 0x0

    .line 714
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;

    .line 715
    iput-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackSingleChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;

    .line 716
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackMultiChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;

    return-object p0
.end method

.method public itemsColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 648
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemColor:I

    const/4 p1, 0x1

    .line 649
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemColorSet:Z

    return-object p0
.end method

.method public itemsColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 674
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public itemsColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 662
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public itemsGravity(Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 686
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    return-object p0
.end method

.method public itemsIds(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .line 696
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsIds([I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public itemsIds([I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 691
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemIds:[I

    return-object p0
.end method

.method public keyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnKeyListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1101
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public limitIconToDefaultSize()Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1072
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->limitIconToDefaultSize:Z

    return-object p0
.end method

.method public linkColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 883
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->linkColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public linkColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 895
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->linkColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public linkColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 891
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->linkColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public linkColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 887
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->linkColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public listSelector(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 900
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listSelector:I

    return-object p0
.end method

.method public maxIconSize(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0

    .line 1077
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->maxIconSize:I

    return-object p0
.end method

.method public maxIconSizeRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1082
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->maxIconSize(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public negativeColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 818
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public negativeColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 849
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 850
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColorSet:Z

    return-object p0
.end method

.method public negativeColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 845
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public negativeColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 841
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public negativeText(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-object p0

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public negativeText(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 860
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public negativeType(Lcom/taobao/uikit/extend/component/unify/TBButtonType;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # Lcom/taobao/uikit/extend/component/unify/TBButtonType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 822
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$2;->$SwitchMap$com$taobao$uikit$extend$component$unify$TBButtonType:[I

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/taobao/uikit/extend/R$color;->uik_btnDisabled:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 830
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/taobao/uikit/extend/R$color;->uik_btnAlert:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 827
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/taobao/uikit/extend/R$color;->uik_btnSecondary:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 824
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/taobao/uikit/extend/R$color;->uik_btnNormal:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    :goto_0
    return-object p0
.end method

.method public neutralColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 865
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public neutralColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 877
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 878
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColorSet:Z

    return-object p0
.end method

.method public neutralColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 873
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public neutralColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 869
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public neutralText(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-object p0

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralText(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public neutralText(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 813
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onAny(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1026
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onAnyCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    return-object p0
.end method

.method public onNegative(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1016
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onNegativeCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    return-object p0
.end method

.method public onNeutral(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1021
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onNeutralCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    return-object p0
.end method

.method public onPositive(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1011
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onPositiveCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    return-object p0
.end method

.method public positiveColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 790
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public positiveColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 802
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 803
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColorSet:Z

    return-object p0
.end method

.method public positiveColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 798
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public positiveColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 794
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor(Landroid/content/res/ColorStateList;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public positiveText(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-object p0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    return-object p0
.end method

.method public positiveText(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 767
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public positiveType(Lcom/taobao/uikit/extend/component/unify/TBButtonType;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # Lcom/taobao/uikit/extend/component/unify/TBButtonType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 772
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$2;->$SwitchMap$com$taobao$uikit$extend$component$unify$TBButtonType:[I

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/taobao/uikit/extend/R$color;->uik_btnDisabled:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/taobao/uikit/extend/R$color;->uik_btnAlert:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 777
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/taobao/uikit/extend/R$color;->uik_btnSecondary:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 774
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/taobao/uikit/extend/R$color;->uik_btnNormal:I

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    :goto_0
    return-object p0
.end method

.method public show()Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1125
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->mMaterialDialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    if-nez v0, :cond_0

    .line 1126
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->build()Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->mMaterialDialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->mMaterialDialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->show()V

    .line 1129
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->mMaterialDialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    return-object v0
.end method

.method public showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnShowListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1086
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->showListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method public theme(Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1031
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->theme:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    return-object p0
.end method

.method public title(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 523
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    return-object p0
.end method

.method public title(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 528
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public titleColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 551
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleColor:I

    const/4 p1, 0x1

    .line 552
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleColorSet:Z

    return-object p0
.end method

.method public titleColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 561
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public titleColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 557
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public titleGravity(Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 533
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    return-object p0
.end method

.method public widgetColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 965
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    const/4 p1, 0x1

    .line 966
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColorSet:Z

    return-object p0
.end method

.method public widgetColorAttr(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 975
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public widgetColorRes(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 971
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor(I)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object p1

    return-object p1
.end method
