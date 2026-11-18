.class Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$3;
.super Ljava/lang/Object;
.source "MarketMainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->onDataLoaded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;

.field final synthetic val$totalBean:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$3;->val$totalBean:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$3;->val$totalBean:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tablist"

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tabName --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select_tab_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "market_main"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 307
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
