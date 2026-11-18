.class public Lcom/alibaba/appmonitor/sample/AMConifg;
.super Lcom/alibaba/analytics/core/db/Entity;
.source "AMConifg.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected module:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "module"
    .end annotation
.end field

.field protected monitorPoint:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "mp"
    .end annotation
.end field

.field protected offline:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "offline"
    .end annotation
.end field

.field private relationMap:Ljava/util/HashMap;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/appmonitor/sample/AMConifg;",
            ">;"
        }
    .end annotation
.end field

.field private sampling:I
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "cp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkSelfOffline()Z
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->offline:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isOffline(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {p0, v0}, Lcom/alibaba/appmonitor/sample/AMConifg;->isContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/sample/AMConifg;

    invoke-direct {v0, p1}, Lcom/alibaba/appmonitor/sample/AMConifg;->isOffline(Ljava/util/ArrayList;)Z

    move-result p1

    return p1

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/appmonitor/sample/AMConifg;->checkSelfOffline()Z

    move-result p1

    return p1

    .line 119
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/appmonitor/sample/AMConifg;->checkSelfOffline()Z

    move-result p1

    return p1
.end method

.method private sampling(ILjava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v0}, Lcom/alibaba/appmonitor/sample/AMConifg;->isContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/sample/AMConifg;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/appmonitor/sample/AMConifg;->sampling(ILjava/util/ArrayList;)Z

    move-result p1

    return p1

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/appmonitor/sample/AMConifg;->checkSelfSampling(I)Z

    move-result p1

    return p1

    .line 39
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/appmonitor/sample/AMConifg;->checkSelfSampling(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Lcom/alibaba/appmonitor/sample/AMConifg;)V
    .locals 5

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/appmonitor/sample/AMConifg;->isContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/sample/AMConifg;

    if-eqz v0, :cond_1

    .line 60
    iget-object v1, v0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p2, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    const-string v0, "config object order errror"

    const/4 v1, 0x2

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "config:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected checkSelfSampling(I)Z
    .locals 6

    const/16 v0, 0x8

    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "module"

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->module:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v4, "monitorPoint"

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->monitorPoint:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const/4 v2, 0x4

    const-string/jumbo v4, "samplingSeed"

    aput-object v4, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v0, v4

    const-string/jumbo v2, "sampling"

    const/4 v4, 0x6

    aput-object v2, v0, v4

    iget v4, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->sampling:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v0, v5

    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->sampling:I

    if-ge p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 139
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public enableOffline()V
    .locals 1

    const-string v0, "1"

    .line 134
    iput-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->offline:Ljava/lang/String;

    return-void
.end method

.method public enableOffline(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 145
    iput-object p1, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->offline:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->offline:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->module:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getNext(Ljava/lang/String;)Lcom/alibaba/appmonitor/sample/AMConifg;
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/appmonitor/sample/AMConifg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getOrBulidNext(Ljava/lang/String;)Lcom/alibaba/appmonitor/sample/AMConifg;
    .locals 3

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/appmonitor/sample/AMConifg;->getNext(Ljava/lang/String;)Lcom/alibaba/appmonitor/sample/AMConifg;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 84
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/sample/AMConifg;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/appmonitor/sample/AMConifg;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    iput-object p1, v1, Lcom/alibaba/appmonitor/sample/AMConifg;->module:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v1

    .line 87
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 91
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized isContains(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 72
    monitor-exit p0

    return p1

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isOffline(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-direct {p0, v0}, Lcom/alibaba/appmonitor/sample/AMConifg;->isOffline(Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method public isSampled(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 31
    new-instance p4, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-direct {p0, p1, p4}, Lcom/alibaba/appmonitor/sample/AMConifg;->sampling(ILjava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method public setSampling(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/alibaba/appmonitor/sample/AMConifg;->sampling:I

    return-void
.end method
