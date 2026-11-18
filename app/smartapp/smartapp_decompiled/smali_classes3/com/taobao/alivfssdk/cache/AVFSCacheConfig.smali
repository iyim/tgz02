.class public Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;
.super Ljava/lang/Object;
.source "AVFSCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;
    }
.end annotation


# instance fields
.field public fileMemMaxSize:J

.field public limitSize:Ljava/lang/Long;

.field public sqliteMemMaxSize:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    .line 18
    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    .line 23
    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->sqliteMemMaxSize:J

    return-void
.end method

.method private constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    .line 18
    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    .line 23
    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->sqliteMemMaxSize:J

    .line 29
    invoke-static {p1}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->access$000(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    .line 30
    invoke-static {p1}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->access$100(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    .line 31
    invoke-static {p1}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;->access$200(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->sqliteMemMaxSize:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;-><init>(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static newBuilder()Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;
    .locals 2

    .line 54
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$Builder;-><init>(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig$1;)V

    return-object v0
.end method

.method public static newDefaultConfig()Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;
    .locals 3

    .line 46
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    invoke-direct {v0}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;-><init>()V

    const-wide/32 v1, 0xa00000

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    .line 48
    iput-wide v1, v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    .line 49
    iput-wide v1, v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->sqliteMemMaxSize:J

    return-object v0
.end method


# virtual methods
.method public setConfig(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;)V
    .locals 5

    .line 58
    iget-object v0, p1, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 59
    iget-object v0, p1, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    iput-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    .line 61
    :cond_0
    iget-wide v0, p1, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 62
    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    .line 64
    :cond_1
    iget-wide v0, p1, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->sqliteMemMaxSize:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    .line 65
    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->sqliteMemMaxSize:J

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "AVFSCacheConfig{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "limitSize="

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->bytesIntoHumanReadable(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", fileMemMaxSize="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    invoke-static {v1, v2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->bytesIntoHumanReadable(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", sqliteMemMaxSize="

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->sqliteMemMaxSize:J

    invoke-static {v1, v2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->bytesIntoHumanReadable(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
