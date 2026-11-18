.class public Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;
.super Ljava/lang/Object;
.source "CollectionDBUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CollectionDBUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static child2Default(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 198
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 199
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 200
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static delete(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete bean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectionDBUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->newBean(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    move-result-object p0

    .line 92
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;->delete(Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;->delete(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    :goto_0
    return-void
.end method

.method public static delete(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;Ljava/lang/String;)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete pattern:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectionDBUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "child"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->newBean(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    move-result-object p0

    .line 116
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;->delete(Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;->delete(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    :goto_0
    return-void
.end method

.method public static deleteAllPreinstall()V
    .locals 1

    .line 127
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;->deleteAllPreinstall()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;->deleteAllPreinstall()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;
    .locals 1

    .line 147
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    move-result-object p0

    return-object p0

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object p0

    return-object p0
.end method

.method public static getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;->getAppList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->child2Default(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;->getAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAppList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;"
        }
    .end annotation

    const-string v0, "child"

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 188
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;->getAppList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->child2Default(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 190
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;->getAppList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertOrUpdate bean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectionDBUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;->insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;->insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertOrUpdate bean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectionDBUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->newBean(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    move-result-object p0

    .line 62
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/ChildCollectionDBUtil;->insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/AdultCollectionDBUtil;->insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    :goto_0
    return-void
.end method
