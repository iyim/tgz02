.class public Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;
.super Landroid/widget/BaseAdapter;
.source "TBDialogDefaultAdapter.java"


# instance fields
.field private final dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

.field private final itemGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

.field private final layout:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    .line 37
    iput p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->layout:I

    .line 38
    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemsGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->itemGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    return-void
.end method

.method private isRTL()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    return v1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getBuilder()Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private setupGravity(Landroid/view/ViewGroup;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 125
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 126
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->itemGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->getGravityInt()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 129
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->itemGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->END:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->isRTL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 137
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 136
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->itemGravity:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->START:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 148
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 147
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongViewCast"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 65
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    invoke-virtual {p2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->layout:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    :cond_0
    sget p3, Lcom/taobao/uikit/extend/R$id;->uik_mdTitle:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 68
    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter$1;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$TBMaterialDialog$ListType:[I

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v2, v2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    invoke-virtual {v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    sget v1, Lcom/taobao/uikit/extend/R$id;->uik_mdControl:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 80
    iget-object v4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v4, v4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 81
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v5, v5, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v5, v5, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    invoke-static {v1, v5}, Lcom/taobao/uikit/extend/utils/TintHelper;->setTint(Landroid/widget/CheckBox;I)V

    .line 82
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 71
    :cond_2
    sget v1, Lcom/taobao/uikit/extend/R$id;->uik_mdControl:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 72
    iget-object v4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v4, v4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v4, v4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    if-ne v4, p1, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 73
    :goto_0
    iget-object v5, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v5, v5, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v5, v5, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->widgetColor:I

    invoke-static {v1, v5}, Lcom/taobao/uikit/extend/utils/TintHelper;->setTint(Landroid/widget/RadioButton;I)V

    .line 74
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 86
    :goto_1
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->getType()Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 90
    sget-object v4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;->NORMAL:Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;

    if-ne v1, v4, :cond_4

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/taobao/uikit/extend/R$color;->uik_mdListItemNormal:I

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 92
    :cond_4
    sget-object v4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;->ALERT:Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;

    if-ne v1, v4, :cond_6

    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/taobao/uikit/extend/R$color;->uik_mdListItemAlert:I

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemColor:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :cond_6
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->items:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    invoke-direct {p0, p3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->setupGravity(Landroid/view/ViewGroup;)V

    .line 103
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemIds:[I

    if-eqz v1, :cond_8

    .line 104
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemIds:[I

    array-length v1, v1

    if-ge p1, v1, :cond_7

    .line 105
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;->dialog:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->itemIds:[I

    aget p1, v1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    goto :goto_3

    :cond_7
    const/4 p1, -0x1

    .line 106
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 109
    :cond_8
    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_a

    .line 111
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_a

    .line 113
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 114
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 115
    :cond_9
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/CompoundButton;

    if-eqz p1, :cond_a

    .line 116
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_4
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
