.class public Lcom/alibaba/ailabs/appbox/db/ChildSortDBUtil;
.super Ljava/lang/Object;
.source "ChildSortDBUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildSortDBUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 3

    .line 67
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;-><init>()V

    .line 68
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->setAppid(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildSortDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p0, v1}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;->delete([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildSortDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getMaxOrMinInSort(Z)I
    .locals 3

    const/16 v0, -0x2766

    .line 39
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildSortDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;->getAllAppList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 44
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->getSortIndex()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 46
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->getSortIndex()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChildSortDBUtil"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static insertSort2DB(Ljava/lang/String;I)V
    .locals 2

    .line 23
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;-><init>()V

    .line 24
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->setAppid(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->setSortIndex(I)V

    .line 26
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildSortDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;->getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 27
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildSortDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;

    move-result-object p0

    new-array v1, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;

    aput-object v0, v1, p1

    invoke-interface {p0, v1}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;->update([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildSortDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;

    move-result-object p0

    new-array v1, v1, [Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;

    aput-object v0, v1, p1

    invoke-interface {p0, v1}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;->insert([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChildSortDBUtil"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static isAlreadySort(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getChildSortDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;->getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChildSortDBUtil"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
