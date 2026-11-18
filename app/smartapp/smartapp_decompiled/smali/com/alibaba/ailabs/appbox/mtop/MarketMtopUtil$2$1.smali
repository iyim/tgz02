.class Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2$1;
.super Ljava/lang/Object;
.source "MarketMtopUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2$1;->this$0:Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2$1;->this$0:Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2$1;->this$0:Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$appId:Ljava/lang/String;

    const-string v2, "custom"

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v0, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2$1;->this$0:Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 455
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;-><init>(ILcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    .line 456
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
