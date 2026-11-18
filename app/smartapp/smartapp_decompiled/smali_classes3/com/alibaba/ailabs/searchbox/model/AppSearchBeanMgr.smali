.class public Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;
.super Ljava/lang/Object;
.source "AppSearchBeanMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSearchBeanMgr-l"

.field private static final ourInstance:Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;


# instance fields
.field private searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    invoke-direct {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->ourInstance:Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkData(Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;)V
    .locals 7

    const-string v0, "AppSearchBeanMgr-l"

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "NATIVE"

    if-eqz v1, :cond_4

    .line 46
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 47
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    .line 49
    invoke-virtual {v4}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getStsType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 50
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local Skip searchItem, bean = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 54
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not Local Skip searchItem, bean = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after checkData getSearchAppList is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getRecommendAppList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    .line 66
    invoke-virtual {v3}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getStsType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 67
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local Skip recommendItem, bean = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 71
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not Local Skip recommendItem, bean = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after checkData getRecommendAppList is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkData Exception -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_2
    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;
    .locals 1

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->ourInstance:Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    return-object v0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    return-void
.end method

.method public getRecommendStartPos()I
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    return-object v0
.end method

.method public getSearchItemCount()I
    .locals 3

    const/4 v0, 0x0

    .line 116
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 117
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 118
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 120
    :cond_0
    div-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    :goto_0
    add-int/2addr v1, v0

    return v1

    :catch_0
    move-exception v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public isSearchDataNull()Z
    .locals 4

    const/4 v0, 0x0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 102
    :goto_1
    iget-object v3, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getRecommendAppList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getRecommendAppList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public setSearchDataBean(Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->searchDataBean:Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->checkData(Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;)V

    return-void
.end method
