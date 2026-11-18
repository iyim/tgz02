.class public Lanetwork/channel/unified/DegradeTask;
.super Ljava/lang/Object;
.source "DegradeTask.java"

# interfaces
.implements Lanetwork/channel/unified/IUnifiedTask;


# static fields
.field private static final TAG:Ljava/lang/String; = "anet.DegradeTask"


# instance fields
.field volatile cancelable:Lanet/channel/request/Cancelable;

.field private contentLength:I

.field private dataChunkIndex:I

.field private volatile isCanceled:Z

.field private rc:Lanetwork/channel/unified/RequestContext;

.field private request:Lanet/channel/request/Request;


# direct methods
.method public constructor <init>(Lanetwork/channel/unified/RequestContext;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lanetwork/channel/unified/DegradeTask;->isCanceled:Z

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lanetwork/channel/unified/DegradeTask;->cancelable:Lanet/channel/request/Cancelable;

    .line 31
    iput v0, p0, Lanetwork/channel/unified/DegradeTask;->contentLength:I

    .line 32
    iput v0, p0, Lanetwork/channel/unified/DegradeTask;->dataChunkIndex:I

    .line 36
    iput-object p1, p0, Lanetwork/channel/unified/DegradeTask;->rc:Lanetwork/channel/unified/RequestContext;

    .line 37
    iget-object p1, p1, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->getAwcnRequest()Lanet/channel/request/Request;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/unified/DegradeTask;->request:Lanet/channel/request/Request;

    return-void
.end method

.method static synthetic access$000(Lanetwork/channel/unified/DegradeTask;)Lanetwork/channel/unified/RequestContext;
    .locals 0

    .line 26
    iget-object p0, p0, Lanetwork/channel/unified/DegradeTask;->rc:Lanetwork/channel/unified/RequestContext;

    return-object p0
.end method

.method static synthetic access$100(Lanetwork/channel/unified/DegradeTask;)I
    .locals 0

    .line 26
    iget p0, p0, Lanetwork/channel/unified/DegradeTask;->contentLength:I

    return p0
.end method

.method static synthetic access$102(Lanetwork/channel/unified/DegradeTask;I)I
    .locals 0

    .line 26
    iput p1, p0, Lanetwork/channel/unified/DegradeTask;->contentLength:I

    return p1
.end method

.method static synthetic access$200(Lanetwork/channel/unified/DegradeTask;)I
    .locals 0

    .line 26
    iget p0, p0, Lanetwork/channel/unified/DegradeTask;->dataChunkIndex:I

    return p0
.end method

.method static synthetic access$208(Lanetwork/channel/unified/DegradeTask;)I
    .locals 2

    .line 26
    iget v0, p0, Lanetwork/channel/unified/DegradeTask;->dataChunkIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lanetwork/channel/unified/DegradeTask;->dataChunkIndex:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lanetwork/channel/unified/DegradeTask;->isCanceled:Z

    .line 43
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask;->cancelable:Lanet/channel/request/Cancelable;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask;->cancelable:Lanet/channel/request/Cancelable;

    invoke-interface {v0}, Lanet/channel/request/Cancelable;->cancel()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public run()V
    .locals 5

    .line 50
    iget-boolean v0, p0, Lanetwork/channel/unified/DegradeTask;->isCanceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->isRequestCookieEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->getUrlString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/cookie/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    iget-object v1, p0, Lanetwork/channel/unified/DegradeTask;->request:Lanet/channel/request/Request;

    invoke-virtual {v1}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lanetwork/channel/unified/DegradeTask;->request:Lanet/channel/request/Request;

    invoke-virtual {v2}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cookie"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "; "

    .line 59
    invoke-static {v2, v4, v0}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_1
    invoke-virtual {v1, v3, v0}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 62
    invoke-virtual {v1}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/unified/DegradeTask;->request:Lanet/channel/request/Request;

    .line 67
    :cond_2
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask;->request:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    const/4 v1, 0x2

    iput v1, v0, Lanet/channel/statist/RequestStatistic;->degraded:I

    .line 69
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask;->request:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lanetwork/channel/unified/DegradeTask;->request:Lanet/channel/request/Request;

    iget-object v3, v3, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v3, v3, Lanet/channel/statist/RequestStatistic;->reqStart:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    .line 70
    iget-object v0, p0, Lanetwork/channel/unified/DegradeTask;->request:Lanet/channel/request/Request;

    new-instance v1, Lanetwork/channel/unified/DegradeTask$1;

    invoke-direct {v1, p0}, Lanetwork/channel/unified/DegradeTask$1;-><init>(Lanetwork/channel/unified/DegradeTask;)V

    invoke-static {v0, v1}, Lanet/channel/session/HttpConnector;->connect(Lanet/channel/request/Request;Lanet/channel/RequestCb;)V

    return-void
.end method
