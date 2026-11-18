.class Lorg/android/spdy/HTTPHeaderPool;
.super Ljava/lang/Object;
.source "HTTPHeaderPool.java"


# static fields
.field private static instance:Lorg/android/spdy/HTTPHeaderPool;


# instance fields
.field private lruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/android/spdy/HTTPHeaderPool;

    invoke-direct {v0}, Lorg/android/spdy/HTTPHeaderPool;-><init>()V

    sput-object v0, Lorg/android/spdy/HTTPHeaderPool;->instance:Lorg/android/spdy/HTTPHeaderPool;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/HTTPHeaderPool;->lruCache:Landroid/util/LruCache;

    return-void
.end method

.method public static getInstance()Lorg/android/spdy/HTTPHeaderPool;
    .locals 1

    .line 32
    sget-object v0, Lorg/android/spdy/HTTPHeaderPool;->instance:Lorg/android/spdy/HTTPHeaderPool;

    return-object v0
.end method


# virtual methods
.method public GetValueString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 6

    .line 15
    iget-object v0, p0, Lorg/android/spdy/HTTPHeaderPool;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const-string/jumbo v5, "utf-8"

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 27
    :goto_0
    iget-object v1, p0, Lorg/android/spdy/HTTPHeaderPool;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
