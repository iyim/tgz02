.class Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9$1;
.super Ljava/lang/Object;
.source "MarketItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$000(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$000(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "custom"

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->delete(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    return-void
.end method
