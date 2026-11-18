.class Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 63
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->b:Landroid/view/LayoutInflater;

    .line 64
    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    .line 65
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->getItem(I)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 89
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->verify_menu_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    new-instance p3, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$1;)V

    .line 91
    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->moduleMenuName:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;->menuName:Landroid/widget/TextView;

    .line 92
    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->menu_splitter:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;->spliter:Landroid/view/View;

    .line 93
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;

    .line 98
    iget-object v2, p3, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;->menuName:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 100
    iget-object p1, p3, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;->spliter:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 102
    :cond_1
    iget-object p1, p3, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter$ViewHolder;->spliter:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object p2
.end method
