.class public Lcom/alibaba/ailabs/appbox/db/AdultSortDBUtil;
.super Ljava/lang/Object;
.source "AdultSortDBUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdultSortDBUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 3

    .line 106
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;-><init>()V

    .line 107
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->setAppid(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p0, v1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->delete([Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdultSortDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getMaxOrMinInSort(Z)I
    .locals 3

    const/16 v0, -0x2766

    .line 78
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->getAllApplist()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 83
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

    .line 85
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

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdultSortDBUtil"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static insert2Last(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 46
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/AdultSortDBUtil;->getMaxOrMinInSort(Z)I

    move-result v1

    add-int/2addr v1, v0

    .line 45
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/appbox/db/AdultSortDBUtil;->insertSort2DB(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdultSortDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static insertSort2DB(Ljava/lang/String;I)V
    .locals 2

    .line 62
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;-><init>()V

    .line 63
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->setAppid(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->setSortIndex(I)V

    .line 65
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 66
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object p0

    new-array v1, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    aput-object v0, v1, p1

    invoke-interface {p0, v1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->update([Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object p0

    new-array v1, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    aput-object v0, v1, p1

    invoke-interface {p0, v1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->insert([Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdultSortDBUtil"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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

    .line 26
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 30
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/db/AdultSortDBUtil;->insertSort2DB(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdultSortDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public static isAlreadySort(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 96
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;->getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdultSortDBUtil"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
