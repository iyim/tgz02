.class public final Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;
.super Ljava/lang/Object;
.source "AVFSCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fileMemMaxSize:J

.field private limitSize:J

.field private sqliteMemMaxSize:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 70
    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->limitSize:J

    .line 72
    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->fileMemMaxSize:J

    .line 74
    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->sqliteMemMaxSize:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$1;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->limitSize:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->fileMemMaxSize:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->sqliteMemMaxSize:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;
    .locals 2

    .line 95
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;-><init>(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$1;)V

    return-object v0
.end method

.method public fileMemMaxSize(J)Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;
    .locals 0

    .line 85
    iput-wide p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->fileMemMaxSize:J

    return-object p0
.end method

.method public limitSize(J)Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->limitSize:J

    return-object p0
.end method

.method public sqliteMemMaxSize(J)Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;
    .locals 0

    .line 90
    iput-wide p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->sqliteMemMaxSize:J

    return-object p0
.end method
