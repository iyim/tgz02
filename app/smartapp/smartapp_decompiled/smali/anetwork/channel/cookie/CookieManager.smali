.class public Lanetwork/channel/cookie/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "anet.CookieManager"

.field private static isCookieValid:Z = true

.field private static volatile isSetup:Z = false

.field private static webkitCookMgr:Landroid/webkit/CookieManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkSetup()Z
    .locals 1

    .line 48
    sget-boolean v0, Lanetwork/channel/cookie/CookieManager;->isSetup:Z

    if-nez v0, :cond_0

    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/cookie/CookieManager;->setup(Landroid/content/Context;)V

    .line 51
    :cond_0
    sget-boolean v0, Lanetwork/channel/cookie/CookieManager;->isSetup:Z

    return v0
.end method

.method public static declared-synchronized getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-class v0, Lanetwork/channel/cookie/CookieManager;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->checkSetup()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-boolean v1, Lanetwork/channel/cookie/CookieManager;->isCookieValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    :try_start_1
    sget-object v1, Lanetwork/channel/cookie/CookieManager;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "anet.CookieManager"

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cookie failed. url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v2, v1, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :goto_0
    monitor-exit v0

    return-object v2

    .line 91
    :cond_1
    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-class v0, Lanetwork/channel/cookie/CookieManager;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->checkSetup()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lanetwork/channel/cookie/CookieManager;->isCookieValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    :try_start_1
    sget-object v1, Lanetwork/channel/cookie/CookieManager;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 61
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0

    .line 63
    :cond_1
    sget-object v1, Lanetwork/channel/cookie/CookieManager;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "anet.CookieManager"

    const-string/jumbo v3, "set cookie failed."

    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 66
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    const/4 p0, 0x2

    const-string v6, "cookies"

    aput-object v6, v5, p0

    const/4 p0, 0x3

    aput-object p1, v5, p0

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :goto_0
    monitor-exit v0

    return-void

    .line 56
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setCookie(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "Set-Cookie"

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Set-Cookie2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    invoke-static {p0, v2}, Lanetwork/channel/cookie/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 85
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    const-string v3, "\nheaders"

    aput-object v3, v2, p0

    const/4 p0, 0x3

    aput-object p1, v2, p0

    const-string p0, "anet.CookieManager"

    const-string/jumbo p1, "set cookie failed"

    invoke-static {p0, p1, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static declared-synchronized setup(Landroid/content/Context;)V
    .locals 10

    const-class v0, Lanetwork/channel/cookie/CookieManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-boolean v1, Lanetwork/channel/cookie/CookieManager;->isSetup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 26
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 30
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 31
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_1

    .line 32
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 34
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    sput-object p0, Lanetwork/channel/cookie/CookieManager;->webkitCookMgr:Landroid/webkit/CookieManager;

    .line 35
    sget-object p0, Lanetwork/channel/cookie/CookieManager;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {p0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 36
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, v7, :cond_2

    .line 37
    sget-object p0, Lanetwork/channel/cookie/CookieManager;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    :cond_2
    const-string p0, "anet.CookieManager"

    const-string v6, "CookieManager setup."

    const/4 v7, 0x2

    .line 39
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "cost"

    aput-object v8, v7, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {p0, v6, v1, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    :try_start_2
    sput-boolean v3, Lanetwork/channel/cookie/CookieManager;->isCookieValid:Z

    const-string v4, "anet.CookieManager"

    const-string v5, "Cookie Manager setup failed!!!"

    .line 42
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v1, p0, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 44
    :goto_0
    sput-boolean v2, Lanetwork/channel/cookie/CookieManager;->isSetup:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
