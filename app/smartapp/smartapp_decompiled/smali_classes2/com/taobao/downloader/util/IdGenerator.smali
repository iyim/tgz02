.class public Lcom/taobao/downloader/util/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# static fields
.field private static id:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized nextId()I
    .locals 3

    const-class v0, Lcom/taobao/downloader/util/IdGenerator;

    monitor-enter v0

    .line 12
    :try_start_0
    sget v1, Lcom/taobao/downloader/util/IdGenerator;->id:I

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 13
    sput v1, Lcom/taobao/downloader/util/IdGenerator;->id:I

    .line 15
    :cond_0
    sget v1, Lcom/taobao/downloader/util/IdGenerator;->id:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/taobao/downloader/util/IdGenerator;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
