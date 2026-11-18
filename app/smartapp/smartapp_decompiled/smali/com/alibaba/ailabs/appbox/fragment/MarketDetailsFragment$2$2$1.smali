.class Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2$2$1;
.super Ljava/lang/Object;
.source "MarketDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2$2;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2$2;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2$2$1;->this$2:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2$2$1;->this$2:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2$2;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    const-string v1, "custom"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v0

    const-string v1, "adult"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->delete(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;Ljava/lang/String;)V

    return-void
.end method
