.class public Lorg/apache/http/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lorg/apache/http/client/RequestDirector;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

.field protected final connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private execCount:I

.field protected final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;

.field private final maxRedirects:I

.field protected final params:Lorg/apache/http/params/HttpParams;

.field protected final proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final proxyAuthState:Lorg/apache/http/auth/AuthState;

.field protected final proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private redirectCount:I

.field protected final redirectHandler:Lorg/apache/http/client/RedirectHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

.field protected final requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field protected final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field protected final targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final targetAuthState:Lorg/apache/http/auth/AuthState;

.field protected final targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field protected final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

.field private virtualHost:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectStrategy;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    const-class v0, Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v11, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p10

    invoke-direct {v11, v0}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;-><init>(Lorg/apache/http/client/AuthenticationHandler;)V

    new-instance v12, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p11

    invoke-direct {v12, v0}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;-><init>(Lorg/apache/http/client/AuthenticationHandler;)V

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lorg/apache/http/impl/client/DefaultRequestDirector;-><init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Log"

    .line 271
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Request executor"

    .line 272
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection manager"

    .line 273
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection reuse strategy"

    .line 274
    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection keep alive strategy"

    .line 275
    invoke-static {p5, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Route planner"

    .line 276
    invoke-static {p6, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP protocol processor"

    .line 277
    invoke-static {p7, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request retry handler"

    .line 278
    invoke-static {p8, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Redirect strategy"

    .line 279
    invoke-static {p9, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Target authentication strategy"

    .line 280
    invoke-static {p10, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Proxy authentication strategy"

    .line 281
    invoke-static {p11, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "User token handler"

    .line 282
    invoke-static {p12, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    .line 283
    invoke-static {p13, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    .line 285
    new-instance v0, Lorg/apache/http/impl/client/HttpAuthenticator;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/HttpAuthenticator;-><init>(Lorg/apache/commons/logging/Log;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    .line 286
    iput-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 287
    iput-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 288
    iput-object p4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 289
    iput-object p5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 290
    iput-object p6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 291
    iput-object p7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 292
    iput-object p8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 293
    iput-object p9, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    .line 294
    iput-object p10, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 295
    iput-object p11, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 296
    iput-object p12, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 297
    iput-object p13, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    .line 299
    instance-of p1, p9, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 300
    check-cast p9, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-virtual {p9}, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;->getHandler()Lorg/apache/http/client/RedirectHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    goto :goto_0

    .line 302
    :cond_0
    iput-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 304
    :goto_0
    instance-of p1, p10, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    if-eqz p1, :cond_1

    .line 305
    check-cast p10, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {p10}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    goto :goto_1

    .line 307
    :cond_1
    iput-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 309
    :goto_1
    instance-of p1, p11, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    if-eqz p1, :cond_2

    .line 310
    check-cast p11, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {p11}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    goto :goto_2

    .line 312
    :cond_2
    iput-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 315
    :goto_2
    iput-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    const/4 p1, 0x0

    .line 317
    iput p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    .line 318
    iput p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 319
    new-instance p1, Lorg/apache/http/auth/AuthState;

    invoke-direct {p1}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    .line 320
    new-instance p1, Lorg/apache/http/auth/AuthState;

    invoke-direct {p1}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    .line 321
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    const/16 p2, 0x64

    const-string p3, "http.protocol.max-redirects"

    invoke-interface {p1, p3, p2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    const-class v0, Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v10, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;

    move-object/from16 v0, p8

    invoke-direct {v10, v0}, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lorg/apache/http/client/RedirectHandler;)V

    new-instance v11, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p9

    invoke-direct {v11, v0}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;-><init>(Lorg/apache/http/client/AuthenticationHandler;)V

    new-instance v12, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p10

    invoke-direct {v12, v0}, Lorg/apache/http/impl/client/AuthenticationStrategyAdaptor;-><init>(Lorg/apache/http/client/AuthenticationHandler;)V

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lorg/apache/http/impl/client/DefaultRequestDirector;-><init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method private abortConnection()V
    .locals 4

    .line 1128
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1132
    iput-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 1134
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1136
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1137
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1142
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1144
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Error releasing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private tryConnect(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 602
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const-string v2, "http.request"

    .line 606
    invoke-interface {p2, v2, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    .line 610
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 611
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v2, v0, p2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_1

    .line 613
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v3

    invoke-interface {v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V

    .line 615
    :goto_1
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 619
    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 622
    :catch_1
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-interface {v3, v2, v1, p2}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 623
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O exception ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") caught when connecting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 629
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 632
    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrying connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 635
    :cond_3
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method private tryExecute(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v0

    .line 647
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    .line 653
    :cond_0
    :goto_0
    iget v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    .line 655
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    .line 656
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 657
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "Cannot retry non-repeatable request"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 659
    new-instance p1, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string p2, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {p1, p2, v2}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 663
    :cond_1
    new-instance p1, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string p2, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {p1, p2}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 669
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_4

    .line 672
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 673
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Reopening the direct connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 674
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v2, p1, p2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_1

    .line 677
    :cond_3
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Proxied connection. Need to start over."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    .line 682
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 683
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to execute request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 685
    :cond_5
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v2, v0, v3, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v1

    :catch_0
    move-exception v2

    .line 689
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Closing the connection."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 691
    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 694
    :catch_1
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    move-result v4

    invoke-interface {v3, v2, v4, p2}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 695
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 696
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O exception ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") caught when processing request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 702
    :cond_6
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 703
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 705
    :cond_7
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 706
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrying request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 710
    :cond_8
    instance-of p2, v2, Lorg/apache/http/NoHttpResponseException;

    if-eqz p2, :cond_9

    .line 711
    new-instance p2, Lorg/apache/http/NoHttpResponseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed to respond"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v2}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/http/NoHttpResponseException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 714
    throw p2

    .line 716
    :cond_9
    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method private wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 327
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-object v0

    .line 331
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    return-object v0
.end method


# virtual methods
.method protected createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;
    .locals 2

    .line 988
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    .line 990
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p2

    .line 991
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_0

    .line 993
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object p1

    .line 995
    invoke-virtual {p1}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v0

    .line 998
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 999
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    .line 1000
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1004
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {p2}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object p2

    .line 1005
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v0
.end method

.method protected createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    new-instance p1, Lorg/apache/http/HttpException;

    const-string p2, "Proxy chains are not supported."

    invoke-direct {p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v6

    .line 857
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v7

    .line 861
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 862
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2, v1}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 865
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    .line 866
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string v1, "http.target_host"

    .line 869
    invoke-interface {p2, v1, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.route"

    .line 870
    invoke-interface {p2, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.proxy_host"

    .line 871
    invoke-interface {p2, v1, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 872
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    const-string v2, "http.connection"

    invoke-interface {p2, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.request"

    .line 873
    invoke-interface {p2, v1, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 875
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v1, v0, v2, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 877
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v1, v0, v2, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 879
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v8, v0}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 880
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v0, v8, v1, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 882
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_6

    .line 888
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v1, v6

    move-object v2, v8

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 891
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v1, v6

    move-object v2, v8

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/client/HttpAuthenticator;->authenticate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 894
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v0, v8, p2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 895
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection kept alive"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 897
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 898
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 900
    :cond_2
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto/16 :goto_0

    .line 911
    :cond_3
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0x12b

    if-le p1, p2, :cond_5

    .line 916
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 918
    new-instance p2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {p2, p1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v8, p2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 921
    :cond_4
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 922
    new-instance p1, Lorg/apache/http/impl/client/TunnelRefusedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CONNECT refused by proxy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v8}, Lorg/apache/http/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw p1

    .line 926
    :cond_5
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    const/4 p1, 0x0

    return p1

    .line 884
    :cond_6
    new-instance p1, Lorg/apache/http/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected response to CONNECT request: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const-string v1, "http.default-host"

    invoke-interface {p1, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/HttpHost;

    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    return-object p1
.end method

.method protected establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    new-instance v0, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    .line 784
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 785
    invoke-interface {v0, p1, v1}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 824
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown step indicator "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from RouteDirector."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 814
    :pswitch_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 805
    :pswitch_1
    invoke-virtual {v1}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 806
    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 807
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Tunnel to proxy created."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 808
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v4, v1, v3, v5}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 795
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .line 796
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Tunnel to target created."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 797
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3, v1, v4}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 791
    :pswitch_3
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1, p2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    :goto_0
    :pswitch_4
    if-gtz v2, :cond_0

    return-void

    .line 818
    :pswitch_5
    new-instance p2, Lorg/apache/http/HttpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to establish route: planned = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; current = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http.user-token"

    .line 373
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    const-string v2, "http.auth.target-scope"

    invoke-interface {p3, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    const-string v2, "http.auth.proxy-scope"

    invoke-interface {p3, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 380
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 381
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 383
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.virtual-host"

    invoke-interface {v3, v4}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpHost;

    iput-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    .line 386
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    .line 388
    :goto_0
    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 390
    new-instance v4, Lorg/apache/http/HttpHost;

    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    .line 394
    :cond_1
    new-instance v3, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, p1

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_15

    .line 406
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 407
    invoke-virtual {v3}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    .line 411
    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 414
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-nez v7, :cond_4

    .line 415
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v7, v5, v6}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v7

    .line 417
    instance-of v8, p2, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v8, :cond_3

    .line 418
    move-object v8, p2

    check-cast v8, Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v8, v7}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V

    .line 421
    :cond_3
    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v8}, Lorg/apache/http/client/params/HttpClientParams;->getConnectionManagerTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v8
    :try_end_0
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 423
    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 429
    :try_start_2
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v7}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 431
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v7}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 432
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Stale connection check"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 433
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v7}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 434
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Stale connection detected"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 435
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v7}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto :goto_2

    .line 425
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 426
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 441
    :cond_4
    :goto_2
    instance-of v7, p2, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v7, :cond_5

    .line 442
    move-object v7, p2

    check-cast v7, Lorg/apache/http/client/methods/AbortableHttpRequest;

    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v7, v8}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V
    :try_end_2
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 446
    :cond_5
    :try_start_3
    invoke-direct {p0, v3, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->tryConnect(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_3
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 455
    :try_start_4
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 457
    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    new-instance v9, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct {v9}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    new-instance v10, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v10, v7}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lorg/apache/http/auth/AuthState;->update(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;)V

    .line 462
    :cond_6
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    if-eqz v7, :cond_7

    .line 463
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    goto :goto_3

    .line 465
    :cond_7
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v7

    .line 466
    invoke-virtual {v7}, Ljava/net/URI;->isAbsolute()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 467
    invoke-static {v7}, Lorg/apache/http/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lorg/apache/http/HttpHost;

    move-result-object v4

    :cond_8
    :goto_3
    if-nez v4, :cond_9

    .line 471
    invoke-virtual {v5}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v4

    .line 475
    :cond_9
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 477
    invoke-virtual {p0, v1, v5}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    const-string v7, "http.target_host"

    .line 480
    invoke-interface {p3, v7, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "http.route"

    .line 481
    invoke-interface {p3, v7, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "http.connection"

    .line 482
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {p3, v5, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v5, v1, v7, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 487
    invoke-direct {p0, v3, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->tryExecute(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    .line 494
    :cond_a
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 495
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {p1, v1, v5, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 499
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {p1, v1, p3}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 502
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v5, v1, p3}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v7

    .line 503
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_b

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_b
    const-string v5, "indefinitely"

    .line 510
    :goto_4
    iget-object v9, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connection can be kept alive "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 512
    :cond_c
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 515
    :cond_d
    invoke-virtual {p0, v3, v1, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v5

    if-nez v5, :cond_e

    const/4 v2, 0x1

    goto/16 :goto_6

    :cond_e
    if-eqz p1, :cond_f

    .line 521
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 522
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 525
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v7}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    goto :goto_5

    .line 527
    :cond_f
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v7}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 528
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v7}, Lorg/apache/http/auth/AuthState;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v7

    sget-object v8, Lorg/apache/http/auth/AuthProtocolState;->CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {v7, v8}, Lorg/apache/http/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-lez v7, :cond_10

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v7}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v7}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 531
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Resetting proxy auth state"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 532
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v7}, Lorg/apache/http/auth/AuthState;->reset()V

    .line 534
    :cond_10
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v7}, Lorg/apache/http/auth/AuthState;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v7

    sget-object v8, Lorg/apache/http/auth/AuthProtocolState;->CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {v7, v8}, Lorg/apache/http/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-lez v7, :cond_11

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v7}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v7}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 537
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Resetting target auth state"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 538
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v7}, Lorg/apache/http/auth/AuthState;->reset()V

    .line 542
    :cond_11
    :goto_5
    invoke-virtual {v5}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 543
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    :cond_12
    move-object v3, v5

    .line 548
    :goto_6
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v5, :cond_2

    if-nez v6, :cond_13

    .line 550
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    invoke-interface {v5, p3}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v6

    .line 551
    invoke-interface {p3, v0, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    if-eqz v6, :cond_2

    .line 554
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5, v6}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_1
    move-exception p2

    .line 448
    iget-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_14

    .line 449
    iget-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p2}, Lorg/apache/http/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 451
    :cond_14
    invoke-virtual {p2}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_7

    :catch_2
    move-exception p1

    goto :goto_a

    :catch_3
    move-exception p1

    goto :goto_b

    :catch_4
    move-exception p1

    goto :goto_c

    :catch_5
    move-exception p1

    goto :goto_d

    :cond_15
    :goto_7
    if-eqz v1, :cond_17

    .line 562
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    if-eqz p2, :cond_17

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_8

    .line 571
    :cond_16
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    .line 572
    new-instance p3, Lorg/apache/http/conn/BasicManagedEntity;

    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-direct {p3, p2, v0, p1}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    .line 573
    invoke-interface {v1, p3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_9

    :cond_17
    :goto_8
    if-eqz p1, :cond_18

    .line 566
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 568
    :cond_18
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_4
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_9
    return-object v1

    .line 590
    :goto_a
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 591
    throw p1

    .line 587
    :goto_b
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 588
    throw p1

    .line 584
    :goto_c
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 585
    throw p1

    .line 579
    :goto_d
    new-instance p2, Ljava/io/InterruptedIOException;

    const-string p3, "Connection has been shut down"

    invoke-direct {p2, p3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p2, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 582
    goto :goto_f

    :goto_e
    throw p2

    :goto_f
    goto :goto_e
.end method

.method protected handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 1030
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v9

    .line 1031
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v10

    .line 1033
    invoke-virtual {v10}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    .line 1035
    invoke-static {v11}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "http.target_host"

    .line 1036
    invoke-interface {v8, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    if-nez v1, :cond_0

    .line 1038
    invoke-virtual {v9}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 1040
    :cond_0
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    if-gez v2, :cond_1

    .line 1041
    iget-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Lorg/apache/http/HttpHost;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 1042
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v2, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v12, v3

    goto :goto_0

    :cond_1
    move-object v12, v1

    .line 1045
    :goto_0
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v13

    .line 1048
    invoke-virtual {v9}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1051
    invoke-virtual {v9}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    :cond_2
    move-object v14, v1

    .line 1053
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v15

    if-eqz v13, :cond_3

    .line 1057
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/client/HttpAuthenticator;->authenticate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    if-eqz v15, :cond_4

    .line 1064
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->authenticator:Lorg/apache/http/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/http/impl/client/HttpAuthenticator;->authenticate(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthState;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p1

    .line 1072
    :cond_4
    invoke-static {v11}, Lorg/apache/http/client/params/HttpClientParams;->isRedirecting(Lorg/apache/http/params/HttpParams;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    invoke-interface {v1, v10, v7, v8}, Lorg/apache/http/client/RedirectStrategy;->isRedirected(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1075
    iget v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    iget v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-ge v1, v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    .line 1079
    iput v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 1082
    iput-object v2, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    .line 1084
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    invoke-interface {v1, v10, v7, v8}, Lorg/apache/http/client/RedirectStrategy;->getRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 1085
    invoke-virtual {v10}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v2

    .line 1086
    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 1088
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 1089
    invoke-static {v2}, Lorg/apache/http/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lorg/apache/http/HttpHost;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1095
    invoke-virtual {v9}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1096
    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Resetting target auth state"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1097
    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthState;->reset()V

    .line 1098
    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1099
    invoke-interface {v4}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1100
    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Resetting proxy auth state"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1101
    iget-object v4, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthState;->reset()V

    .line 1105
    :cond_5
    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 1106
    invoke-virtual {v1, v11}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 1108
    invoke-virtual {v0, v3, v1, v8}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v3

    .line 1109
    new-instance v4, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v4, v1, v3}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 1111
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1112
    iget-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Redirecting to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' via "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_6
    return-object v4

    .line 1091
    :cond_7
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1076
    :cond_8
    new-instance v1, Lorg/apache/http/client/RedirectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum redirects ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") exceeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    return-object v2
.end method

.method protected releaseConnection()V
    .locals 3

    .line 734
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 736
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "IOException releasing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    return-void
.end method

.method protected rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 342
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 343
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p2

    .line 347
    invoke-static {v0, p2, v2}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    .line 349
    :cond_0
    invoke-static {v0}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 354
    invoke-static {v0, p2, v2}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    .line 356
    :cond_2
    invoke-static {v0}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    .line 359
    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 362
    new-instance v0, Lorg/apache/http/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
