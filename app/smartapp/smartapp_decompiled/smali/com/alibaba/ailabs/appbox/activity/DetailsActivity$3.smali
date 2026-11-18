.class Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$3;
.super Ljava/lang/Object;
.source "DetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->onDataLoaded(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

.field final synthetic val$appDetail:Ljava/lang/String;

.field final synthetic val$marketAppItemBean1:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$3;->val$marketAppItemBean1:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$3;->val$appDetail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 194
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u60a8\u8fd8\u6ca1\u6709\u6dfb\u52a0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$3;->val$marketAppItemBean1:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 195
    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0c\u6dfb\u52a0\u540e\u53ef\u4ee5\u53d1\u73b0\u66f4\u591a\u7cbe\u5f69\u5185\u5bb9\u54e6."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 194
    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    const-string v0, "DetailsActivity"

    const-string v1, "######3333 openMarketDetailFragment2222111111"

    .line 197
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$3;->val$appDetail:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->access$300(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Ljava/lang/String;Z)V

    .line 199
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->access$202(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Z)Z

    .line 200
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->finishLoadingView()V

    const-string v1, "finishLoadingView_uncollected"

    .line 201
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/alibaba/ailabs/base/util/LogTime;->showIntervalTime()V

    .line 203
    invoke-static {}, Lcom/alibaba/ailabs/base/util/LogTime;->clearTime()V

    return-void
.end method
