.class public Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;
.super Ljava/lang/Object;
.source "ServiceCollectorHolder.java"


# static fields
.field private static final REGISTRY_PKG:Ljava/lang/String; = "com.alibaba.ailabs.genie.smartapp"

.field private static final REGISTRY_PROVIDER_INSTALLER:Ljava/lang/String; = "com.alibaba.genie.waft.gcs.registry.GenieRegistryInstaller"

.field private static final REGISTRY_SERVICE_COLLECTOR:Ljava/lang/String; = "com.alibaba.genie.waft.gcs.registry.ServiceCollector"

.field private static final TAG:Ljava/lang/String; = "ServiceCollectorHolder"

.field private static final ourComponentName:Landroid/content/ComponentName;

.field private static sServiceCollector:Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    const-string v2, "com.alibaba.genie.waft.gcs.registry.GenieRegistryInstaller"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->ourComponentName:Landroid/content/ComponentName;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static connect()V
    .locals 4

    .line 33
    :try_start_0
    sget-object v0, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->ourComponentName:Landroid/content/ComponentName;

    const-string v1, "com.alibaba.genie.waft.gcs.registry.ServiceCollector"

    const-class v2, Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/aranger/ARanger;->createSingleton(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;

    sput-object v0, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->sServiceCollector:Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ServiceCollectorHolder"

    const-string v2, "static initializer: ServiceCollector create"

    .line 37
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static get()Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;
    .locals 1

    .line 46
    sget-object v0, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->sServiceCollector:Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;

    return-object v0
.end method

.method public static isConnect()Z
    .locals 1

    .line 42
    sget-object v0, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->ourComponentName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/taobao/aranger/ARanger;->isConnect(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/genie/waft/gcs/rpc/ServiceCollectorHolder;->sServiceCollector:Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
