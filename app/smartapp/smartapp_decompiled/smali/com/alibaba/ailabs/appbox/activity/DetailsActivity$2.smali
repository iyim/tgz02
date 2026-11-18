.class Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$2;
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


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$2;->val$appDetail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "DetailsActivity"

    const-string v1, "######3333 openMarketDetailFragment2222"

    .line 176
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$2;->val$appDetail:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->access$300(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Ljava/lang/String;Z)V

    const-string v1, "######3333 onDataLoaded collected"

    .line 178
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->access$202(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Z)Z

    const-string v1, "finishLoadingView_collected"

    .line 180
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->finishLoadingView()V

    return-void
.end method
