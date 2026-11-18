.class public Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;
.super Ljava/io/OutputStream;
.source "RequestImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/internal/RequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPipedOutputStream"
.end annotation


# instance fields
.field private target:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;


# direct methods
.method public constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 693
    invoke-virtual {p0, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->connect(Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->target:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->done()V

    const/4 v0, 0x0

    .line 709
    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->target:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    :cond_0
    return-void
.end method

.method public connect(Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 726
    monitor-enter p1

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->target:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    if-nez v0, :cond_1

    .line 730
    iget-boolean v0, p1, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->isConnected:Z

    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->establishConnection()V

    .line 734
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->target:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    .line 735
    monitor-exit p1

    return-void

    .line 731
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 735
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 724
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "stream == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->target:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    if-nez v0, :cond_0

    return-void

    .line 752
    :cond_0
    monitor-enter v0

    .line 753
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 754
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 769
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Pipe not impl"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->target:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->receive([BII)V

    return-void

    .line 762
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Pipe not connected"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
