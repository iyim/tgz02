.class Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;
.super Ljava/lang/Object;
.source "GenieRPCInitializer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieRPCInitializer"

.field private static volatile sInstance:Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->sLock:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    sget-object v0, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->sInstance:Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;

    if-nez v0, :cond_1

    .line 48
    sget-object v0, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->sInstance:Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->sInstance:Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;

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
    sget-object p0, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->sInstance:Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;

    return-object p0
.end method

.method private handleStartup(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/genie/waft/gcs/rpc/initializer/IGenieServiceStartup;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 110
    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    .line 111
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/waft/gcs/rpc/initializer/IGenieServiceStartup;

    .line 113
    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->mContext:Landroid/content/Context;

    invoke-interface {p1, v2}, Lcom/alibaba/genie/waft/gcs/rpc/initializer/IGenieServiceStartup;->create(Landroid/content/Context;)V

    .line 114
    invoke-interface {p1}, Lcom/alibaba/genie/waft/gcs/rpc/initializer/IGenieServiceStartup;->publish()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 118
    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    monitor-exit v0

    return-object p1

    .line 120
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method discover()V
    .locals 7

    .line 60
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/genie/waft/gcs/rpc/GenieServicePublisher;

    .line 61
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 63
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 64
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 65
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/genie/waft/gcs/rpc/R$string;->waft_gcs_startup:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 70
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    .line 72
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 75
    const-class v5, Lcom/alibaba/genie/waft/gcs/rpc/initializer/IGenieServiceStartup;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    invoke-direct {p0, v4}, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->handleStartup(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 86
    :cond_3
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->isConnect()Z

    move-result v0

    if-nez v0, :cond_4

    .line 87
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->connect()V

    .line 90
    :cond_4
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->get()Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;

    move-result-object v0

    .line 91
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 92
    new-instance v3, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    iget-object v4, p0, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/genie/waft/gcs/rpc/GenieServicePublisher;

    .line 94
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0, v3}, Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;->collect(Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    const-string v1, "GenieRPCInitializer"

    const-string v2, "discover: "

    .line 102
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method
