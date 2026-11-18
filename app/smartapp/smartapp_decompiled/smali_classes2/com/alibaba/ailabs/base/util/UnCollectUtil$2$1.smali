.class Lcom/alibaba/ailabs/base/util/UnCollectUtil$2$1;
.super Ljava/lang/Object;
.source "UnCollectUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/UnCollectUtil$2;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/base/util/UnCollectUtil$2;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$2$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$2$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    const-string v1, "custom"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v0

    const-string v1, "child"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->delete(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;Ljava/lang/String;)V

    return-void
.end method
