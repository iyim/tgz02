.class Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$1;
.super Ljava/lang/Object;
.source "MarketClientTaskMgr.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/OnServerDisconnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$1;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerDisconnect()V
    .locals 6

    const-string v0, "DownloadTaskMgr-l"

    :try_start_0
    const-string v1, "onServerDisconnect download process has been kill ... "

    .line 72
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$1;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    invoke-static {v1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->access$200(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 76
    iget-object v3, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$1;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    invoke-static {v3}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->access$200(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/genie/market/task/DownloadInfo;

    .line 77
    iget-object v3, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$1;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    const-string v4, "\u4e0b\u8f7d\u5f02\u5e38"

    const v5, -0x186dd

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v4, v5, v2}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->access$300(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServerDisconnect download process has been kill and callback Exception... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
