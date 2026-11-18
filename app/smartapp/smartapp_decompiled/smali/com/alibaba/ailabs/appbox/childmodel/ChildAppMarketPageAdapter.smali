.class Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketPageAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ChildAppMarketPageAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildAppMarketPageAdapter"


# instance fields
.field fragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;",
            ">;"
        }
    .end annotation
.end field

.field menuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 22
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketPageAdapter;->fragmentList:Ljava/util/List;

    .line 23
    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketPageAdapter;->menuList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketPageAdapter;->menuList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketPageAdapter;->menuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketPageAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, -0x2

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketPageAdapter;->menuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
