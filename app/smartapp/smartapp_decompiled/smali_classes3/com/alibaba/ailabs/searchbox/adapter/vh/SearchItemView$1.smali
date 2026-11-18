.class Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;
.super Ljava/lang/Object;
.source "SearchItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->bindData(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;

.field final synthetic val$bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;->this$0:Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;->val$bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 104
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;

    move-result-object p1

    const-string v0, "item click."

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->stopOpenTask(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;->val$bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getStsType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NATIVE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;->val$bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;->val$bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openAppDetail(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;->val$bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;->val$bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;->val$bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;->val$bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getIcon()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppSearch"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->openBySchemaOrPkgName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;->val$bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getAlgTrackLog()Ljava/lang/String;

    move-result-object v0

    const-string v1, "algTrackLog"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;->val$bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "click"

    .line 115
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/searchbox/report/SearchReportUtil;->reportSearchItemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
