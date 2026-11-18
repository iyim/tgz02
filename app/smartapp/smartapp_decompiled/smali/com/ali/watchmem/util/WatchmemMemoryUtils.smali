.class public Lcom/ali/watchmem/util/WatchmemMemoryUtils;
.super Ljava/lang/Object;
.source "WatchmemMemoryUtils.java"


# static fields
.field private static totalMemory:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getTotalMemoryByte()J
    .locals 5

    .line 21
    sget-wide v0, Lcom/ali/watchmem/util/WatchmemMemoryUtils;->totalMemory:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 22
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    .line 24
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 25
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 27
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sput-wide v0, Lcom/ali/watchmem/util/WatchmemMemoryUtils;->totalMemory:J

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x2bc00000

    .line 29
    sput-wide v0, Lcom/ali/watchmem/util/WatchmemMemoryUtils;->totalMemory:J

    .line 33
    :cond_1
    :goto_0
    sget-wide v0, Lcom/ali/watchmem/util/WatchmemMemoryUtils;->totalMemory:J

    return-wide v0
.end method

.method public static getTotalMemoryMB()J
    .locals 4

    .line 37
    invoke-static {}, Lcom/ali/watchmem/util/WatchmemMemoryUtils;->getTotalMemoryByte()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method
