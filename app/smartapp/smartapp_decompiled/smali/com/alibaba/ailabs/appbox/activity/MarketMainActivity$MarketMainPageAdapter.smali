.class public Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "MarketMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MarketMainPageAdapter"
.end annotation


# instance fields
.field menuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;",
            ">;)V"
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;->this$0:Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;

    .line 396
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 398
    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;->menuList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;",
            ">;)V"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;->this$0:Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;

    .line 390
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 392
    iput-object p4, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;->menuList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;->menuList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;->menuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;->menuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    .line 415
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application_recommend"

    .line 416
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageId()I

    move-result p1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;->this$0:Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->getInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    move-result-object p1

    return-object p1

    .line 423
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageId()I

    move-result p1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;->this$0:Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->getInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    move-result-object p1

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

    .line 409
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;->menuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
