.class Lanet/channel/strategy/StrategyInstance;
.super Ljava/lang/Object;
.source "StrategyInstance.java"

# interfaces
.implements Lanet/channel/strategy/IStrategyInstance;
.implements Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.StrategyCenter"


# instance fields
.field private defaultStrategyFilter:Lanet/channel/strategy/IStrategyFilter;

.field holder:Lanet/channel/strategy/StrategyInfoHolder;

.field isInitialized:Z

.field lastPersistentTime:J

.field listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lanet/channel/strategy/IStrategyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyInstance;->isInitialized:Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lanet/channel/strategy/StrategyInstance;->lastPersistentTime:J

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInstance;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 39
    new-instance v0, Lanet/channel/strategy/StrategyInstance$1;

    invoke-direct {v0, p0}, Lanet/channel/strategy/StrategyInstance$1;-><init>(Lanet/channel/strategy/StrategyInstance;)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInstance;->defaultStrategyFilter:Lanet/channel/strategy/IStrategyFilter;

    return-void
.end method

.method static synthetic access$000(Lanet/channel/strategy/StrategyInstance;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInstance;->checkHolderIsNull()Z

    move-result p0

    return p0
.end method

.method private checkHolderIsNull()Z
    .locals 5

    .line 270
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 271
    new-array v3, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Lanet/channel/strategy/StrategyInstance;->isInitialized:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "StrategyCenter not initialized"

    const-string v4, "isInitialized"

    invoke-static {v1, v0, v4, v3}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public forceRefreshStrategy(Ljava/lang/String;)V
    .locals 5

    .line 214
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInstance;->checkHolderIsNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 218
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "host"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v3, "awcn.StrategyCenter"

    const-string v4, "force refresh strategy"

    invoke-static {v3, v4, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lanet/channel/strategy/StrategyTable;->sendAmdcRequest(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCNameByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 129
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInstance;->checkHolderIsNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->getCnameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .line 245
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInstance;->checkHolderIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    iget-object v0, v0, Lanet/channel/strategy/StrategyTable;->clientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->defaultStrategyFilter:Lanet/channel/strategy/IStrategyFilter;

    invoke-virtual {p0, p1, v0}, Lanet/channel/strategy/StrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;Lanet/channel/strategy/IStrategyFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getConnStrategyListByHost(Ljava/lang/String;Lanet/channel/strategy/IStrategyFilter;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/IStrategyFilter;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lanet/channel/strategy/StrategyInstance;->checkHolderIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 175
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->getCnameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    .line 180
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->queryByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->localDnsStrategyTable:Lanet/channel/strategy/LocalDnsStrategyTable;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/LocalDnsStrategyTable;->queryByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 185
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    const-string/jumbo v3, "result"

    const/4 v4, 0x3

    const-string v5, "host"

    const/4 v6, 0x0

    const-string v7, "getConnStrategyListByHost"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_a

    if-nez p2, :cond_3

    goto :goto_3

    .line 190
    :cond_3
    invoke-static {}, Lanet/channel/AwcnConfig;->isIpv6Enable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lanet/channel/AwcnConfig;->isIpv6BlackListEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyInfoHolder;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v1

    invoke-static {}, Lanet/channel/AwcnConfig;->getIpv6BlackListTtl()J

    move-result-wide v10

    invoke-virtual {v1, p1, v10, v11}, Lanet/channel/strategy/StrategyTable;->isHostInIpv6BlackList(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x1

    .line 194
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    .line 195
    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 196
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lanet/channel/strategy/IConnStrategy;

    .line 197
    invoke-interface {p2, v11}, Lanet/channel/strategy/IStrategyFilter;->accept(Lanet/channel/strategy/IConnStrategy;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 198
    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    :cond_7
    if-eqz v1, :cond_6

    .line 202
    invoke-interface {v11}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 203
    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    .line 207
    :cond_8
    invoke-static {v9}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 208
    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v8

    aput-object v3, p2, v9

    aput-object v0, p2, v2

    invoke-static {v7, v6, v5, p2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-object v0

    .line 186
    :cond_a
    :goto_3
    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v8

    aput-object v3, p2, v9

    aput-object v0, p2, v2

    invoke-static {v7, v6, v5, p2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 172
    :cond_b
    :goto_4
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public getFormalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string/jumbo v0, "raw"

    .line 143
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "awcn.StrategyCenter"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 145
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "URL"

    aput-object v1, v0, v2

    aput-object p1, v0, v5

    const-string/jumbo p1, "url is invalid."

    invoke-static {v4, p1, v6, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    .line 149
    :cond_0
    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v7

    .line 151
    :try_start_0
    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lanet/channel/strategy/StrategyInstance;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 152
    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    const-string v9, "//"

    .line 153
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v1, v9}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 156
    :cond_1
    invoke-static {v5}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    const/4 v8, 0x4

    .line 157
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v2

    const/16 v9, 0x80

    invoke-static {p1, v9}, Lanet/channel/util/StringUtils;->simplifyString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v5

    const-string/jumbo v10, "ret"

    aput-object v10, v8, v3

    const/4 v10, 0x3

    invoke-static {v7, v9}, Lanet/channel/util/StringUtils;->simplifyString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4, v1, v6, v8}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 161
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p1, v3, v5

    const-string p1, "getFormalizeUrl failed"

    invoke-static {v4, p1, v6, v1, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v7
.end method

.method public getSchemeByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, v0}, Lanet/channel/strategy/StrategyInstance;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 107
    :cond_0
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInstance;->checkHolderIsNull()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 111
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->strategyConfig:Lanet/channel/strategy/StrategyConfig;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyConfig;->getSafeAislesByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_3

    .line 117
    invoke-static {}, Lanet/channel/strategy/SchemeGuesser;->getInstance()Lanet/channel/strategy/SchemeGuesser;

    move-result-object p2

    invoke-virtual {p2, p1}, Lanet/channel/strategy/SchemeGuesser;->guessScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, "http"

    :cond_3
    const/4 v0, 0x4

    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "host"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    const-string/jumbo v2, "scheme"

    aput-object v2, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "awcn.StrategyCenter"

    const-string v2, "getSchemeByHost"

    invoke-static {p1, v2, v1, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public getUnitByHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 238
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInstance;->checkHolderIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 241
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->strategyConfig:Lanet/channel/strategy/StrategyConfig;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyConfig;->getUnitByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized initialize(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lanet/channel/strategy/StrategyInstance;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "awcn.StrategyCenter"

    const-string v3, "StrategyCenter initialize started."

    .line 59
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {p1}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->setContext(Landroid/content/Context;)V

    .line 61
    invoke-static {p1}, Lanet/channel/strategy/StrategySerializeHelper;->initialize(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object p1

    invoke-virtual {p1, p0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->addListener(Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;)V

    .line 64
    invoke-static {}, Lanet/channel/strategy/StrategyInfoHolder;->newInstance()Lanet/channel/strategy/StrategyInfoHolder;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lanet/channel/strategy/StrategyInstance;->isInitialized:Z

    const-string p1, "awcn.StrategyCenter"

    const-string v2, "StrategyCenter initialize finished."

    .line 66
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, v1, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "awcn.StrategyCenter"

    const-string v3, "StrategyCenter initialize failed."

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .locals 3

    .line 253
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInstance;->checkHolderIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 258
    instance-of v0, p2, Lanet/channel/strategy/IPConnStrategy;

    if-eqz v0, :cond_2

    .line 259
    move-object v0, p2

    nop

    nop

    .line 260
    iget v1, v0, Lanet/channel/strategy/IPConnStrategy;->ipSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 261
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->localDnsStrategyTable:Lanet/channel/strategy/LocalDnsStrategyTable;

    invoke-virtual {v0, p1, p2, p3}, Lanet/channel/strategy/LocalDnsStrategyTable;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    goto :goto_0

    .line 262
    :cond_1
    iget v0, v0, Lanet/channel/strategy/IPConnStrategy;->ipSource:I

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lanet/channel/strategy/StrategyTable;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    .locals 7

    .line 279
    iget v0, p1, Lanet/channel/strategy/dispatch/DispatchEvent;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 280
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "awcn.StrategyCenter"

    const-string/jumbo v4, "receive amdc event"

    invoke-static {v3, v4, v2, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object p1, p1, Lanet/channel/strategy/dispatch/DispatchEvent;->extraObject:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lanet/channel/strategy/StrategyResultParser;->parse(Lorg/json/JSONObject;)Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/StrategyInfoHolder;->update(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V

    .line 286
    invoke-virtual {p0}, Lanet/channel/strategy/StrategyInstance;->saveData()V

    .line 287
    iget-object v1, p0, Lanet/channel/strategy/StrategyInstance;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/IStrategyListener;

    .line 289
    :try_start_0
    invoke-interface {v4, p1}, Lanet/channel/strategy/IStrategyListener;->onStrategyUpdated(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 291
    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "onStrategyUpdated failed"

    invoke-static {v3, v6, v2, v4, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerListener(Lanet/channel/strategy/IStrategyListener;)V
    .locals 4

    const/4 v0, 0x2

    .line 224
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "listener"

    aput-object v2, v0, v1

    iget-object v1, p0, Lanet/channel/strategy/StrategyInstance;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "awcn.StrategyCenter"

    const-string/jumbo v2, "registerListener"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized saveData()V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "awcn.StrategyCenter"

    const-string/jumbo v1, "saveData"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 301
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 303
    iget-wide v2, p0, Lanet/channel/strategy/StrategyInstance;->lastPersistentTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 304
    iput-wide v0, p0, Lanet/channel/strategy/StrategyInstance;->lastPersistentTime:J

    .line 306
    new-instance v0, Lanet/channel/strategy/StrategyInstance$2;

    invoke-direct {v0, p0}, Lanet/channel/strategy/StrategyInstance$2;-><init>(Lanet/channel/strategy/StrategyInstance;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lanet/channel/strategy/utils/AmdcThreadPoolExecutor;->scheduleTask(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchEnv()V
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/StrategySerializeHelper;->clearStrategyFolder()V

    .line 74
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->switchENV()V

    .line 75
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->clear()V

    .line 77
    invoke-static {}, Lanet/channel/strategy/StrategyInfoHolder;->newInstance()Lanet/channel/strategy/StrategyInfoHolder;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterListener(Lanet/channel/strategy/IStrategyListener;)V
    .locals 4

    const/4 v0, 0x2

    .line 232
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "listener"

    aput-object v2, v0, v1

    iget-object v1, p0, Lanet/channel/strategy/StrategyInstance;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "awcn.StrategyCenter"

    const-string/jumbo v2, "unregisterListener"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lanet/channel/strategy/StrategyInstance;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
