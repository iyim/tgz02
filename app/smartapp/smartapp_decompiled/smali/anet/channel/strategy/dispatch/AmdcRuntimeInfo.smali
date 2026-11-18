.class public Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;
.super Ljava/lang/Object;
.source "AmdcRuntimeInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.AmdcRuntimeInfo"

.field private static volatile amdcLimitLevel:I

.field private static volatile amdcLimitTime:J

.field public static volatile appChannel:Ljava/lang/String;

.field public static volatile appName:Ljava/lang/String;

.field public static volatile appVersion:Ljava/lang/String;

.field private static volatile context:Landroid/content/Context;

.field private static iSign:Lanet/channel/strategy/dispatch/IAmdcSign;

.field public static volatile latitude:D

.field public static volatile longitude:D

.field private static params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static getAmdcLimitLevel()I
    .locals 5

    .line 48
    sget v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitLevel:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 49
    sput-wide v2, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitTime:J

    const/4 v0, 0x0

    .line 50
    sput v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitLevel:I

    .line 52
    :cond_0
    sget v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitLevel:I

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 61
    sget-object v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->params:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 93
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 95
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->params:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSign()Lanet/channel/strategy/dispatch/IAmdcSign;
    .locals 1

    .line 69
    sget-object v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->iSign:Lanet/channel/strategy/dispatch/IAmdcSign;

    return-object v0
.end method

.method public static setAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    sput-object p0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->appName:Ljava/lang/String;

    .line 80
    sput-object p1, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->appVersion:Ljava/lang/String;

    .line 81
    sput-object p2, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->appChannel:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 57
    sput-object p0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->context:Landroid/content/Context;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->params:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->params:Ljava/util/Map;

    .line 88
    :cond_0
    sget-object v1, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->params:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setSign(Lanet/channel/strategy/dispatch/IAmdcSign;)V
    .locals 0

    .line 65
    sput-object p0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->iSign:Lanet/channel/strategy/dispatch/IAmdcSign;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static updateAmdcLimit(II)V
    .locals 5

    const/4 v0, 0x4

    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "level"

    aput-object v2, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "time"

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "awcn.AmdcRuntimeInfo"

    const-string/jumbo v3, "set amdc limit"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p0, :cond_1

    if-le p0, v2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    sput p0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitLevel:I

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long p0, p1

    const-wide/16 v2, 0x3e8

    mul-long p0, p0, v2

    add-long/2addr v0, p0

    sput-wide v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitTime:J

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static updateLocation(DD)V
    .locals 0

    .line 74
    sput-wide p0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->latitude:D

    .line 75
    sput-wide p2, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->longitude:D

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
