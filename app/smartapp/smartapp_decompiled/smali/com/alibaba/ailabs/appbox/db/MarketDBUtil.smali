.class public Lcom/alibaba/ailabs/appbox/db/MarketDBUtil;
.super Ljava/lang/Object;
.source "MarketDBUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MarketDBUtil-l"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static delete(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 3

    .line 205
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketDBUtil-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static deleteAllPreinstall()V
    .locals 3

    .line 237
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

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MarketDBUtil-l"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static deleteSort(Ljava/lang/String;)V
    .locals 3

    .line 225
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;-><init>()V

    .line 226
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->setAppid(Ljava/lang/String;)V

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSort id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MarketDBUtil-l"

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p0, v1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->delete([Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;)V

    return-void
.end method

.method public static getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;
    .locals 2

    .line 251
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

    .line 253
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketDBUtil-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApplistWithOrder()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;"
        }
    .end annotation

    const-string v0, "MarketDBUtil-l"

    .line 262
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 263
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->getInstallList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplistWithOrder applistDbBeans:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 297
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMaxOrMinInSort(Z)I
    .locals 3

    const/16 v0, -0x2766

    .line 123
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->getAllApplist()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 128
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->getSortIndex()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 130
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->getSortIndex()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MarketDBUtil-l"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static inser2First(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 142
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/MarketDBUtil;->getMaxOrMinInSort(Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 141
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/appbox/db/MarketDBUtil;->insertSort2DB(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketDBUtil-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static inser2Last(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 152
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/MarketDBUtil;->getMaxOrMinInSort(Z)I

    move-result v1

    add-int/2addr v1, v0

    .line 151
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/appbox/db/MarketDBUtil;->insertSort2DB(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketDBUtil-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static insertLast(Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/MarketDBUtil;->isAlreadySort(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/MarketDBUtil;->inser2Last(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)V
    .locals 2

    .line 26
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/db/MarketDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 31
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object p1

    new-array v1, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    aput-object p0, v1, v0

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->insert([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object p1

    new-array v1, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    aput-object p0, v1, v0

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->update([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketDBUtil-l"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    :try_start_0
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object p2

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 51
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->setAppid(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/MarketDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_2

    .line 57
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object p0

    new-array v0, v0, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    aput-object p2, v0, p1

    invoke-interface {p0, v0}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->insert([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object p0

    new-array v0, v0, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    aput-object p2, v0, p1

    invoke-interface {p0, v0}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->update([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MarketDBUtil-l"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 3

    :try_start_0
    const-string v0, "insertOrUpdate"

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/MarketDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 93
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    move-result-object v0

    new-array v2, v2, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    aput-object p0, v2, v1

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;->insert([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    goto :goto_0

    .line 95
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

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketDBUtil-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static insertSort2DB(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "MarketDBUtil-l"

    .line 106
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    invoke-direct {v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;-><init>()V

    .line 107
    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->setAppid(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->setSortIndex(I)V

    .line 109
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 110
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object v2

    new-array v4, v4, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    aput-object v1, v4, v3

    invoke-interface {v2, v4}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->update([Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object v2

    new-array v4, v4, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    aput-object v1, v4, v3

    invoke-interface {v2, v4}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->insert([Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;)V

    .line 114
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertSort2DB appid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",sortIndex:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static insertSort2DB(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 177
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 180
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 181
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/db/MarketDBUtil;->insertSort2DB(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketDBUtil-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public static isAlreadySort(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "MarketDBUtil-l"

    const/4 v1, 0x0

    .line 162
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 163
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlreadySort appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",result:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
