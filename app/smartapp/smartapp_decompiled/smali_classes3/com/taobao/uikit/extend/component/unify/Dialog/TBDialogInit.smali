.class public Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogInit;
.super Ljava/lang/Object;
.source "TBDialogInit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInflateLayout(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;)I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 43
    sget p0, Lcom/taobao/uikit/extend/R$layout;->uik_md_dialog_custom:I

    return p0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_3

    .line 45
    :cond_2
    sget p0, Lcom/taobao/uikit/extend/R$layout;->uik_md_dialog_list:I

    return p0

    .line 47
    :cond_3
    sget p0, Lcom/taobao/uikit/extend/R$layout;->uik_md_dialog_basic:I

    return p0
.end method

.method public static getTheme(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;)I
    .locals 4
    .param p0    # Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/taobao/uikit/extend/R$attr;->uik_mdDarkTheme:I

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->theme:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    sget-object v3, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->DARK:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->DARK:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->LIGHT:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    :goto_1
    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->theme:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    if-eqz v0, :cond_2

    .line 37
    sget p0, Lcom/taobao/uikit/extend/R$style;->TBMD_Dark:I

    goto :goto_2

    :cond_2
    sget p0, Lcom/taobao/uikit/extend/R$style;->TBMD_Light:I

    :goto_2
    return p0
.end method

