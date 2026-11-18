.class Lanetwork/channel/download/DownloadManager$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTask"
.end annotation


# instance fields
.field private volatile conn:Lanetwork/channel/aidl/Connection;

.field private final filePath:Ljava/lang/String;

.field private final isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lanetwork/channel/download/DownloadManager$DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field final taskId:I

.field final synthetic this$0:Lanetwork/channel/download/DownloadManager;

.field final url:Ljava/net/URL;

.field private useExternalCache:Z


# direct methods
.method constructor <init>(Lanetwork/channel/download/DownloadManager;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lanetwork/channel/download/DownloadManager$DownloadListener;)V
    .locals 2

    .line 156
    iput-object p1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->conn:Lanetwork/channel/aidl/Connection;

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->useExternalCache:Z

    .line 157
    iget-object v0, p1, Lanetwork/channel/download/DownloadManager;->taskIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    .line 158
    iput-object p2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->url:Ljava/net/URL;

    .line 159
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, p2}, Lanetwork/channel/download/DownloadManager$DownloadTask;->parseFileNameForURL(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p4

    .line 162
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 163
    invoke-static {p1, p4}, Lanetwork/channel/download/DownloadManager;->access$100(Lanetwork/channel/download/DownloadManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->filePath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "/"

    .line 165
    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->filePath:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->filePath:Ljava/lang/String;

    :goto_0
    const-string p1, "/data/user"

    .line 171
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "/data/data"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 172
    :cond_3
    iput-boolean v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->useExternalCache:Z

    .line 176
    :cond_4
    :goto_1
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 177
    iget-object p1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private notifyFail(ILjava/lang/String;)V
    .locals 3

    .line 317
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/download/DownloadManager$DownloadListener;

    .line 319
    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-interface {v1, v2, p1, p2}, Lanetwork/channel/download/DownloadManager$DownloadListener;->onFail(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyProgress(JJ)V
    .locals 8

    .line 325
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lanetwork/channel/download/DownloadManager$DownloadListener;

    .line 327
    iget v3, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lanetwork/channel/download/DownloadManager$DownloadListener;->onProgress(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySuccess(Ljava/lang/String;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/download/DownloadManager$DownloadListener;

    .line 311
    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-interface {v1, v2, p1}, Lanetwork/channel/download/DownloadManager$DownloadListener;->onSuccess(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parseContentLength(ILjava/util/Map;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;J)J"
        }
    .end annotation

    const/16 v0, 0xc8

    const-string v1, "Content-Length"

    const-wide/16 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 336
    :try_start_0
    invoke-static {p2, v1}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    :cond_0
    const/16 v0, 0xce

    if-ne p1, v0, :cond_3

    const-string p1, "Content-Range"

    .line 338
    invoke-static {p2, p1}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x2f

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    cmp-long p1, v4, v2

    if-nez p1, :cond_2

    .line 346
    :try_start_1
    invoke-static {p2, v1}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-long v2, p1, p3

    goto :goto_1

    :catch_0
    :cond_2
    move-wide v2, v4

    :catch_1
    :cond_3
    :goto_1
    return-wide v2
.end method

.method private parseFileNameForURL(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    .line 368
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 374
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 377
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private removeRangeHeader(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanetwork/channel/Header;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 357
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 358
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Header;

    invoke-interface {v0}, Lanetwork/channel/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    :cond_1
    return-void
.end method


# virtual methods
.method public attachListener(Lanetwork/channel/download/DownloadManager$DownloadListener;)Z
    .locals 1

    .line 181
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 184
    :cond_0
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public cancel()V
    .locals 2

    .line 189
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, -0x69

    const-string v1, "download canceled."

    .line 190
    invoke-direct {p0, v0, v1}, Lanetwork/channel/download/DownloadManager$DownloadTask;->notifyFail(ILjava/lang/String;)V

    .line 191
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->conn:Lanetwork/channel/aidl/Connection;

    if-eqz v0, :cond_0

    .line 193
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->conn:Lanetwork/channel/aidl/Connection;

    invoke-interface {v0}, Lanetwork/channel/aidl/Connection;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public run()V
    .locals 15

    .line 201
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 209
    :try_start_0
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v3, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->useExternalCache:Z

    invoke-static {v2, v3, v4}, Lanetwork/channel/download/DownloadManager;->access$200(Lanetwork/channel/download/DownloadManager;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    .line 212
    new-instance v4, Lanetwork/channel/entity/RequestImpl;

    iget-object v5, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->url:Ljava/net/URL;

    invoke-direct {v4, v5}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/net/URL;)V

    .line 213
    invoke-virtual {v4, v0}, Lanetwork/channel/entity/RequestImpl;->setRetryTime(I)V

    const/4 v5, 0x1

    .line 214
    invoke-virtual {v4, v5}, Lanetwork/channel/entity/RequestImpl;->setFollowRedirects(Z)V

    if-eqz v3, :cond_1

    const-string v5, "Range"

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lanetwork/channel/entity/RequestImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_1
    new-instance v5, Lanetwork/channel/degrade/DegradableNetwork;

    iget-object v6, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v6, v6, Lanetwork/channel/download/DownloadManager;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-virtual {v5, v4, v1}, Lanetwork/channel/degrade/DegradableNetwork;->getConnection(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/aidl/Connection;

    move-result-object v6

    iput-object v6, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->conn:Lanetwork/channel/aidl/Connection;

    .line 221
    iget-object v6, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->conn:Lanetwork/channel/aidl/Connection;

    invoke-interface {v6}, Lanetwork/channel/aidl/Connection;->getStatusCode()I

    move-result v6

    if-lez v6, :cond_15

    const/16 v7, 0x1a0

    const/16 v8, 0xc8

    if-eq v6, v8, :cond_2

    const/16 v9, 0xce

    if-eq v6, v9, :cond_2

    if-eq v6, v7, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz v3, :cond_5

    if-ne v6, v7, :cond_4

    .line 235
    invoke-virtual {v4}, Lanetwork/channel/entity/RequestImpl;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lanetwork/channel/download/DownloadManager$DownloadTask;->removeRangeHeader(Ljava/util/List;)V

    .line 237
    iget-object v3, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-eqz v3, :cond_3

    .line 302
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v3, v0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 303
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    iget v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 240
    :cond_3
    :try_start_2
    invoke-virtual {v5, v4, v1}, Lanetwork/channel/degrade/DegradableNetwork;->getConnection(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/aidl/Connection;

    move-result-object v3

    iput-object v3, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->conn:Lanetwork/channel/aidl/Connection;

    const/4 v3, 0x0

    :cond_4
    if-ne v6, v8, :cond_5

    const/4 v3, 0x0

    .line 249
    :cond_5
    iget-object v4, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    if-eqz v4, :cond_6

    .line 302
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v4, v0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 303
    :try_start_3
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    iget v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v4

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_6
    const-wide/16 v4, 0x0

    if-nez v3, :cond_7

    .line 255
    :try_start_4
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v1

    goto :goto_0

    .line 257
    :cond_7
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 258
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 259
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 260
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-static {v8}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object v14, v7

    move-object v7, v3

    move-object v3, v14

    .line 263
    :goto_0
    :try_start_6
    iget-object v8, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->conn:Lanetwork/channel/aidl/Connection;

    invoke-interface {v8}, Lanetwork/channel/aidl/Connection;->getConnHeadFields()Ljava/util/Map;

    move-result-object v8

    invoke-direct {p0, v6, v8, v4, v5}, Lanetwork/channel/download/DownloadManager$DownloadTask;->parseContentLength(ILjava/util/Map;J)J

    move-result-wide v8

    .line 266
    iget-object v6, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->conn:Lanetwork/channel/aidl/Connection;

    invoke-interface {v6}, Lanetwork/channel/aidl/Connection;->getInputStream()Lanetwork/channel/aidl/ParcelableInputStream;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-nez v6, :cond_a

    const/16 v2, -0x67

    :try_start_7
    const-string v4, "input stream is null."

    .line 268
    invoke-direct {p0, v2, v4}, Lanetwork/channel/download/DownloadManager$DownloadTask;->notifyFail(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 299
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    if-eqz v7, :cond_8

    .line 300
    :try_start_9
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    :cond_8
    if-eqz v6, :cond_9

    .line 301
    :try_start_a
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 302
    :catch_2
    :cond_9
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 303
    :try_start_b
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1

    :cond_a
    const/16 v10, 0x800

    .line 274
    :try_start_c
    new-array v10, v10, [B

    const/4 v11, 0x0

    .line 275
    :goto_1
    invoke-interface {v6, v10}, Lanetwork/channel/aidl/ParcelableInputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_e

    .line 276
    iget-object v13, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 277
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->conn:Lanetwork/channel/aidl/Connection;

    invoke-interface {v2}, Lanetwork/channel/aidl/Connection;->cancel()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 299
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    :catch_3
    if-eqz v7, :cond_b

    .line 300
    :try_start_e
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    :catch_4
    :cond_b
    if-eqz v6, :cond_c

    .line 301
    :try_start_f
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 302
    :catch_5
    :cond_c
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 303
    :try_start_10
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v1

    :cond_d
    add-int/2addr v11, v12

    .line 281
    :try_start_11
    invoke-virtual {v3, v10, v0, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v12, v11

    add-long/2addr v12, v4

    .line 282
    invoke-direct {p0, v12, v13, v8, v9}, Lanetwork/channel/download/DownloadManager$DownloadTask;->notifyProgress(JJ)V

    goto :goto_1

    .line 284
    :cond_e
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 286
    iget-object v4, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    if-eqz v4, :cond_11

    .line 299
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    :catch_6
    if-eqz v7, :cond_f

    .line 300
    :try_start_13
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    :catch_7
    :cond_f
    if-eqz v6, :cond_10

    .line 301
    :try_start_14
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    .line 302
    :catch_8
    :cond_10
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v4, v0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 303
    :try_start_15
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    iget v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v4

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    throw v0

    .line 289
    :cond_11
    :try_start_16
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 291
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->filePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lanetwork/channel/download/DownloadManager$DownloadTask;->notifySuccess(Ljava/lang/String;)V

    goto :goto_2

    :cond_12
    const/16 v2, -0x6a

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file rename to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lanetwork/channel/download/DownloadManager$DownloadTask;->notifyFail(ILjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 299
    :goto_2
    :try_start_17
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    :catch_9
    if-eqz v7, :cond_13

    .line 300
    :try_start_18
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a

    :catch_a
    :cond_13
    if-eqz v6, :cond_14

    .line 301
    :try_start_19
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b

    .line 302
    :catch_b
    :cond_14
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 303
    :try_start_1a
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v0

    goto/16 :goto_5

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    throw v1

    :catch_c
    move-exception v2

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v6, v1

    goto/16 :goto_6

    :catch_d
    move-exception v2

    move-object v6, v1

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object v6, v1

    move-object v7, v3

    goto/16 :goto_7

    :catch_e
    move-exception v2

    move-object v6, v1

    move-object v7, v3

    move-object v3, v6

    goto :goto_4

    :cond_15
    :goto_3
    const/16 v2, -0x66

    .line 227
    :try_start_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResponseCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lanetwork/channel/download/DownloadManager$DownloadTask;->notifyFail(ILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_f
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    .line 302
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 303
    :try_start_1c
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    throw v1

    :catchall_9
    move-exception v0

    move-object v6, v1

    move-object v7, v6

    goto :goto_7

    :catch_f
    move-exception v2

    move-object v3, v1

    move-object v6, v3

    move-object v7, v6

    :goto_4
    :try_start_1d
    const-string v4, "anet.DownloadManager"

    const-string v5, "file download failed!"

    .line 296
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v1, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/16 v0, -0x68

    .line 297
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lanetwork/channel/download/DownloadManager$DownloadTask;->notifyFail(ILjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    if-eqz v3, :cond_16

    .line 299
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10

    :catch_10
    :cond_16
    if-eqz v7, :cond_17

    .line 300
    :try_start_1f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_11

    :catch_11
    :cond_17
    if-eqz v6, :cond_18

    .line 301
    :try_start_20
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_12

    .line 302
    :catch_12
    :cond_18
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 303
    :try_start_21
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v0

    :goto_5
    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    throw v1

    :catchall_b
    move-exception v0

    :goto_6
    move-object v1, v3

    :goto_7
    if-eqz v1, :cond_19

    .line 299
    :try_start_22
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_13

    :catch_13
    :cond_19
    if-eqz v7, :cond_1a

    .line 300
    :try_start_23
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_14

    :catch_14
    :cond_1a
    if-eqz v6, :cond_1b

    .line 301
    :try_start_24
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_15

    .line 302
    :catch_15
    :cond_1b
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 303
    :try_start_25
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->this$0:Lanetwork/channel/download/DownloadManager;

    iget-object v2, v2, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    iget v3, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method
