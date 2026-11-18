.class final Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;
.super Lcom/alibaba/mbg/unet/Request$Callback;
.source "RequestImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/internal/RequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SyncRequestCallback"
.end annotation


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x2800


# instance fields
.field private mInputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

.field private mOutputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;

.field private mReceiveChannel:Ljava/nio/channels/WritableByteChannel;

.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

.field totalrecv:I


# direct methods
.method private constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 1

    .line 1245
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p0}, Lcom/alibaba/mbg/unet/Request$Callback;-><init>()V

    .line 1248
    new-instance p1, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;

    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p1, v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mOutputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;

    const/4 p1, 0x0

    .line 1249
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mInputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    .line 1250
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mOutputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mReceiveChannel:Ljava/nio/channels/WritableByteChannel;

    const/4 p1, 0x0

    .line 1252
    iput p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->totalrecv:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/internal/RequestImpl$1;)V
    .locals 0

    .line 1245
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    return-void
.end method

.method private generateResponseStream(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V
    .locals 7

    if-eqz p2, :cond_1

    .line 1364
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mInputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    if-nez v0, :cond_0

    .line 1366
    :try_start_0
    new-instance v0, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    iget-object v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mOutputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;

    const/16 v4, 0x2800

    const v5, 0x7d000

    move-object v6, p1

    check-cast v6, Lcom/alibaba/mbg/unet/internal/RequestImpl;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;IILcom/alibaba/mbg/unet/internal/RequestImpl;)V

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mInputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    :catch_0
    :cond_0
    check-cast p2, Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    .line 1375
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mInputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    invoke-virtual {p2, p1}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->setInputStream(Ljava/io/InputStream;)V

    :cond_1
    return-void
.end method

.method private markResponseStreamFailed(Lcom/alibaba/mbg/unet/RequestException;)V
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1702(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/RequestException;)Lcom/alibaba/mbg/unet/RequestException;

    .line 1384
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mInputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    if-eqz v0, :cond_0

    .line 1385
    invoke-virtual {p1}, Lcom/alibaba/mbg/unet/RequestException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->markStreamFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCanceled(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V
    .locals 0

    .line 1352
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->generateResponseStream(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V

    .line 1354
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mOutputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;

    invoke-virtual {p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :catch_0
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1600(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    return-void
.end method

.method public onFailed(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;Lcom/alibaba/mbg/unet/RequestException;)V
    .locals 0

    .line 1339
    invoke-direct {p0, p3}, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->markResponseStreamFailed(Lcom/alibaba/mbg/unet/RequestException;)V

    .line 1340
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->generateResponseStream(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V

    .line 1342
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mOutputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;

    invoke-virtual {p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    :catch_0
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1600(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    return-void
.end method

.method public onReadCompleted(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1290
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->generateResponseStream(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V

    .line 1292
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1294
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1296
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->totalrecv:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->totalrecv:I

    if-lez p2, :cond_0

    .line 1300
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mReceiveChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p2, p3}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p2, 0x0

    .line 1309
    :goto_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1600(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    .line 1312
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-lez p2, :cond_1

    .line 1313
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mInputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;->shouldDoNormalRead()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1316
    invoke-interface {p1, p3}, Lcom/alibaba/mbg/unet/Request;->readNew(Ljava/nio/ByteBuffer;)V

    :cond_1
    return-void
.end method

.method public onRedirectReceived(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;Ljava/lang/String;)V
    .locals 2

    .line 1258
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1500(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    check-cast p2, Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    invoke-static {v0, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$402(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/internal/ResponseImpl;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    .line 1260
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$400(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->setLastLocation(Ljava/lang/String;)V

    .line 1263
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$400(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->getUrlChain()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string p3, ""

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  |  "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 1269
    :cond_0
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1600(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    .line 1270
    invoke-interface {p1}, Lcom/alibaba/mbg/unet/Request;->cancel()V

    goto :goto_1

    .line 1272
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/mbg/unet/Request;->followRedirect()V

    :goto_1
    return-void
.end method

.method public onResponseStarted(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V
    .locals 0

    .line 1280
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->generateResponseStream(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V

    .line 1281
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1600(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    return-void
.end method

.method public onSucceeded(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V
    .locals 0

    .line 1325
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->generateResponseStream(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V

    .line 1327
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->mOutputStream:Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;

    invoke-virtual {p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :catch_0
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1600(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    return-void
.end method
