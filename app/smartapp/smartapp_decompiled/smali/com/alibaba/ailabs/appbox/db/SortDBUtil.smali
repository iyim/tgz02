.class public Lcom/alibaba/ailabs/appbox/db/SortDBUtil;
.super Ljava/lang/Object;
.source "SortDBUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SortDBUtil"


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
    .locals 1

    .line 143
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/ChildSortDBUtil;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/AdultSortDBUtil;->delete(Ljava/lang/String;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getMaxOrMinInSort(Z)I
    .locals 1

    .line 94
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/ChildSortDBUtil;->getMaxOrMinInSort(Z)I

    move-result p0

    return p0

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/AdultSortDBUtil;->getMaxOrMinInSort(Z)I

    move-result p0

    return p0
.end method

.method public static insert2Last(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 58
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->getMaxOrMinInSort(Z)I

    move-result v1

    add-int/2addr v1, v0

    .line 57
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->insertSort2DB(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SortDBUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static insertSort2DB(Ljava/lang/String;I)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/appbox/db/ChildSortDBUtil;->insertSort2DB(Ljava/lang/String;I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/appbox/db/AdultSortDBUtil;->insertSort2DB(Ljava/lang/String;I)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static insertSort2DB(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 22
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 26
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    .line 27
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/db/ChildSortDBUtil;->insertSort2DB(Ljava/lang/String;I)V

    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/db/AdultSortDBUtil;->insertSort2DB(Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public static isAlreadySort(Ljava/lang/String;)Z
    .locals 1

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/ChildSortDBUtil;->isAlreadySort(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 131
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/AdultSortDBUtil;->isAlreadySort(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
