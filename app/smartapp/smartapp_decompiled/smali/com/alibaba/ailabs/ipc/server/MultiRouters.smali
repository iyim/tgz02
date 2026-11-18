.class public final Lcom/alibaba/ailabs/ipc/server/MultiRouters;
.super Ljava/lang/Object;
.source "MultiRouters.java"


# static fields
.field private static sMultiRouters:Lcom/alibaba/ailabs/ipc/server/MultiRouters;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMultiProvider:Lcom/alibaba/ailabs/ipc/server/MultiProvider;

.field private final mMultiRouters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/ipc/server/MultiRouter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->mMultiRouters:Ljava/util/Map;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/ipc/server/MultiRouters;
    .locals 2

    .line 47
    sget-object v0, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->sMultiRouters:Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->sMultiRouters:Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->sMultiRouters:Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 54
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->sMultiRouters:Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    return-object p0
.end method

.method public static getInstance(Lcom/alibaba/ailabs/ipc/server/MultiProvider;Landroid/content/Context;)Lcom/alibaba/ailabs/ipc/server/MultiRouters;
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    move-result-object p1

    .line 41
    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->setMultiProvider(Lcom/alibaba/ailabs/ipc/server/MultiProvider;)V

    return-object p1
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMultiProvider()Lcom/alibaba/ailabs/ipc/server/MultiProvider;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->mMultiProvider:Lcom/alibaba/ailabs/ipc/server/MultiProvider;

    return-object v0
.end method

.method public getMultiRouter(Lcom/alibaba/ailabs/ipc/server/MultiProvider;Landroid/net/Uri;)Lcom/alibaba/ailabs/ipc/server/MultiRouter;
    .locals 0

    .line 77
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getMultiRouter(Lcom/alibaba/ailabs/ipc/server/MultiProvider;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/server/MultiRouter;

    move-result-object p1

    return-object p1
.end method

.method public getMultiRouter(Lcom/alibaba/ailabs/ipc/server/MultiProvider;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/server/MultiRouter;
    .locals 1

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->mMultiRouters:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;

    invoke-direct {v0, p1, p0, p2}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;-><init>(Lcom/alibaba/ailabs/ipc/server/MultiProvider;Lcom/alibaba/ailabs/ipc/server/MultiRouters;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->mMultiRouters:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMultiRouter(Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/server/MultiRouter;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->mMultiProvider:Lcom/alibaba/ailabs/ipc/server/MultiProvider;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getMultiRouter(Lcom/alibaba/ailabs/ipc/server/MultiProvider;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/server/MultiRouter;

    move-result-object p1

    return-object p1
.end method

.method public setMultiProvider(Lcom/alibaba/ailabs/ipc/server/MultiProvider;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->mMultiProvider:Lcom/alibaba/ailabs/ipc/server/MultiProvider;

    return-void
.end method
