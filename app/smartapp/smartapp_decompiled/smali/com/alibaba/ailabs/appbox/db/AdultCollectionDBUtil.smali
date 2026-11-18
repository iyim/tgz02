.class public Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;
.super Ljava/lang/Object;
.source "AdultCollectionDBUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdultCollectionDBUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static delete(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 3

    .line 99
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->delete([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdultCollectionDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static deleteAllPreinstall()V
    .locals 3

    .line 114
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->deleteAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdultCollectionDBUtil"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;
    .locals 2

    .line 129
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdultCollectionDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;"
        }
    .end annotation

    .line 144
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->getInstallList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdultCollectionDBUtil"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertOrUpdate appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdultCollectionDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, v0, p2}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object v4

    new-array v5, v3, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    aput-object v0, v5, v2

    invoke-interface {v4, v5}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->delete([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    .line 37
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 41
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object v0

    new-array v3, v3, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    aput-object p2, v3, v2

    invoke-interface {v0, v3}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->insert([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object v0

    new-array v3, v3, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    aput-object p2, v3, v2

    invoke-interface {v0, v3}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->update([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    .line 48
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 49
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->isAlreadySort(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 51
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->insert2Last(Ljava/lang/String;)V

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->isAlreadySort(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->insert2Last(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 3

    :try_start_0
    const-string v0, "insertOrUpdate"

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 81
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object v0

    new-array v2, v2, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    aput-object p0, v2, v1

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->insert([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object v0

    new-array v2, v2, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    aput-object p0, v2, v1

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->update([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdultCollectionDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
