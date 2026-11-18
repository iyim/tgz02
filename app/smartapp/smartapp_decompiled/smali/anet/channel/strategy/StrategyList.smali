.class Lanet/channel/strategy/StrategyList;
.super Ljava/lang/Object;
.source "StrategyList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyList$Predicate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.StrategyList"

.field private static final serialVersionUID:J = -0x394cf2f7e98f646L


# instance fields
.field private containsStaticIp:Z

.field private transient defaultComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private historyItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lanet/channel/strategy/ConnHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private ipStrategyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    .line 27
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyList;->containsStaticIp:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    .line 27
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyList;->containsStaticIp:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    .line 36
    iput-object p1, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lanet/channel/strategy/StrategyList;)Ljava/util/Map;
    .locals 0

    .line 22
    iget-object p0, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    return-object p0
.end method

.method private static find(Ljava/util/Collection;Lanet/channel/strategy/StrategyList$Predicate;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lanet/channel/strategy/StrategyList$Predicate<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 219
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 220
    invoke-interface {p1, v3}, Lanet/channel/strategy/StrategyList$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-ne v1, p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method private getDefaultComparator()Ljava/util/Comparator;
    .locals 1

    .line 189
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lanet/channel/strategy/StrategyList$2;

    invoke-direct {v0, p0}, Lanet/channel/strategy/StrategyList$2;-><init>(Lanet/channel/strategy/StrategyList;)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    .line 209
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private handleUpdate(Ljava/lang/String;ILanet/channel/strategy/StrategyResultParser$Aisles;)V
    .locals 3

    .line 130
    invoke-static {p3}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/StrategyResultParser$Aisles;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    new-instance v2, Lanet/channel/strategy/StrategyList$1;

    invoke-direct {v2, p0, p3, p1, v0}, Lanet/channel/strategy/StrategyList$1;-><init>(Lanet/channel/strategy/StrategyList;Lanet/channel/strategy/StrategyResultParser$Aisles;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V

    invoke-static {v1, v2}, Lanet/channel/strategy/StrategyList;->find(Ljava/util/Collection;Lanet/channel/strategy/StrategyList$Predicate;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 140
    iget-object p1, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/IPConnStrategy;

    .line 141
    iget v0, p3, Lanet/channel/strategy/StrategyResultParser$Aisles;->cto:I

    iput v0, p1, Lanet/channel/strategy/IPConnStrategy;->cto:I

    .line 142
    iget v0, p3, Lanet/channel/strategy/StrategyResultParser$Aisles;->rto:I

    iput v0, p1, Lanet/channel/strategy/IPConnStrategy;->rto:I

    .line 143
    iget p3, p3, Lanet/channel/strategy/StrategyResultParser$Aisles;->heartbeat:I

    iput p3, p1, Lanet/channel/strategy/IPConnStrategy;->heartbeat:I

    .line 144
    iput p2, p1, Lanet/channel/strategy/IPConnStrategy;->ipType:I

    .line 145
    iput v1, p1, Lanet/channel/strategy/IPConnStrategy;->ipSource:I

    .line 146
    iput-boolean v1, p1, Lanet/channel/strategy/IPConnStrategy;->isToRemove:Z

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {p1, p3}, Lanet/channel/strategy/IPConnStrategy;->create(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Aisles;)Lanet/channel/strategy/IPConnStrategy;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 150
    iput p2, p1, Lanet/channel/strategy/IPConnStrategy;->ipType:I

    .line 151
    iput v1, p1, Lanet/channel/strategy/IPConnStrategy;->ipSource:I

    .line 152
    iget-object p2, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 153
    iget-object p2, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Lanet/channel/strategy/ConnHistoryItem;

    invoke-direct {v0}, Lanet/channel/strategy/ConnHistoryItem;-><init>()V

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    iget-object p2, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public checkInit()V
    .locals 4

    .line 40
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    .line 43
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    .line 48
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/ConnHistoryItem;

    invoke-virtual {v1}, Lanet/channel/strategy/ConnHistoryItem;->isExpire()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    .line 57
    iget-object v2, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 58
    iget-object v2, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lanet/channel/strategy/ConnHistoryItem;

    invoke-direct {v3}, Lanet/channel/strategy/ConnHistoryItem;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 62
    :cond_5
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-direct {p0}, Lanet/channel/strategy/StrategyList;->getDefaultComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public getStrategyList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/IPConnStrategy;

    .line 76
    iget-object v4, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {v3}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/ConnHistoryItem;

    if-eqz v4, :cond_1

    .line 77
    invoke-virtual {v4}, Lanet/channel/strategy/ConnHistoryItem;->shouldBan()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 78
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "strategy"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "awcn.StrategyList"

    const-string/jumbo v5, "strategy ban!"

    invoke-static {v3, v5, v1, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 83
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 85
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 87
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_4
    return-object v2
.end method

.method public notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .locals 2

    .line 180
    instance-of v0, p1, Lanet/channel/strategy/IPConnStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 182
    nop

    nop

    .line 183
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/ConnHistoryItem;

    iget-boolean p2, p2, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    invoke-virtual {p1, p2}, Lanet/channel/strategy/ConnHistoryItem;->update(Z)V

    .line 184
    iget-object p1, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    iget-object p2, p0, Lanet/channel/strategy/StrategyList;->defaultComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public shouldRefresh()Z
    .locals 8

    .line 166
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/IPConnStrategy;

    .line 167
    iget-object v6, p0, Lanet/channel/strategy/StrategyList;->historyItemMap:Ljava/util/Map;

    invoke-virtual {v4}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/strategy/ConnHistoryItem;

    invoke-virtual {v6}, Lanet/channel/strategy/ConnHistoryItem;->latestFail()Z

    move-result v6

    if-nez v6, :cond_0

    .line 170
    iget v3, v4, Lanet/channel/strategy/IPConnStrategy;->ipType:I

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 176
    :cond_2
    iget-boolean v0, p0, Lanet/channel/strategy/StrategyList;->containsStaticIp:Z

    if-eqz v0, :cond_3

    if-nez v2, :cond_5

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lanet/channel/strategy/StrategyResultParser$DnsInfo;)V
    .locals 6

    .line 91
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    .line 92
    iput-boolean v2, v1, Lanet/channel/strategy/IPConnStrategy;->isToRemove:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    :goto_1
    iget-object v3, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->aisleses:[Lanet/channel/strategy/StrategyResultParser$Aisles;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    const/4 v3, 0x0

    .line 96
    :goto_2
    iget-object v4, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->ips:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 97
    iget-object v4, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->ips:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->aisleses:[Lanet/channel/strategy/StrategyResultParser$Aisles;

    aget-object v5, v5, v1

    invoke-direct {p0, v4, v2, v5}, Lanet/channel/strategy/StrategyList;->handleUpdate(Ljava/lang/String;ILanet/channel/strategy/StrategyResultParser$Aisles;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 99
    :cond_1
    iget-object v3, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->sips:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 100
    iput-boolean v2, p0, Lanet/channel/strategy/StrategyList;->containsStaticIp:Z

    const/4 v3, 0x0

    .line 101
    :goto_3
    iget-object v4, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->sips:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 102
    iget-object v4, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->sips:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->aisleses:[Lanet/channel/strategy/StrategyResultParser$Aisles;

    aget-object v5, v5, v1

    invoke-direct {p0, v4, v0, v5}, Lanet/channel/strategy/StrategyList;->handleUpdate(Ljava/lang/String;ILanet/channel/strategy/StrategyResultParser$Aisles;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 105
    :cond_2
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyList;->containsStaticIp:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_4
    iget-object v1, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    if-eqz v1, :cond_6

    .line 110
    :goto_4
    iget-object v1, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 111
    iget-object v1, p1, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    aget-object v1, v1, v0

    .line 112
    iget-object v3, v1, Lanet/channel/strategy/StrategyResultParser$Strategy;->ip:Ljava/lang/String;

    iget-object v4, v1, Lanet/channel/strategy/StrategyResultParser$Strategy;->ip:Ljava/lang/String;

    invoke-static {v4}, Lanet/channel/strategy/utils/Utils;->checkHostValidAndNotIp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, -0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x1

    :goto_5
    iget-object v1, v1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    invoke-direct {p0, v3, v4, v1}, Lanet/channel/strategy/StrategyList;->handleUpdate(Ljava/lang/String;ILanet/channel/strategy/StrategyResultParser$Aisles;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 119
    :cond_6
    iget-object p1, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 120
    :cond_7
    :goto_6
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 121
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    iget-boolean v0, v0, Lanet/channel/strategy/IPConnStrategy;->isToRemove:Z

    if-eqz v0, :cond_7

    .line 122
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_6

    .line 126
    :cond_8
    iget-object p1, p0, Lanet/channel/strategy/StrategyList;->ipStrategyList:Ljava/util/List;

    invoke-direct {p0}, Lanet/channel/strategy/StrategyList;->getDefaultComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
