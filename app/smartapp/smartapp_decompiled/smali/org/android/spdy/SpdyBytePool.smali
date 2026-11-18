.class public Lorg/android/spdy/SpdyBytePool;
.super Ljava/lang/Object;
.source "SpdyBytePool.java"


# static fields
.field private static volatile gInstance:Lorg/android/spdy/SpdyBytePool;

.field private static lock:Ljava/lang/Object;


# instance fields
.field private bucks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Deque<",
            "Lorg/android/spdy/SpdyByteArray;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyBytePool;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lorg/android/spdy/SpdyBytePool;->gInstance:Lorg/android/spdy/SpdyBytePool;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/android/spdy/SpdyBytePool;->bucks:Ljava/util/ArrayList;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/android/spdy/SpdyBytePool;->bucks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 25
    iget-object v2, p0, Lorg/android/spdy/SpdyBytePool;->bucks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lorg/android/spdy/SpdyBytePool;
    .locals 2

    .line 30
    sget-object v0, Lorg/android/spdy/SpdyBytePool;->gInstance:Lorg/android/spdy/SpdyBytePool;

    if-nez v0, :cond_1

    .line 31
    sget-object v0, Lorg/android/spdy/SpdyBytePool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lorg/android/spdy/SpdyBytePool;->gInstance:Lorg/android/spdy/SpdyBytePool;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lorg/android/spdy/SpdyBytePool;

    invoke-direct {v1}, Lorg/android/spdy/SpdyBytePool;-><init>()V

    sput-object v1, Lorg/android/spdy/SpdyBytePool;->gInstance:Lorg/android/spdy/SpdyBytePool;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lorg/android/spdy/SpdyBytePool;->gInstance:Lorg/android/spdy/SpdyBytePool;

    return-object v0
.end method


# virtual methods
.method getSpdyByteArray(I)Lorg/android/spdy/SpdyByteArray;
    .locals 3

    add-int/lit16 p1, p1, 0xfff

    and-int/lit16 p1, p1, -0x1000

    if-lez p1, :cond_0

    shr-int/lit8 v0, p1, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    sget-object v1, Lorg/android/spdy/SpdyBytePool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v2, p0, Lorg/android/spdy/SpdyBytePool;->bucks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 50
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/spdy/SpdyByteArray;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 52
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Lorg/android/spdy/SpdyByteArray;

    invoke-direct {v0, p1}, Lorg/android/spdy/SpdyByteArray;-><init>(I)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    .line 52
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method recycle(Lorg/android/spdy/SpdyByteArray;)V
    .locals 4

    .line 61
    iget v0, p1, Lorg/android/spdy/SpdyByteArray;->length:I

    if-lez v0, :cond_0

    iget v0, p1, Lorg/android/spdy/SpdyByteArray;->length:I

    shr-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    sget-object v1, Lorg/android/spdy/SpdyBytePool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v2, p0, Lorg/android/spdy/SpdyBytePool;->bucks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Deque;

    if-nez v2, :cond_1

    .line 65
    new-instance v2, Ljava/util/ArrayDeque;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 66
    iget-object v3, p0, Lorg/android/spdy/SpdyBytePool;->bucks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 69
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
