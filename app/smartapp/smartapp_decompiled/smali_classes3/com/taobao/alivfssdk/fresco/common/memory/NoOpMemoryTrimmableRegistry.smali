.class public Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;
.super Ljava/lang/Object;
.source "NoOpMemoryTrimmableRegistry.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimmableRegistry;


# static fields
.field private static sInstance:Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;


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

.method public static declared-synchronized getInstance()Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;
    .locals 2

    const-class v0, Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;->sInstance:Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;

    invoke-direct {v1}, Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;-><init>()V

    sput-object v1, Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;->sInstance:Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;

    .line 25
    :cond_0
    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;->sInstance:Lcom/taobao/alivfssdk/fresco/common/memory/NoOpMemoryTrimmableRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public registerMemoryTrimmable(Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimmable;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public unregisterMemoryTrimmable(Lcom/taobao/alivfssdk/fresco/common/memory/MemoryTrimmable;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
