.class public Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;
.super Ljava/lang/Object;
.source "NoOpDiskTrimmableRegistry.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/common/disk/DiskTrimmableRegistry;


# static fields
.field private static sInstance:Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;
    .locals 2

    const-class v0, Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;->sInstance:Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;

    invoke-direct {v1}, Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;-><init>()V

    sput-object v1, Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;->sInstance:Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;

    .line 25
    :cond_0
    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;->sInstance:Lcom/taobao/alivfssdk/fresco/common/disk/NoOpDiskTrimmableRegistry;
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
.method public registerDiskTrimmable(Lcom/taobao/alivfssdk/fresco/common/disk/DiskTrimmable;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public unregisterDiskTrimmable(Lcom/taobao/alivfssdk/fresco/common/disk/DiskTrimmable;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
