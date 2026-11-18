.class Lanet/channel/strategy/dispatch/DispatchCore;
.super Ljava/lang/Object;
.source "DispatchCore.java"


# static fields
.field static final CHECK_SIGN_FAIL:Ljava/lang/String; = "-1003"

.field static final EMPTY_SIGN_ERROR:Ljava/lang/String; = "-1001"

.field static final MAX_RETRY_TIMES:I = 0x3

.field static final NO_RETRY:I = 0x2

.field static final READ_ANSWER_ERROR:Ljava/lang/String; = "-1002"

.field static final REQUEST_EXCEPTION:Ljava/lang/String; = "-1000"

.field static final RESOLVE_ANSWER_FAIL:Ljava/lang/String; = "-1004"

.field static final RETRY_NORMAL:I = 0x1

.field static final SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "awcn.DispatchCore"

.field static hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field static random:Ljava/util/Random;

.field static seq:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lanet/channel/strategy/dispatch/DispatchCore;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lanet/channel/strategy/dispatch/DispatchCore$1;

    invoke-direct {v0}, Lanet/channel/strategy/dispatch/DispatchCore$1;-><init>()V

    sput-object v0, Lanet/channel/strategy/dispatch/DispatchCore;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lanet/channel/strategy/dispatch/DispatchCore;->random:Ljava/util/Random;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static buildRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "https"

    const/4 v2, 0x2

    if-ne p4, v2, :cond_0

    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lanet/channel/strategy/dispatch/DispatchCore;->random:Ljava/util/Random;

    invoke-virtual {p4}, Ljava/util/Random;->nextBoolean()Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p0, "http"

    .line 139
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "://"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    .line 141
    invoke-static {}, Lanet/channel/util/Inet64Util;->isIPv6OnlyNetwork()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lanet/channel/strategy/utils/Utils;->isIPV4Address(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 143
    :try_start_0
    invoke-static {p1}, Lanet/channel/util/Inet64Util;->convertToIPv6ThrowsException(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :catch_0
    :cond_1
    invoke-static {p1}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/16 p4, 0x5b

    .line 150
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-nez p2, :cond_4

    .line 156
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x1bb

    const/16 p2, 0x1bb

    goto :goto_1

    :cond_3
    const/16 p0, 0x50

    const/16 p2, 0x50

    :cond_4
    :goto_1
    const-string p0, ":"

    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 161
    :cond_5
    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p0, "/amdc/mobileDispatch"

    .line 163
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    const-string p1, "appkey"

    .line 166
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "v"

    .line 167
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "deviceId"

    .line 168
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    .line 169
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3f

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "utf-8"

    .line 172
    invoke-static {p0, p1}, Lanet/channel/strategy/utils/Utils;->encodeQueryParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static commitFlow(Ljava/lang/String;JJ)V
    .locals 2

    .line 336
    :try_start_0
    new-instance v0, Lanet/channel/flow/FlowStat;

    invoke-direct {v0}, Lanet/channel/flow/FlowStat;-><init>()V

    const-string v1, "amdc"

    .line 337
    iput-object v1, v0, Lanet/channel/flow/FlowStat;->refer:Ljava/lang/String;

    const-string v1, "http"

    .line 338
    iput-object v1, v0, Lanet/channel/flow/FlowStat;->protocoltype:Ljava/lang/String;

    .line 339
    iput-object p0, v0, Lanet/channel/flow/FlowStat;->req_identifier:Ljava/lang/String;

    .line 340
    iput-wide p1, v0, Lanet/channel/flow/FlowStat;->upstream:J

    .line 341
    iput-wide p3, v0, Lanet/channel/flow/FlowStat;->downstream:J

    .line 342
    invoke-static {}, Lanet/channel/flow/NetworkAnalysis;->getInstance()Lanet/channel/flow/INetworkAnalysis;

    move-result-object p0

    invoke-interface {p0, v0}, Lanet/channel/flow/INetworkAnalysis;->commitFlow(Lanet/channel/flow/FlowStat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 344
    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "awcn.DispatchCore"

    const-string p4, "commit flow info failed!"

    invoke-static {p3, p4, p1, p0, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    .line 317
    :cond_0
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 319
    :try_start_0
    new-instance p4, Lanet/channel/statist/AmdcStatistic;

    invoke-direct {p4}, Lanet/channel/statist/AmdcStatistic;-><init>()V

    .line 320
    iput-object p0, p4, Lanet/channel/statist/AmdcStatistic;->errorCode:Ljava/lang/String;

    .line 321
    iput-object p1, p4, Lanet/channel/statist/AmdcStatistic;->errorMsg:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 323
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lanet/channel/statist/AmdcStatistic;->host:Ljava/lang/String;

    .line 324
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lanet/channel/statist/AmdcStatistic;->url:Ljava/lang/String;

    .line 326
    :cond_1
    iput p3, p4, Lanet/channel/statist/AmdcStatistic;->retryTimes:I

    .line 327
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p0

    invoke-interface {p0, p4}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method static prepareConnStrategy(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 70
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isProxy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 74
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/IConnStrategy;

    .line 76
    invoke-interface {v2}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    iget-object v2, v2, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static readAnswer(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 4

    .line 294
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 295
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {p0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 298
    :try_start_0
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, p1

    .line 300
    :cond_0
    new-instance p1, Landroid/util/Base64InputStream;

    invoke-direct {p1, v0, v2}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 301
    :try_start_1
    new-array v0, v1, [B

    .line 303
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 304
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 306
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    const-string p1, "awcn.DispatchCore"

    const-string v1, ""

    .line 308
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, p0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    return-object v3

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static sendOneNetworkRequest(Ljava/lang/String;Ljava/util/Map;I)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "gzip"

    const-string v4, "http disconnect failed"

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AMDC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lanet/channel/strategy/dispatch/DispatchCore;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 179
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "url"

    aput-object v9, v7, v8

    const/4 v9, 0x1

    aput-object v0, v7, v9

    const/4 v10, 0x2

    const-string v11, "\nhost"

    aput-object v11, v7, v10

    const-string v11, "domain"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v7, v12

    const-string v11, "awcn.DispatchCore"

    const-string/jumbo v13, "send amdc request"

    invoke-static {v11, v13, v5, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "Env"

    .line 180
    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lanet/channel/entity/ENV;

    .line 184
    :try_start_0
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 185
    :try_start_1
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v12, 0x4e20

    .line 186
    :try_start_2
    invoke-virtual {v15, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 187
    invoke-virtual {v15, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v12, "POST"

    .line 188
    invoke-virtual {v15, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v15, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 190
    invoke-virtual {v15, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v12, "Connection"

    const-string v6, "close"

    .line 191
    invoke-virtual {v15, v12, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept-Encoding"

    .line 192
    invoke-virtual {v15, v6, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v15, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 194
    invoke-virtual {v14}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    const-string v12, "https"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_0

    .line 195
    :try_start_3
    move-object v6, v15

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v12, Lanet/channel/strategy/dispatch/DispatchCore;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v6, v12}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v11

    goto/16 :goto_12

    .line 199
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const-string/jumbo v12, "utf-8"

    .line 200
    invoke-static {v1, v12}, Lanet/channel/strategy/utils/Utils;->encodeQueryParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 201
    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V

    .line 203
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 205
    invoke-static {v9}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v12
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v12, :cond_1

    .line 206
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "amdc response. code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/Object;

    const-string v16, "\nheaders"

    aput-object v16, v13, v8

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v16

    aput-object v16, v13, v9

    invoke-static {v11, v12, v5, v13}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v12, 0xc8

    if-eq v6, v12, :cond_5

    const/16 v0, 0x12e

    if-eq v6, v0, :cond_3

    const/16 v0, 0x133

    if-ne v6, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    .line 212
    :cond_3
    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "response code not 200"

    invoke-static {v0, v1, v14, v2, v10}, Lanet/channel/strategy/dispatch/DispatchCore;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v15, :cond_4

    .line 285
    :try_start_6
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 288
    new-array v0, v8, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v11, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return v10

    :cond_5
    :try_start_7
    const-string/jumbo v6, "x-am-code"

    .line 217
    invoke-virtual {v15, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "1000"

    .line 218
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v12, :cond_9

    :try_start_8
    const-string v0, "1007"

    .line 219
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "1008"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v10, 0x1

    .line 220
    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v14, v2, v10}, Lanet/channel/strategy/dispatch/DispatchCore;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v15, :cond_8

    .line 285
    :try_start_9
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 288
    new-array v0, v8, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v11, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_8
    :goto_4
    return v10

    :cond_9
    :try_start_a
    const-string/jumbo v12, "x-am-sign"

    .line 225
    invoke-virtual {v15, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 226
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v13, :cond_b

    :try_start_b
    const-string v0, "-1001"

    const-string/jumbo v1, "response sign is empty"

    .line 227
    invoke-static {v0, v1, v14, v2, v9}, Lanet/channel/strategy/dispatch/DispatchCore;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v15, :cond_a

    .line 285
    :try_start_c
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 288
    new-array v0, v8, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v11, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_a
    :goto_5
    return v9

    .line 231
    :cond_b
    :try_start_d
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v13, v3}, Lanet/channel/strategy/dispatch/DispatchCore;->readAnswer(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v9}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v8
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v8, :cond_c

    :try_start_e
    const-string v8, "amdc response body"

    .line 234
    new-array v13, v10, [Ljava/lang/Object;

    const-string v17, "\nbody"

    const/16 v16, 0x0

    aput-object v17, v13, v16

    aput-object v3, v13, v9

    invoke-static {v11, v8, v5, v13}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 237
    :cond_c
    :try_start_f
    array-length v1, v1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-object v8, v11

    int-to-long v10, v1

    :try_start_10
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object/from16 v17, v14

    int-to-long v13, v1

    :try_start_11
    invoke-static {v0, v10, v11, v13, v14}, Lanet/channel/strategy/dispatch/DispatchCore;->commitFlow(Ljava/lang/String;JJ)V

    .line 239
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "-1002"

    const-string/jumbo v1, "read answer error"
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-object/from16 v10, v17

    .line 240
    :try_start_12
    invoke-static {v0, v1, v10, v2, v9}, Lanet/channel/strategy/dispatch/DispatchCore;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v15, :cond_d

    .line 285
    :try_start_13
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 288
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_d
    :goto_6
    return v9

    :cond_e
    move-object/from16 v10, v17

    .line 246
    :try_start_14
    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->getSign()Lanet/channel/strategy/dispatch/IAmdcSign;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 248
    invoke-interface {v0, v3}, Lanet/channel/strategy/dispatch/IAmdcSign;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_f
    const/4 v13, 0x0

    .line 250
    :goto_7
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "check ret sign failed"

    const/4 v1, 0x4

    .line 251
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "retSign"

    const/4 v6, 0x0

    aput-object v3, v1, v6

    aput-object v12, v1, v9

    const-string v3, "checkSign"

    const/4 v6, 0x2

    aput-object v3, v1, v6

    const/4 v3, 0x3

    aput-object v13, v1, v3

    invoke-static {v8, v0, v5, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "-1003"

    const-string v1, "check sign failed"

    .line 252
    invoke-static {v0, v1, v10, v2, v9}, Lanet/channel/strategy/dispatch/DispatchCore;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v15, :cond_10

    .line 285
    :try_start_15
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 288
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_10
    :goto_8
    return v9

    .line 257
    :cond_11
    :try_start_16
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 260
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v1

    if-eq v1, v7, :cond_13

    const-string v0, "env change, do not notify result"

    const/4 v1, 0x0

    .line 261
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v5, v3}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v15, :cond_12

    .line 285
    :try_start_17
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 288
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v4, v3, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_12
    :goto_9
    return v1

    .line 264
    :cond_13
    :try_start_18
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v1

    new-instance v3, Lanet/channel/strategy/dispatch/DispatchEvent;

    invoke-direct {v3, v9, v0}, Lanet/channel/strategy/dispatch/DispatchEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Lanet/channel/strategy/dispatch/HttpDispatcher;->fireEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :try_start_19
    const-string/jumbo v0, "request success"

    const/4 v1, 0x0

    .line 272
    invoke-static {v6, v0, v10, v2, v1}, Lanet/channel/strategy/dispatch/DispatchCore;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    if-eqz v15, :cond_14

    .line 285
    :try_start_1a
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 288
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v4, v3, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_14
    :goto_a
    return v1

    .line 266
    :catch_7
    :try_start_1b
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    new-instance v1, Lanet/channel/strategy/dispatch/DispatchEvent;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v6, v3}, Lanet/channel/strategy/dispatch/DispatchEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;->fireEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V

    const-string/jumbo v0, "resolve amdc anser failed"

    .line 267
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v5, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "-1004"

    const-string/jumbo v1, "resolve answer failed"

    .line 268
    invoke-static {v0, v1, v10, v2, v9}, Lanet/channel/strategy/dispatch/DispatchCore;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    if-eqz v15, :cond_15

    .line 285
    :try_start_1c
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 288
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_15
    :goto_b
    return v9

    :catch_9
    move-exception v0

    goto :goto_e

    :catch_a
    move-exception v0

    move-object/from16 v10, v17

    goto :goto_e

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v8, v11

    :goto_c
    move-object v1, v0

    goto :goto_12

    :catch_c
    move-exception v0

    move-object v8, v11

    :goto_d
    move-object v10, v14

    :goto_e
    move-object v13, v15

    goto :goto_10

    :catch_d
    move-exception v0

    move-object v8, v11

    move-object v10, v14

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v8, v11

    move-object v1, v0

    const/4 v15, 0x0

    goto :goto_12

    :catch_e
    move-exception v0

    move-object v8, v11

    const/4 v10, 0x0

    :goto_f
    const/4 v13, 0x0

    .line 275
    :goto_10
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 277
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_16
    const-string v3, "-1000"

    .line 279
    invoke-static {v3, v1, v10, v2, v9}, Lanet/channel/strategy/dispatch/DispatchCore;->commitStatistic(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V

    const-string v1, "amdc request fail"

    const/4 v2, 0x0

    .line 280
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v8, v1, v5, v0, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    if-eqz v13, :cond_17

    .line 285
    :try_start_1e
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_f

    goto :goto_11

    :catch_f
    move-exception v0

    move-object v1, v0

    .line 288
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_17
    :goto_11
    return v9

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v15, v13

    :goto_12
    if-eqz v15, :cond_18

    .line 285
    :try_start_1f
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_10

    goto :goto_13

    :catch_10
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    .line 288
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v4, v3, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 289
    :cond_18
    :goto_13
    throw v1
.end method

.method public static sendRequest(Ljava/util/Map;)V
    .locals 11

    if-nez p0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-interface {v0, v1, v2}, Lanet/channel/strategy/IStrategyInstance;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lanet/channel/strategy/dispatch/DispatchCore;->prepareConnStrategy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_8

    .line 94
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v5, :cond_3

    .line 99
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 100
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lanet/channel/strategy/IConnStrategy;

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_2

    .line 104
    invoke-interface {v7}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v8

    invoke-static {v0, v6, v8, v4, v3}, Lanet/channel/strategy/dispatch/DispatchCore;->buildRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 106
    :cond_2
    invoke-static {v0, v6, v2, v4, v3}, Lanet/channel/strategy/dispatch/DispatchCore;->buildRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 109
    :cond_3
    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerFixIp()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 110
    array-length v8, v7

    if-lez v8, :cond_4

    .line 111
    sget-object v8, Lanet/channel/strategy/dispatch/DispatchCore;->random:Ljava/util/Random;

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v0, v7, v2, v4, v3}, Lanet/channel/strategy/dispatch/DispatchCore;->buildRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 113
    :cond_4
    invoke-static {v0, v6, v2, v4, v3}, Lanet/channel/strategy/dispatch/DispatchCore;->buildRequestUrl(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    .line 117
    :goto_3
    invoke-static {v6, v4, v3}, Lanet/channel/strategy/dispatch/DispatchCore;->sendOneNetworkRequest(Ljava/lang/String;Ljava/util/Map;I)I

    move-result v4

    if-eqz v7, :cond_6

    .line 120
    new-instance v6, Lanet/channel/strategy/ConnEvent;

    invoke-direct {v6}, Lanet/channel/strategy/ConnEvent;-><init>()V

    if-nez v4, :cond_5

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    .line 121
    :goto_4
    iput-boolean v8, v6, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 122
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v8

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7, v6}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    :cond_6
    if-eqz v4, :cond_8

    if-ne v4, v5, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    :goto_5
    return-void
.end method
