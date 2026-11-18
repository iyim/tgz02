.class Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$2;
.super Ljava/lang/Object;
.source "ChildAppListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->onDataLoaded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

.field final synthetic val$pageBean:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$2;->val$pageBean:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$2;->val$pageBean:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 237
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    goto :goto_0

    :cond_1
    return-void
.end method
