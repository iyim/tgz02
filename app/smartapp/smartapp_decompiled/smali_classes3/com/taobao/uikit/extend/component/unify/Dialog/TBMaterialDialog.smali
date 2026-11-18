.class public Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;
.super Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogBase;
.source "TBMaterialDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;,
        Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;,
        Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;,
        Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;,
        Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;,
        Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;,
        Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;,
        Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$DialogException;,
        Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$NotImplementedException;
    }
.end annotation


# instance fields
.field protected closeButton:Landroid/widget/ImageView;

.field protected content:Landroid/widget/TextView;

.field protected customViewFrame:Landroid/widget/FrameLayout;

.field protected icon:Landroid/widget/ImageView;

.field protected listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

.field protected listView:Landroid/widget/ListView;

.field protected final mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

.field private final mHandler:Landroid/os/Handler;

.field protected negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

.field protected neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

.field protected positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

.field protected selectedIndicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected title:Landroid/widget/TextView;

.field protected titleFrame:Landroid/view/View;


# direct methods
.method protected constructor <init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 76
    iget-object v0, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogInit;->getTheme(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogBase;-><init>(Landroid/content/Context;I)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    .line 79
    iget-object v0, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 80
    invoke-static {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogInit;->getInflateLayout(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    .line 81
    invoke-static {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogInit;->init(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V

    return-void
.end method

.method private sendMultichoiceCallback()Z
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackMultiChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 297
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v4, v4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_2

    goto :goto_0

    .line 298
    :cond_2
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v3, v3, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackMultiChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    .line 301
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 302
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 300
    invoke-interface {v1, p0, v2, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;->onSelection(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private sendSingleChoiceCallback(Landroid/view/View;)Z
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackSingleChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v2, v2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 287
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->getText()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackSingleChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v2, v2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    invoke-interface {v1, p0, p1, v2, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;->onSelection(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected final checkIfListInitScroll()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;-><init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public clearSelectedIndices()V
    .locals 1

    const/4 v0, 0x1

    .line 1418
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->clearSelectedIndices(Z)V

    return-void
.end method

.method public clearSelectedIndices(Z)V
    .locals 2

    .line 1427
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->MULTI:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    if-ne v0, v1, :cond_3

    .line 1429
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    if-eqz v0, :cond_2

    .line 1430
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1431
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_1

    .line 1433
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackMultiChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;

    if-eqz p1, :cond_1

    .line 1434
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->sendMultichoiceCallback()Z

    :cond_1
    return-void

    .line 1436
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use clearSelectedIndices() with the default adapter implementation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1428
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use clearSelectedIndices() with multi choice list dialogs."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getActionButton(Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;
    .locals 1
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1152
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$2;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$DialogAction:[I

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1154
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    return-object p1

    .line 1158
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    return-object p1

    .line 1156
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    return-object p1
.end method

.method public final getBuilder()Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    return-object v0
.end method

.method getButtonSelector(Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 242
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorStacked:I

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p2, p2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorStacked:I

    invoke-static {p1, p2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget p2, Lcom/taobao/uikit/extend/R$attr;->uik_mdBtnStackedSelector:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$attr;->uik_mdBtnStackedSelector:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 248
    :cond_2
    sget-object p2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$2;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$DialogAction:[I

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/16 v1, 0x15

    if-eq p1, p2, :cond_a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    .line 250
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorPositive:I

    if-eqz p1, :cond_3

    .line 251
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p2, p2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorPositive:I

    invoke-static {p1, p2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 252
    :cond_3
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget p2, Lcom/taobao/uikit/extend/R$attr;->uik_mdBtnPositiveSelector:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 254
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$attr;->uik_mdBtnPositiveSelector:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 255
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_5

    .line 256
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p2, p2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonRippleColor:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/RippleHelper;->applyColor(Landroid/graphics/drawable/Drawable;I)V

    :cond_5
    return-object p1

    .line 270
    :cond_6
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorNegative:I

    if-eqz p1, :cond_7

    .line 271
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p2, p2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorNegative:I

    invoke-static {p1, p2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 272
    :cond_7
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget p2, Lcom/taobao/uikit/extend/R$attr;->uik_mdBtnNegativeSelector:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_8

    return-object p1

    .line 274
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$attr;->uik_mdBtnNegativeSelector:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 275
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_9

    .line 276
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p2, p2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonRippleColor:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/RippleHelper;->applyColor(Landroid/graphics/drawable/Drawable;I)V

    :cond_9
    return-object p1

    .line 260
    :cond_a
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorNeutral:I

    if-eqz p1, :cond_b

    .line 261
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p2, p2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->btnSelectorNeutral:I

    invoke-static {p1, p2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 262
    :cond_b
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget p2, Lcom/taobao/uikit/extend/R$attr;->uik_mdBtnNeutralSelector:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_c

    return-object p1

    .line 264
    :cond_c
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$attr;->uik_mdBtnNeutralSelector:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 265
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_d

    .line 266
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p2, p2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->buttonRippleColor:I

    invoke-static {p1, p2}, Lcom/taobao/uikit/extend/utils/RippleHelper;->applyColor(Landroid/graphics/drawable/Drawable;I)V

    :cond_d
    return-object p1
.end method

.method public final getContentView()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1196
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1206
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->customView:Landroid/view/View;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected final getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listSelector:I

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listSelector:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/taobao/uikit/extend/R$attr;->uik_mdListSelector:I

    invoke-static {v0, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/taobao/uikit/extend/R$attr;->uik_mdListSelector:I

    invoke-static {v0, v1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getListView()Landroid/widget/ListView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1171
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackSingleChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackSingleChoice;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedIndices()[Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1373
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackMultiChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    return-object v0
.end method

.method public final hasActionButtons()Z
    .locals 1

    .line 1253
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->numberOfActionButtons()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final invalidateList()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_2

    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackCustom:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;

    if-eqz v0, :cond_4

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_4
    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1350
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final numberOfActionButtons()I
    .locals 2

    .line 1263
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1265
    :goto_0
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1267
    :cond_1
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    .line 308
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$2;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$DialogAction:[I

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    goto/16 :goto_0

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->autoDismiss:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->dismiss()V

    goto/16 :goto_0

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->callback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->callback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;

    invoke-virtual {v1, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;->onAny(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V

    .line 312
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->callback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;

    invoke-virtual {v1, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;->onPositive(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onPositiveCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    if-eqz v1, :cond_3

    .line 315
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onPositiveCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    invoke-interface {v1, p0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;->onClick(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;)V

    .line 316
    :cond_3
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->sendSingleChoiceCallback(Landroid/view/View;)Z

    .line 317
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->sendMultichoiceCallback()Z

    .line 318
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->autoDismiss:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->dismiss()V

    goto :goto_0

    .line 322
    :cond_4
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->callback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;

    if-eqz p1, :cond_5

    .line 323
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->callback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;

    invoke-virtual {p1, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;->onAny(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V

    .line 324
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->callback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;

    invoke-virtual {p1, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;->onNegative(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V

    .line 326
    :cond_5
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onNegativeCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    if-eqz p1, :cond_6

    .line 327
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onNegativeCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    invoke-interface {p1, p0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;->onClick(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;)V

    .line 328
    :cond_6
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->autoDismiss:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->dismiss()V

    goto :goto_0

    .line 332
    :cond_7
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->callback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;

    if-eqz p1, :cond_8

    .line 333
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->callback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;

    invoke-virtual {p1, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;->onAny(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V

    .line 334
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->callback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;

    invoke-virtual {p1, p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ButtonCallback;->onNeutral(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V

    .line 336
    :cond_8
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onNeutralCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    if-eqz p1, :cond_9

    .line 337
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onNeutralCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    invoke-interface {p1, p0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;->onClick(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;)V

    .line 338
    :cond_9
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->autoDismiss:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->dismiss()V

    .line 346
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onAnyCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    if-eqz p1, :cond_b

    .line 347
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->onAnyCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;

    invoke-interface {p1, p0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$SingleButtonCallback;->onClick(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;)V

    :cond_b
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 145
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackCustom:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackCustom:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;

    iget-object p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p4, p4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    aget-object p4, p4, p3

    invoke-interface {p1, p0, p2, p3, p4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;->onSelection(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;Landroid/view/View;ILcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;)V

    goto/16 :goto_2

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    if-eqz p1, :cond_8

    sget-object p4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->REGULAR:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    if-ne p1, p4, :cond_1

    goto/16 :goto_1

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    sget-object p4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->MULTI:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-ne p1, p4, :cond_5

    .line 163
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    .line 164
    sget p4, Lcom/taobao/uikit/extend/R$id;->uik_mdControl:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    if-eqz p1, :cond_4

    .line 167
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->alwaysCallMultiChoiceCallback:Z

    if-eqz p1, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->sendMultichoiceCallback()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 178
    :cond_3
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 182
    :cond_4
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p2, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->alwaysCallMultiChoiceCallback:Z

    if-eqz p1, :cond_a

    .line 185
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->sendMultichoiceCallback()Z

    goto :goto_2

    .line 187
    :cond_5
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    sget-object p4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->SINGLE:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    if-ne p1, p4, :cond_a

    .line 189
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    .line 190
    sget p4, Lcom/taobao/uikit/extend/R$id;->uik_mdControl:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/RadioButton;

    .line 192
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-boolean v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->autoDismiss:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    if-nez v1, :cond_6

    .line 194
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->dismiss()V

    .line 198
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iput p3, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    .line 199
    invoke-direct {p0, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->sendSingleChoiceCallback(Landroid/view/View;)Z

    const/4 p2, 0x0

    goto :goto_0

    .line 200
    :cond_6
    iget-object p5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-boolean p5, p5, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->alwaysCallSingleChoiceCallback:Z

    if-eqz p5, :cond_7

    .line 201
    iget-object p5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget p5, p5, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    .line 203
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iput p3, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    .line 205
    invoke-direct {p0, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->sendSingleChoiceCallback(Landroid/view/View;)Z

    move-result p2

    .line 207
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iput p5, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    goto :goto_0

    :cond_7
    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_a

    .line 211
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iput p3, p2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    .line 212
    invoke-virtual {p4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 213
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 153
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-boolean p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->autoDismiss:Z

    if-eqz p1, :cond_9

    .line 155
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->dismiss()V

    .line 157
    :cond_9
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;

    if-eqz p1, :cond_a

    .line 158
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallback:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;

    iget-object p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p4, p4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    aget-object p4, p4, p3

    invoke-interface {p1, p0, p2, p3, p4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallback;->onSelection(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;Landroid/view/View;ILcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public selectAllIndicies()V
    .locals 1

    const/4 v0, 0x1

    .line 1444
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectAllIndicies(Z)V

    return-void
.end method

.method public selectAllIndicies(Z)V
    .locals 3

    .line 1453
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->MULTI:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    if-ne v0, v1, :cond_5

    .line 1455
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    if-eqz v0, :cond_4

    .line 1456
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 1458
    :goto_0
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1459
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1460
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1462
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_3

    .line 1463
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->listCallbackMultiChoice:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListCallbackMultiChoice;

    if-eqz p1, :cond_3

    .line 1464
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->sendMultichoiceCallback()Z

    :cond_3
    return-void

    .line 1466
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use selectAllIndicies() with the default adapter implementation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1454
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use selectAllIndicies() with multi choice list dialogs."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final setActionButton(Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 1244
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setActionButton(Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setActionButton(Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1218
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$2;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$DialogAction:[I

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1220
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iput-object p2, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    .line 1221
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->positiveButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setVisibility(I)V

    goto :goto_3

    .line 1230
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iput-object p2, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    .line 1231
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->negativeButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setVisibility(I)V

    goto :goto_3

    .line 1225
    :cond_3
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iput-object p2, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    .line 1226
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->neutralButton:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final setContent(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1315
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final varargs setContent(I[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->content:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1291
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1292
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1297
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1298
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setIconAttribute(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1303
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/utils/ResourceUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1304
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final varargs setItems([Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1333
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iput-object p1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    .line 1336
    iget-object p1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    if-eqz p1, :cond_0

    .line 1337
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    invoke-static {v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->getLayoutForType(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;-><init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;I)V

    iput-object v0, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    .line 1341
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 1339
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "When using a custom adapter, setItems() cannot be used. Set items through the adapter instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1334
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This TBMaterialDialog instance does not yet have an adapter set to it. You cannot use setItems()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1328
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iput p1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    .line 1390
    iget-object p1, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    if-eqz p1, :cond_0

    .line 1391
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->notifyDataSetChanged()V

    return-void

    .line 1393
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use setSelectedIndex() with the default adapter implementation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelectedIndices([Ljava/lang/Integer;)V
    .locals 1
    .param p1    # [Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1406
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    .line 1407
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    instance-of p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    if-eqz p1, :cond_0

    .line 1408
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    check-cast p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->notifyDataSetChanged()V

    return-void

    .line 1410
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only use setSelectedIndices() with the default adapter implementation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1281
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final varargs setTitle(I[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1286
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1275
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1137
    :try_start_0
    invoke-super {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogBase;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 1139
    :catch_0
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$DialogException;

    const-string v1, "Bad window token, you cannot show a dialog before an Activity is created or after it\'s hidden."

    invoke-direct {v0, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$DialogException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
