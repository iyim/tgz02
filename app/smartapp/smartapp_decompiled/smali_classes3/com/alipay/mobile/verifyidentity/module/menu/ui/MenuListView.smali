.class public Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;
.super Landroid/widget/LinearLayout;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;,
        Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MenuListView"


# instance fields
.field private b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

.field private c:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;

.field private f:Landroid/widget/LinearLayout;

.field public mMenuListView:Lcom/alipay/mobile/verifyidentity/ui/APListView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->c:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    .line 39
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->verify_menu_listview:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->f:Landroid/widget/LinearLayout;

    .line 41
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->f:Landroid/widget/LinearLayout;

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->menuList:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/ui/APListView;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->mMenuListView:Lcom/alipay/mobile/verifyidentity/ui/APListView;

    .line 42
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->f:Landroid/widget/LinearLayout;

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->titleText:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->d:Landroid/widget/TextView;

    .line 43
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->mMenuListView:Lcom/alipay/mobile/verifyidentity/ui/APListView;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->a(Lcom/alipay/mobile/verifyidentity/ui/APListView;)V

    .line 44
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

.method private a(Lcom/alipay/mobile/verifyidentity/ui/APListView;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->c:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    iget-object v2, v2, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->e:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->e:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$MenuListAdapter;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$1;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->setListViewHeightBasedOnChildren(Lcom/alipay/mobile/verifyidentity/ui/APListView;)V

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->b:Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->c:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    return-object p0
.end method


# virtual methods
.method public setListViewHeightBasedOnChildren(Lcom/alipay/mobile/verifyidentity/ui/APListView;)V
    .locals 5

    .line 132
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 138
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    .line 139
    invoke-interface {v0, v2, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 140
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 141
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 146
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int v2, v2, v0

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
