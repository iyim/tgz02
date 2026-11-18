.class public Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;
.super Ljava/lang/Object;
.source "ChildCollectionDBUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildCollectionDBUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static convertMarketAppItemBean2ChildAppListDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;-><init>()V

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppName(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setIcon(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setBusinessType(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDownloadUrl(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setPackageName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getInstallSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setInstallSize(I)V

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIsOffline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setIsOffline(Ljava/lang/String;)V

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getApkVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppVersionCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppid(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppid(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppid(Ljava/lang/String;)V

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setActionValue(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getUninstallable()Ljava/lang/String;

    move-result-object p0

    const-string p1, "false"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDeleteType(I)V

    .line 162
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setFromType(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V
    .locals 3

    .line 78
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildAppListDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;->delete([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildCollectionDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static deleteAllPreinstall()V
    .locals 3

    .line 93
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildAppListDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;->deleteAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChildCollectionDBUtil"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;
    .locals 2

    .line 108
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildAppListDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;->getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildCollectionDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
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
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
            ">;"
        }
    .end annotation

    .line 123
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildAppListDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;->getInstallList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChildCollectionDBUtil"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 24
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;->convertMarketAppItemBean2ChildAppListDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 29
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildAppListDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    move-result-object p2

    new-array v2, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    aput-object p1, v2, v0

    invoke-interface {p2, v2}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;->insert([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildAppListDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    move-result-object p2

    new-array v2, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    aput-object p1, v2, v0

    invoke-interface {p2, v2}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;->update([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->isAlreadySort(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->getMaxOrMinInSort(Z)I

    move-result p1

    add-int/2addr p1, v1

    .line 36
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->insertSort2DB(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChildCollectionDBUtil"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V
    .locals 3

    :try_start_0
    const-string v0, "insertOrUpdate"

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildAppListDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    move-result-object v0

    new-array v2, v2, [Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    aput-object p0, v2, v1

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;->insert([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildAppListDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    move-result-object v0

    new-array v2, v2, [Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    aput-object p0, v2, v1

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;->update([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildCollectionDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
