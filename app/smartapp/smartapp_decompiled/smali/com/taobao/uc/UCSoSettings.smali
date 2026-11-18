.class public Lcom/taobao/uc/UCSoSettings;
.super Ljava/lang/Object;
.source "UCSoSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static instance:Lcom/taobao/uc/UCSoSettings;


# instance fields
.field public UC_CORE_THICK:Ljava/lang/String;

.field public UC_CORE_TYPE:Ljava/lang/String;

.field public UC_CORE_URL_32:Ljava/lang/String;

.field public UC_CORE_URL_64:Ljava/lang/String;

.field public UC_CORE_URL_DEBUG_32:Ljava/lang/String;

.field public UC_CORE_URL_DEBUG_64:Ljava/lang/String;

.field public UC_CORE_URL_DEBUG_X86:Ljava/lang/String;

.field public UC_DEBUGGABLE:Ljava/lang/String;

.field public UC_PLAYER_URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "thin"

    .line 15
    iput-object v0, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_TYPE:Ljava/lang/String;

    const-string v0, "false"

    .line 16
    iput-object v0, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_THICK:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/taobao/uc/UCSoSettings;->UC_DEBUGGABLE:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/taobao/uc/UCSoSettings;
    .locals 2

    .line 23
    sget-object v0, Lcom/taobao/uc/UCSoSettings;->instance:Lcom/taobao/uc/UCSoSettings;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/taobao/uc/UCSoSettings;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/taobao/uc/UCSoSettings;->instance:Lcom/taobao/uc/UCSoSettings;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/taobao/uc/UCSoSettings;

    invoke-direct {v1}, Lcom/taobao/uc/UCSoSettings;-><init>()V

    sput-object v1, Lcom/taobao/uc/UCSoSettings;->instance:Lcom/taobao/uc/UCSoSettings;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/uc/UCSoSettings;->instance:Lcom/taobao/uc/UCSoSettings;

    return-object v0
.end method


# virtual methods
.method public setUCCoreDebug32(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_DEBUG_32:Ljava/lang/String;

    return-object p0
.end method

.method public setUCCoreDebug64(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_DEBUG_64:Ljava/lang/String;

    return-object p0
.end method

.method public setUCCoreRelease32(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_32:Ljava/lang/String;

    return-object p0
.end method

.method public setUCCoreRelease64(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_64:Ljava/lang/String;

    return-object p0
.end method

.method public setUCPlayerUrl(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/taobao/uc/UCSoSettings;->UC_PLAYER_URL:Ljava/lang/String;

    return-object p0
.end method
