.class Lcom/alibaba/ailabs/base/util/UnCollectUtil$3$1;
.super Ljava/lang/Object;
.source "UnCollectUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/UnCollectUtil$3;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/base/util/UnCollectUtil$3;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$3$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$3$1;->this$0:Lcom/alibaba/ailabs/base/util/UnCollectUtil$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/base/util/UnCollectUtil$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    const-string v1, "custom"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v0

    const-string v1, "adult"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->delete(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;Ljava/lang/String;)V

    return-void
.end method
