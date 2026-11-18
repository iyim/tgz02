.class public Lcom/alibaba/genie/waft/gcs/rpc/GenieServiceLoader;
.super Ljava/lang/Object;
.source "GenieServiceLoader.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieServiceLoader"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkUserUnlockedState(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "user"

    .line 108
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public static load(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Lcom/alibaba/genie/waft/gcs/rpc/GenieServiceLoader;->load(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 6
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    const-string v0, "load:  targetClazzName = "

    .line 37
    invoke-static {}, Lcom/taobao/aranger/ARanger;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/genie/waft/gcs/rpc/GenieServiceLoader;->checkUserUnlockedState(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "GenieServiceLoader"

    if-nez v1, :cond_0

    const-string p0, "load: IServiceCollector is null. reason: userUnlocked"

    .line 39
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 44
    :cond_0
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->isConnect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->connect()V

    .line 48
    :cond_1
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->get()Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "load: IServiceCollector is null"

    .line 50
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 54
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 58
    :try_start_0
    invoke-interface {v1, v4}, Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;->find(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    move-result-object v1
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_3

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " serviceMetadata is nul"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 73
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    .line 74
    invoke-virtual {v1}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->getPkg()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-virtual {v1}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->getHostProvider()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, " , clazz = "

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    .line 83
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->getServiceName()Ljava/lang/String;

    move-result-object p1

    new-array v1, v5, [Landroid/util/Pair;

    .line 82
    invoke-static {v0, p1, p0, v1}, Lcom/taobao/aranger/ARanger;->createSingleton(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load: createSingleton() error. targetComponentName + "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->getServiceName()Ljava/lang/String;

    move-result-object p1

    new-array v1, v5, [Landroid/util/Pair;

    .line 92
    invoke-static {v0, p1, p0, v1}, Lcom/taobao/aranger/ARanger;->create(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 95
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load: create() error. targetComponentName + "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :catch_2
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " serviceMetadata is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method
