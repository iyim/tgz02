.class Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytesBuffer"
.end annotation


# static fields
.field private static final MAX_RECYCLED:I = 0x2

.field private static final RECYCLER_LOCK:Ljava/lang/Object;

.field private static sFirstRecycledEvent:Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

.field private static sRecycledCount:I


# instance fields
.field buf:[B

.field private mNextRecycledEvent:Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->RECYCLER_LOCK:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 50
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->buf:[B

    return-void
.end method

.method public static obtain()Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;
    .locals 3

    .line 55
    sget-object v0, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->RECYCLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->sFirstRecycledEvent:Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->sFirstRecycledEvent:Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

    .line 58
    iget-object v2, v1, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->mNextRecycledEvent:Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

    sput-object v2, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->sFirstRecycledEvent:Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

    const/4 v2, 0x0

    .line 59
    iput-object v2, v1, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->mNextRecycledEvent:Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

    .line 60
    sget v2, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->sRecycledCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->sRecycledCount:I

    .line 61
    monitor-exit v0

    return-object v1

    .line 63
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    new-instance v0, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

    invoke-direct {v0}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 63
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private reset()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .line 72
    sget-object v0, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->RECYCLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    sget v1, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->sRecycledCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->reset()V

    .line 75
    sget v1, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->sRecycledCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->sRecycledCount:I

    .line 77
    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->sFirstRecycledEvent:Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->sFirstRecycledEvent:Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

    iput-object v1, p0, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->mNextRecycledEvent:Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

    .line 80
    :cond_0
    sput-object p0, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->sFirstRecycledEvent:Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

    .line 82
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
