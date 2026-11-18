.class Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;
.super Ljava/lang/Object;
.source "MarketItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindData(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

.field final synthetic val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "key_user_enter_applist"

    .line 139
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 142
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$000(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v3

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindData title:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",appIdBean:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",iapIdBean:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "MarketItemView"

    invoke-static {v6, v4}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    const/4 v7, 0x1

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$102(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Z)Z

    .line 147
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIsCollected()Ljava/lang/String;

    move-result-object v2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",isInLocalDb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v4}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$100(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",beanIsCollected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$100(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v0, v7}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$202(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Z)Z

    .line 151
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    return-void

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$202(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Z)Z

    .line 163
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$1;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
