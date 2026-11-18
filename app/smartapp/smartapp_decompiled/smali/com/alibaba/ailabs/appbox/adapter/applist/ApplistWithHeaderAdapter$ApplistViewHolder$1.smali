.class Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;
.super Ljava/lang/Object;
.source "ApplistWithHeaderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bindClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 563
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$600(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 566
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->access$700(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const-string v0, "ApplistWithHeaderAdapter-l"

    if-nez p1, :cond_1

    const-string p1, "bindClick retry true"

    .line 567
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->retry()V

    return-void

    .line 572
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$800(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long p1, v1, v3

    if-gez p1, :cond_2

    const-string/jumbo p1, "quick-click"

    const-string/jumbo v0, "skip quick click..."

    .line 573
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 576
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$802(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;J)J

    .line 579
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getIsOffline()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 580
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u5df2\u505c\u6b62\u670d\u52a1\uff0c\u60a8\u53ef\u4ee5\u70b9\u51fb\u7ba1\u7406\u540e\uff0c\u5220\u9664\u56fe\u6807\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->showMsg(Ljava/lang/String;)V

    return-void

    .line 583
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindClick bean:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getActionValue()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getBusinessType()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getIcon()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    .line 629
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_list_"

    .line 628
    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/appbox/utils/OpenUtils;->openDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "open"

    .line 630
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 631
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->setAppHasOpen(Ljava/lang/String;)V

    .line 633
    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 634
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getActionValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$1;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "applist_click"

    const-string v1, "app_list_"

    .line 636
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
