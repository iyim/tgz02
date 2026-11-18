.class public Landroid/taobao/windvane/WVPerformanceManager;
.super Ljava/lang/Object;
.source "WVPerformanceManager.java"


# static fields
.field private static instance:Landroid/taobao/windvane/WVPerformanceManager;


# instance fields
.field private config:Landroid/taobao/windvane/WVPerformanceConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Landroid/taobao/windvane/WVPerformanceManager;
    .locals 2

    .line 10
    sget-object v0, Landroid/taobao/windvane/WVPerformanceManager;->instance:Landroid/taobao/windvane/WVPerformanceManager;

    if-nez v0, :cond_1

    .line 11
    const-class v0, Landroid/taobao/windvane/WVPerformanceManager;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/WVPerformanceManager;->instance:Landroid/taobao/windvane/WVPerformanceManager;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Landroid/taobao/windvane/WVPerformanceManager;

    invoke-direct {v1}, Landroid/taobao/windvane/WVPerformanceManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/WVPerformanceManager;->instance:Landroid/taobao/windvane/WVPerformanceManager;

    .line 15
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 17
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/WVPerformanceManager;->instance:Landroid/taobao/windvane/WVPerformanceManager;

    return-object v0
.end method


# virtual methods
.method public getConfig()Landroid/taobao/windvane/WVPerformanceConfig;
    .locals 1

    .line 25
    iget-object v0, p0, Landroid/taobao/windvane/WVPerformanceManager;->config:Landroid/taobao/windvane/WVPerformanceConfig;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/taobao/windvane/WVPerformanceConfig;

    invoke-direct {v0}, Landroid/taobao/windvane/WVPerformanceConfig;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/WVPerformanceManager;->config:Landroid/taobao/windvane/WVPerformanceConfig;

    .line 28
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/WVPerformanceManager;->config:Landroid/taobao/windvane/WVPerformanceConfig;

    return-object v0
.end method

.method public setConfig(Landroid/taobao/windvane/WVPerformanceConfig;)V
    .locals 0

    .line 21
    iput-object p1, p0, Landroid/taobao/windvane/WVPerformanceManager;->config:Landroid/taobao/windvane/WVPerformanceConfig;

    return-void
.end method