.method public static init(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V
    .locals 12
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    .line 56
    iget-boolean v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->cancelable:Z

    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setCancelable(Z)V

    .line 57
    iget-boolean v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->cancelable:Z

    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->backgroundColor:I

    if-nez v1, :cond_0

    .line 59
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/taobao/uikit/extend/R$attr;->uik_mdBackgroundColor:I

    invoke-static {v1, v2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->backgroundColor:I

    .line 60
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 61
    iget-object v2, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/taobao/uikit/extend/R$dimen;->uik_mdBgCornerRadius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 62
    iget v2, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 63
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    invoke-static {v2, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    iget-object v2, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    const v3, 0x106000d

    invoke-static {v2, v3}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->setBackgroundColor(I)V

    .line 69
    :cond_0
    iget-boolean v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColorSet:Z

    if-nez v1, :cond_1

    .line 70
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/taobao/uikit/extend/R$attr;->uik_mdPositiveColor:I

    iget-object v3, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v3}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    .line 71
    :cond_1
    iget-boolean v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColorSet:Z

    if-nez v1, :cond_2

    .line 72
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/taobao/uikit/extend/R$attr;->uik_mdNeutralColor:I

    iget-object v3, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v3}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    .line 73
    :cond_2
    iget-boolean v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColorSet:Z

    if-nez v1, :cond_3

    .line 74
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/taobao/uikit/extend/R$attr;->uik_mdNegativeColor:I

    iget-object v3, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, v3}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    .line 75
    :cond_3
    iget-boolean v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColorSet:Z

    if-nez v1, :cond_4

    .line 76
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/taobao/uikit/extend/R$attr;->uik_mdWidgetColor:I

    iget v3, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    invoke-static {v1, v2, v3}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    .line 79
    :cond_4
    iget-boolean v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleColorSet:Z

    if-nez v1, :cond_5

    .line 80
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$color;->uik_mdContentColor:I

    invoke-static {v1, v2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 81
    iget-object v2, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/taobao/uikit/extend/R$attr;->uik_mdTitleColor:I

    invoke-static {v2, v3, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleColor:I

    .line 83
    :cond_5
    iget-boolean v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentColorSet:Z

    if-nez v1, :cond_6

    .line 84
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$color;->uik_mdContentColor:I

    invoke-static {v1, v2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 85
    iget-object v2, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/taobao/uikit/extend/R$attr;->uik_mdContentColor:I

    invoke-static {v2, v3, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentColor:I

    .line 87
    :cond_6
    iget-boolean v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemColorSet:Z

    if-nez v1, :cond_7

    .line 88
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v2, Lcom/taobao/uikit/extend/R$attr;->uik_mdItemColor:I

    iget v3, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentColor:I

    invoke-static {v1, v2, v3}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemColor:I

    .line 91
    :cond_7
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    sget v2, Lcom/taobao/uikit/extend/R$id;->uik_mdTitle:I

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->title:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    sget v2, Lcom/taobao/uikit/extend/R$id;->uik_mdIcon:I

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    .line 93
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    sget v2, Lcom/taobao/uikit/extend/R$id;->uik_mdTitleFrame:I

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->titleFrame:Landroid/view/View;

    .line 94
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    sget v2, Lcom/taobao/uikit/extend/R$id;->uik_mdContent:I

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    sget v2, Lcom/taobao/uikit/extend/R$id;->uik_mdContentListView:I

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    .line 98
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    sget v2, Lcom/taobao/uikit/extend/R$id;->uik_mdButtonDefaultPositive:I

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    .line 99
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    sget v2, Lcom/taobao/uikit/extend/R$id;->uik_mdButtonDefaultNeutral:I

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    .line 100
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    sget v2, Lcom/taobao/uikit/extend/R$id;->uik_mdButtonDefaultNegative:I

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    .line 102
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    sget v2, Lcom/taobao/uikit/extend/R$id;->uik_mdButtonClose:I

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->closeButton:Landroid/widget/ImageView;

    .line 105
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 106
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    iget-object v4, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_0

    :cond_8
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setVisibility(I)V

    .line 108
    :cond_9
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    if-eqz v1, :cond_b

    .line 109
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    iget-object v4, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    goto :goto_1

    :cond_a
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v1, v4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setVisibility(I)V

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    if-eqz v1, :cond_d

    .line 112
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    iget-object v4, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    goto :goto_2

    :cond_c
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v1, v4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setVisibility(I)V

    .line 116
    :cond_d
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v1, :cond_13

    .line 117
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    .line 118
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 121
    :cond_e
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v6, Lcom/taobao/uikit/extend/R$attr;->uik_mdIcon:I

    invoke-static {v1, v6}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 123
    iget-object v6, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v6, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 126
    :cond_f
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :goto_3
    iget v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->maxIconSize:I

    if-ne v1, v4, :cond_10

    .line 133
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v6, Lcom/taobao/uikit/extend/R$attr;->uik_mdIconMaxSize:I

    invoke-static {v1, v6}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDimension(Landroid/content/Context;I)I

    move-result v1

    .line 134
    :cond_10
    iget-boolean v6, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->limitIconToDefaultSize:Z

    if-nez v6, :cond_11

    iget-object v6, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v7, Lcom/taobao/uikit/extend/R$attr;->uik_mdIconLimitIconToDefaultSize:I

    invoke-static {v6, v7}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveBoolean(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 135
    :cond_11
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/taobao/uikit/extend/R$dimen;->uik_mdIconMaxSize:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_12
    if-le v1, v4, :cond_13

    .line 137
    iget-object v6, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 138
    iget-object v6, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 139
    iget-object v6, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 140
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 145
    :cond_13
    iget-boolean v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dividerColorSet:Z

    if-nez v1, :cond_14

    .line 146
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v6, Lcom/taobao/uikit/extend/R$attr;->uik_mdDivider:I

    invoke-static {v1, v6}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    .line 147
    iget-object v6, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v7, Lcom/taobao/uikit/extend/R$attr;->uik_mdDividerColor:I

    invoke-static {v6, v7, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dividerColor:I

    .line 149
    :cond_14
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    iget v6, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dividerColor:I

    invoke-virtual {v1, v6}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->setDividerColor(I)V

    .line 152
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->title:Landroid/widget/TextView;

    const/16 v6, 0x11

    if-eqz v1, :cond_17

    .line 153
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->title:Landroid/widget/TextView;

    iget v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleColor:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->getGravityInt()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_15

    .line 157
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->titleGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->getTextAlignment()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 160
    :cond_15
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_16

    .line 161
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->titleFrame:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 163
    :cond_16
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->title:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->titleFrame:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_17
    :goto_4
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 170
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    new-instance v7, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v7}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 171
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    const/4 v7, 0x0

    iget v8, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentLineSpacingMultiplier:F

    invoke-virtual {v1, v7, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 172
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->linkColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_18

    .line 173
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x1010036

    invoke-static {v7, v8}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto :goto_5

    .line 174
    :cond_18
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->linkColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 175
    :goto_5
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    iget v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentColor:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->getGravityInt()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_19

    .line 179
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->contentGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->getTextAlignment()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 182
    :cond_19
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->content:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1a

    .line 183
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->content:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 186
    :cond_1a
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    :cond_1b
    :goto_6
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    iget-object v2, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->setButtonGravity(Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)V

    .line 192
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    iget-object v2, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnStackedGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->setButtonStackedGravity(Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;)V

    .line 193
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    iget-boolean v2, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->forceStacking:Z

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->setForceStack(Z)V

    .line 195
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    const v7, 0x101038c

    if-lt v1, v2, :cond_1c

    .line 196
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v1, v7, v5}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 198
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v1, v7, v5}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    goto :goto_7

    .line 200
    :cond_1c
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v1, v7, v5}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    .line 203
    :cond_1d
    :goto_7
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    if-eqz v2, :cond_1e

    .line 205
    invoke-virtual {v2, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setAllCapsCompat(Z)V

    .line 206
    iget-object v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 208
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    sget-object v7, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->POSITIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-virtual {p0, v7, v5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getButtonSelector(Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    sget-object v7, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->POSITIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-virtual {p0, v7, v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getButtonSelector(Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    sget-object v7, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->POSITIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-virtual {v2, v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setTag(Ljava/lang/Object;)V

    .line 211
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {v2, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {v2, v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setVisibility(I)V

    .line 215
    :cond_1e
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    if-eqz v2, :cond_1f

    .line 217
    invoke-virtual {v2, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setAllCapsCompat(Z)V

    .line 218
    iget-object v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 220
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    sget-object v7, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->NEGATIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-virtual {p0, v7, v5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getButtonSelector(Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    sget-object v7, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->NEGATIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-virtual {p0, v7, v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getButtonSelector(Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    sget-object v7, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->NEGATIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-virtual {v2, v7}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setTag(Ljava/lang/Object;)V

    .line 223
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {v2, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {v2, v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setVisibility(I)V

    .line 227
    :cond_1f
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    if-eqz v2, :cond_20

    .line 229
    invoke-virtual {v2, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setAllCapsCompat(Z)V

    .line 230
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 232
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    sget-object v2, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->NEUTRAL:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-virtual {p0, v2, v5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getButtonSelector(Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    sget-object v2, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->NEUTRAL:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-virtual {p0, v2, v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getButtonSelector(Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    sget-object v2, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->NEUTRAL:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setTag(Ljava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {v1, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {v1, v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setVisibility(I)V

    .line 239
    :cond_20
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->closeButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_21

    .line 241
    sget-object v2, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->CLOSE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_21
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackMultiChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;

    if-eqz v1, :cond_22

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    .line 248
    :cond_22
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    array-length v1, v1

    if-gtz v1, :cond_24

    :cond_23
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_29

    .line 249
    :cond_24
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_28

    .line 255
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackSingleChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;

    if-eqz v1, :cond_25

    .line 256
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->SINGLE:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    goto :goto_8

    .line 257
    :cond_25
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackMultiChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;

    if-eqz v1, :cond_26

    .line 258
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->MULTI:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    .line 259
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    if-eqz v1, :cond_27

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    const/4 v1, 0x0

    .line 261
    iput-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    goto :goto_8

    .line 264
    :cond_26
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->REGULAR:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    .line 266
    :cond_27
    :goto_8
    new-instance v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    .line 267
    invoke-static {v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->getLayoutForType(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;-><init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;I)V

    iput-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    goto :goto_9

    .line 268
    :cond_28
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogAdapter;

    if-eqz v1, :cond_29

    .line 270
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogAdapter;

    invoke-interface {v1, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogAdapter;->setDialog(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V

    .line 274
    :cond_29
    :goto_9
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    iget-boolean v2, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->cardDialog:Z

    iput-boolean v2, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->mCardDialog:Z

    .line 277
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->customView:Landroid/view/View;

    const/4 v2, -0x2

    if-eqz v1, :cond_2d

    .line 278
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    sget v5, Lcom/taobao/uikit/extend/R$id;->uik_mdRoot:I

    invoke-virtual {v1, v5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->noTitleNoPadding()V

    .line 279
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    sget v5, Lcom/taobao/uikit/extend/R$id;->uik_mdCustomViewFrame:I

    invoke-virtual {v1, v5}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 280
    iput-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->customViewFrame:Landroid/widget/FrameLayout;

    .line 281
    iget-object v5, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->customView:Landroid/view/View;

    .line 282
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2a

    .line 283
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 284
    :cond_2a
    iget-boolean v7, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->wrapCustomViewInScroll:Z

    if-eqz v7, :cond_2c

    .line 287
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 288
    sget v8, Lcom/taobao/uikit/extend/R$dimen;->uik_mdDialogFrameMargin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 289
    new-instance v9, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 290
    sget v10, Lcom/taobao/uikit/extend/R$dimen;->uik_mdContentPaddingTop:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 291
    sget v11, Lcom/taobao/uikit/extend/R$dimen;->uik_mdContentPaddingBottom:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 292
    invoke-virtual {v9, v3}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 293
    instance-of v11, v5, Landroid/widget/EditText;

    if-eqz v11, :cond_2b

    .line 295
    invoke-virtual {v9, v8, v10, v8, v7}, Landroid/widget/ScrollView;->setPadding(IIII)V

    goto :goto_a

    .line 298
    :cond_2b
    invoke-virtual {v9, v3, v10, v3, v7}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 299
    invoke-virtual {v5, v8, v3, v8, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    :goto_a
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v5, v9

    .line 307
    :cond_2c
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    :cond_2d
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->showListener:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v1, :cond_2e

    .line 313
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->showListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 314
    :cond_2e
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v1, :cond_2f

    .line 315
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 316
    :cond_2f
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_30

    .line 317
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 318
    :cond_30
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_31

    .line 319
    iget-object v1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 322
    :cond_31
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setOnShowListenerInternal()V

    .line 325
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->invalidateList()V

    .line 327
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 328
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 330
    iget-boolean v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->cardDialog:Z

    if-eqz v0, :cond_32

    .line 331
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    invoke-virtual {p0, v0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 333
    :cond_32
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setViewInternal(Landroid/view/View;)V

    .line 336
    :goto_b
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->checkIfListInitScroll()V

    return-void
.end method
