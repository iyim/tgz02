.class public Lmtopsdk/network/impl/NetworkListenerAdapter;
.super Ljava/lang/Object;
.source "NetworkListenerAdapter.java"

# interfaces
.implements Lanetwork/channel/NetworkCallBack$ResponseCodeListener;
.implements Lanetwork/channel/NetworkCallBack$InputStreamListener;
.implements Lanetwork/channel/NetworkCallBack$FinishListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkListenerAdapter"


# instance fields
.field bos:Ljava/io/ByteArrayOutputStream;

.field call:Lmtopsdk/network/Call;

.field finishEvent:Lanetwork/channel/NetworkEvent$FinishEvent;

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field isNeedCallFinish:Z

.field private volatile isStreamReceived:Z

.field networkCallback:Lmtopsdk/network/NetworkCallback;

.field resLength:I

.field final seqNo:Ljava/lang/String;

.field statusCode:I


# direct methods
.method public constructor <init>(Lmtopsdk/network/Call;Lmtopsdk/network/NetworkCallback;Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->isStreamReceived:Z

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->finishEvent:Lanetwork/channel/NetworkEvent$FinishEvent;

    .line 41
    iput-boolean v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->isNeedCallFinish:Z

    .line 42
    iput-object v1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->bos:Ljava/io/ByteArrayOutputStream;

    .line 47
    iput v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->resLength:I

    .line 54
    iput-object p1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->call:Lmtopsdk/network/Call;

    .line 55
    iput-object p2, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->networkCallback:Lmtopsdk/network/NetworkCallback;

    .line 56
    iput-object p3, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->seqNo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method callFinish(Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->seqNo:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 141
    :goto_0
    new-instance v1, Lmtopsdk/network/impl/NetworkListenerAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lmtopsdk/network/impl/NetworkListenerAdapter$2;-><init>(Lmtopsdk/network/impl/NetworkListenerAdapter;Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submitCallbackTask(ILjava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method onFinishTask(Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V
    .locals 3

    .line 164
    iget-object p2, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->networkCallback:Lmtopsdk/network/NetworkCallback;

    if-nez p2, :cond_0

    .line 165
    iget-object p1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->seqNo:Ljava/lang/String;

    const-string p2, "mtopsdk.NetworkListenerAdapter"

    const-string v0, "[onFinishTask]networkCallback is null"

    invoke-static {p2, p1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 170
    iget-object v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->bos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 174
    :cond_1
    new-instance v0, Lmtopsdk/network/impl/NetworkListenerAdapter$3;

    invoke-direct {v0, p0, p2}, Lmtopsdk/network/impl/NetworkListenerAdapter$3;-><init>(Lmtopsdk/network/impl/NetworkListenerAdapter;[B)V

    .line 196
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object p2

    invoke-static {p2}, Lmtopsdk/network/util/ANetworkConverter;->convertNetworkStats(Lanetwork/channel/statist/StatisticData;)Lmtopsdk/network/domain/NetworkStats;

    move-result-object p2

    .line 197
    new-instance v1, Lmtopsdk/network/domain/Response$Builder;

    invoke-direct {v1}, Lmtopsdk/network/domain/Response$Builder;-><init>()V

    iget-object v2, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->call:Lmtopsdk/network/Call;

    invoke-interface {v2}, Lmtopsdk/network/Call;->request()Lmtopsdk/network/domain/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmtopsdk/network/domain/Response$Builder;->request(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object v1

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getHttpCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lmtopsdk/network/domain/Response$Builder;->code(I)Lmtopsdk/network/domain/Response$Builder;

    move-result-object v1

    .line 198
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmtopsdk/network/domain/Response$Builder;->message(Ljava/lang/String;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    iget-object v1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->headers:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lmtopsdk/network/domain/Response$Builder;->headers(Ljava/util/Map;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmtopsdk/network/domain/Response$Builder;->body(Lmtopsdk/network/domain/ResponseBody;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmtopsdk/network/domain/Response$Builder;->stat(Lmtopsdk/network/domain/NetworkStats;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmtopsdk/network/domain/Response$Builder;->build()Lmtopsdk/network/domain/Response;

    move-result-object p1

    .line 201
    iget-object p2, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->networkCallback:Lmtopsdk/network/NetworkCallback;

    iget-object v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->call:Lmtopsdk/network/Call;

    invoke-interface {p2, v0, p1}, Lmtopsdk/network/NetworkCallback;->onResponse(Lmtopsdk/network/Call;Lmtopsdk/network/domain/Response;)V

    return-void
.end method

.method public onFinished(Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V
    .locals 1

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iput-object p1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->finishEvent:Lanetwork/channel/NetworkEvent$FinishEvent;

    .line 82
    iget-boolean v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->isNeedCallFinish:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->isStreamReceived:Z

    if-nez v0, :cond_1

    .line 83
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmtopsdk/network/impl/NetworkListenerAdapter;->callFinish(Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V

    .line 85
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInputStreamGet(Lanetwork/channel/aidl/ParcelableInputStream;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->isStreamReceived:Z

    .line 92
    new-instance v0, Lmtopsdk/network/impl/NetworkListenerAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lmtopsdk/network/impl/NetworkListenerAdapter$1;-><init>(Lmtopsdk/network/impl/NetworkListenerAdapter;Lanetwork/channel/aidl/ParcelableInputStream;Ljava/lang/Object;)V

    invoke-static {v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submitRequestTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 61
    iput p1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->statusCode:I

    .line 62
    iput-object p2, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->headers:Ljava/util/Map;

    .line 65
    :try_start_0
    iget-object p1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->headers:Ljava/util/Map;

    const-string p2, "content-length"

    invoke-static {p1, p2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 67
    iget-object p1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->headers:Ljava/util/Map;

    const-string p2, "x-bin-length"

    invoke-static {p1, p2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    :cond_0
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->resLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    iget-object p1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter;->seqNo:Ljava/lang/String;

    const-string p2, "mtopsdk.NetworkListenerAdapter"

    const-string p3, "[onResponseCode]parse Response HeaderField ContentLength error "

    invoke-static {p2, p1, p3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
