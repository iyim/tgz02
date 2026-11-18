.class public Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TBMaterialSimpleListAdapter.java"

# interfaces
.implements Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;",
        ">;",
        "Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogAdapter;"
    }
.end annotation


# instance fields
.field private dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    sget v0, Lcom/taobao/uikit/extend/R$layout;->uik_md_simplelist_item:I

    const v1, 0x1020016

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    iget-object p3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    if-eqz p3, :cond_1

    .line 42
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;

    const p3, 0x1020006

    .line 43
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 44
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->getIconPadding()I

    move-result v0

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->getIconPadding()I

    move-result v1

    .line 47
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->getIconPadding()I

    move-result v2

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->getIconPadding()I

    move-result v3

    .line 46
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 48
    invoke-virtual {p3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->getBackgroundColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 51
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const p3, 0x1020016

    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getBuilder()Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->getItemColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->getContent()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDialog(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    return-void
.end method
