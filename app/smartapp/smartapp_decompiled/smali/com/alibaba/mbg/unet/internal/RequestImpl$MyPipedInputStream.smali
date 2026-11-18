.class public Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;
.super Ljava/io/InputStream;
.source "RequestImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/internal/RequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPipedInputStream"
.end annotation


# static fields
.field protected static final EXPAND_SPAN:I = 0x7d000

.field protected static final MAX_PIPE_SIZE:I = 0x7d000

.field protected static final PIPE_SIZE:I = 0x400


# instance fields
.field protected buffer:[B

.field private exception:Ljava/io/IOException;

.field protected in:I

.field private isClosed:Z

.field isConnected:Z

.field private lastReader:Ljava/lang/Thread;

.field private lastWriter:Ljava/lang/Thread;

.field private mIsFirstRead:Z

.field private mMaxBufferSize:I

.field private mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

.field protected out:I

.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;


# direct methods
.method public constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 1

    .line 838
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 p1, -0x1

    .line 804
    iput p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    const/4 p1, 0x0

    .line 825
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->exception:Ljava/io/IOException;

    const v0, 0x7d000

    .line 827
    iput v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mMaxBufferSize:I

    .line 829
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    const/4 p1, 0x1

    .line 831
    iput-boolean p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mIsFirstRead:Z

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;II)V
    .locals 1

    .line 863
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 p1, -0x1

    .line 804
    iput p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    const/4 p1, 0x0

    .line 825
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->exception:Ljava/io/IOException;

    const v0, 0x7d000

    .line 827
    iput v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mMaxBufferSize:I

    .line 829
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    const/4 p1, 0x1

    .line 831
    iput-boolean p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mIsFirstRead:Z

    if-lez p2, :cond_0

    if-lt p3, p2, :cond_0

    .line 867
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    .line 868
    iput p3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mMaxBufferSize:I

    return-void

    .line 865
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pipe size err:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " too small"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 p1, -0x1

    .line 804
    iput p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    const/4 p1, 0x0

    .line 825
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->exception:Ljava/io/IOException;

    const v0, 0x7d000

    .line 827
    iput v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mMaxBufferSize:I

    .line 829
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    const/4 p1, 0x1

    .line 831
    iput-boolean p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mIsFirstRead:Z

    .line 851
    invoke-virtual {p0, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->connect(Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;IILcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;II)V

    .line 884
    invoke-virtual {p0, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->connect(Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;)V

    .line 885
    iput-object p5, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    return-void
.end method

.method private expand(I)V
    .locals 4

    .line 1222
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    array-length v3, v2

    if-gt v1, v3, :cond_0

    return-void

    .line 1227
    :cond_0
    array-length v1, v2

    iget v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mMaxBufferSize:I

    if-le v1, v2, :cond_1

    .line 1228
    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    const p1, 0x7d000

    add-int/2addr v0, p1

    new-array p1, v0, [B

    goto :goto_0

    :cond_1
    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    .line 1230
    new-array p1, v0, [B

    .line 1233
    :goto_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    iget v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1235
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    .line 1236
    iput v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    .line 1237
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 902
    :cond_0
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 900
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 914
    :try_start_0
    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    .line 915
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 929
    invoke-virtual {p1, p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->connect(Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;)V

    return-void
.end method

.method doFirstRead()V
    .locals 2

    .line 1048
    iget-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mIsFirstRead:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1049
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mIsFirstRead:Z

    .line 1050
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    if-eqz v0, :cond_0

    const/16 v1, 0x2800

    .line 1051
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->readNew(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method declared-synchronized done()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1241
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->isClosed:Z

    .line 1242
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized establishConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 939
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->isConnected:Z

    if-nez v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    .line 943
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    :cond_0
    const/4 v0, 0x1

    .line 945
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    monitor-exit p0

    return-void

    .line 940
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markStreamFailed(Ljava/lang/String;)V
    .locals 1

    .line 951
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->exception:Ljava/io/IOException;

    return-void
.end method

.method public declared-synchronized read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 983
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->isConnected:Z

    if-eqz v0, :cond_9

    .line 986
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    if-eqz v0, :cond_8

    .line 991
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_7

    .line 996
    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->doFirstRead()V

    .line 1002
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    .line 1005
    :goto_0
    :try_start_1
    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1007
    iget-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->isClosed:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1008
    monitor-exit p0

    return v2

    :cond_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_2

    .line 1010
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->lastWriter:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1011
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe broken"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-wide/16 v2, 0x3e8

    .line 1015
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    .line 1021
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1022
    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    iget-object v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    array-length v3, v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_4

    .line 1023
    iput v4, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    .line 1030
    :cond_4
    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    iget v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mMaxBufferSize:I

    if-le v1, v3, :cond_5

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    iget v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    if-ne v1, v3, :cond_5

    .line 1033
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    const/16 v3, 0x2800

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->readNew(Ljava/nio/ByteBuffer;)V

    .line 1036
    :cond_5
    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    iget v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    if-ne v1, v3, :cond_6

    .line 1038
    iput v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    .line 1039
    iput v4, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    .line 1043
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1044
    monitor-exit p0

    return v0

    .line 1018
    :catch_0
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MyPipedInputStream read InterruptedException."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_7
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 987
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "InputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1081
    monitor-exit p0

    return v0

    .line 1084
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->isConnected:Z

    if-eqz v1, :cond_10

    .line 1088
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    if-eqz v1, :cond_f

    .line 1093
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_e

    .line 1099
    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->doFirstRead()V

    .line 1106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    .line 1109
    :goto_0
    :try_start_1
    iget v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 1111
    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->exception:Ljava/io/IOException;

    if-nez v2, :cond_4

    .line 1115
    iget-boolean v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->isClosed:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 1116
    monitor-exit p0

    return v3

    :cond_1
    add-int/lit8 v2, v1, -0x1

    if-gtz v1, :cond_3

    .line 1118
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->lastWriter:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1119
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Pipe broken"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1122
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-wide/16 v3, 0x3e8

    .line 1123
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    move v1, v2

    goto :goto_0

    .line 1112
    :cond_4
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->exception:Ljava/io/IOException;

    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1133
    :cond_5
    :try_start_3
    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    iget v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    if-lt v1, v2, :cond_9

    .line 1134
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_6

    goto :goto_2

    :cond_6
    move v1, p3

    .line 1136
    :goto_2
    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    iget v4, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    invoke-static {v2, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1138
    iget v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    .line 1139
    iget v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    iget-object v4, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    array-length v4, v4

    if-ne v2, v4, :cond_7

    .line 1140
    iput v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    .line 1142
    :cond_7
    iget v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    iget v4, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    if-ne v2, v4, :cond_8

    .line 1144
    iput v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    .line 1145
    iput v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    :cond_8
    add-int/2addr v1, v0

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    if-ge v1, p3, :cond_d

    .line 1151
    iget v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    if-eq v2, v3, :cond_d

    .line 1152
    iget v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    iget v4, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    sub-int/2addr v2, v4

    sub-int/2addr p3, v1

    if-ge p3, v2, :cond_a

    goto :goto_4

    :cond_a
    move p3, v2

    .line 1156
    :goto_4
    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    iget v4, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    add-int/2addr p2, v1

    invoke-static {v2, v4, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1157
    iget p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    .line 1163
    iget p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    iget p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mMaxBufferSize:I

    if-le p1, p2, :cond_b

    iget p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    iget p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    if-ne p1, p2, :cond_b

    .line 1166
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    const/16 p2, 0x2800

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->readNew(Ljava/nio/ByteBuffer;)V

    .line 1169
    :cond_b
    iget p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    iget p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    if-ne p1, p2, :cond_c

    .line 1171
    iput v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    .line 1172
    iput v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    :cond_c
    add-int/2addr v1, p3

    .line 1177
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1179
    monitor-exit p0

    return v1

    .line 1126
    :catch_0
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Pipe broken throwInterruptedIoException"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1096
    :cond_e
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->exception:Ljava/io/IOException;

    throw p1

    .line 1089
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "InputStream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1085
    :cond_10
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not connected"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method protected declared-synchronized receive([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1183
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->isClosed:Z

    if-nez v0, :cond_8

    .line 1187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->lastWriter:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->out:I

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    if-ne v0, v1, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->lastReader:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1191
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Pipe broken"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1193
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-wide/16 v0, 0x3e8

    .line 1194
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1199
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    if-eqz v0, :cond_7

    .line 1202
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 1203
    iput v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    .line 1205
    :cond_3
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->lastReader:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 1206
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Pipe broken"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1209
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_6

    .line 1210
    invoke-direct {p0, p3}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->expand(I)V

    .line 1213
    :cond_6
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->buffer:[B

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1214
    iget p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    .line 1217
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1218
    monitor-exit p0

    return-void

    .line 1200
    :cond_7
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Pipe is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1197
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "pipeinputstream receive interrupt"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1184
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Pipe is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized shouldDoNormalRead()Z
    .locals 2

    monitor-enter p0

    .line 957
    :try_start_0
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->in:I

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->mMaxBufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 958
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 960
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
