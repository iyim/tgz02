.class public Lcom/taobao/android/zcache_monitor/ZMonitor;
.super Ljava/lang/Object;
.source "ZMonitor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static instance:Lcom/taobao/android/zcache_monitor/ZMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/android/zcache_monitor/ZMonitor;
    .locals 2

    .line 13
    sget-object v0, Lcom/taobao/android/zcache_monitor/ZMonitor;->instance:Lcom/taobao/android/zcache_monitor/ZMonitor;

    if-nez v0, :cond_1

    .line 14
    const-class v0, Lcom/taobao/android/zcache_monitor/ZMonitor;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/taobao/android/zcache_monitor/ZMonitor;->instance:Lcom/taobao/android/zcache_monitor/ZMonitor;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/taobao/android/zcache_monitor/ZMonitor;

    invoke-direct {v1}, Lcom/taobao/android/zcache_monitor/ZMonitor;-><init>()V

    sput-object v1, Lcom/taobao/android/zcache_monitor/ZMonitor;->instance:Lcom/taobao/android/zcache_monitor/ZMonitor;

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/android/zcache_monitor/ZMonitor;->instance:Lcom/taobao/android/zcache_monitor/ZMonitor;

    return-object v0
.end method


# virtual methods
.method public commitStat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public init()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
