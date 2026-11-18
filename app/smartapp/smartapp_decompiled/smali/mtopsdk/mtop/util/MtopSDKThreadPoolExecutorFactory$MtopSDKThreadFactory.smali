.class Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;
.super Ljava/lang/Object;
.source "MtopSDKThreadPoolExecutorFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtopSDKThreadFactory"
.end annotation


# instance fields
.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field priority:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 33
    iput v0, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->priority:I

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->type:Ljava/lang/String;

    .line 38
    iput p1, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->priority:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 33
    iput v0, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->priority:I

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->type:Ljava/lang/String;

    .line 43
    iput p1, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->priority:I

    .line 44
    iput-object p2, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "MTOPSDK "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->type:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "DefaultPool "

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "Thread:"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    new-instance v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory$1;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory$1;-><init>(Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v1
.end method
