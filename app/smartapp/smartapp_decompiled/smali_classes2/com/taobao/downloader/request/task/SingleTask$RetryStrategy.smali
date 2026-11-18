.class public Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;
.super Ljava/lang/Object;
.source "SingleTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/downloader/request/task/SingleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RetryStrategy"
.end annotation


# instance fields
.field private connectError:I

.field private readStreamError:I

.field final synthetic this$0:Lcom/taobao/downloader/request/task/SingleTask;


# direct methods
.method public constructor <init>(Lcom/taobao/downloader/request/task/SingleTask;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;->this$0:Lcom/taobao/downloader/request/task/SingleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRetry()Z
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;->this$0:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget v0, v0, Lcom/taobao/downloader/request/Param;->retryTimes:I

    iget v1, p0, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;->connectError:I

    iget v2, p0, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;->readStreamError:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public increaseError(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 112
    iget p1, p0, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;->connectError:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;->connectError:I

    goto :goto_0

    .line 114
    :cond_0
    iget p1, p0, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;->readStreamError:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;->readStreamError:I

    :goto_0
    return-void
.end method
