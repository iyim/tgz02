.class Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$5;
.super Ljava/lang/Object;
.source "AppSearchActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/searchbox/view/IRecyclerViewUserVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$5;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserVisible(I)V
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserVisible pos == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppSearchActivity-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$5;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->access$100(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x271a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x271c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2720

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getRecommendStartPos()I

    move-result v0

    sub-int/2addr p1, v0

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "algTrackLog"

    .line 235
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getRecommendAppList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getAlgTrackLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    .line 236
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getRecommendAppList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "show"

    .line 237
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/searchbox/report/SearchReportUtil;->reportRecommendItemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, p1, 0x1

    .line 226
    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$5;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->access$200(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;I)V

    .line 227
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$5;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->access$200(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
