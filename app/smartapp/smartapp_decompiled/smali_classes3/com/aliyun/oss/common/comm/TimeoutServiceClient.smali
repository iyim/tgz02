.class public Lcom/aliyun/oss/common/comm/TimeoutServiceClient;
.super Lcom/aliyun/oss/common/comm/DefaultServiceClient;
.source "TimeoutServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/common/comm/TimeoutServiceClient$HttpRequestTask;
    }
.end annotation


# instance fields
.field protected executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/ClientConfiguration;)V
    .locals 10

    .line 52
    invoke-direct {p0, p1}, Lcom/aliyun/oss/common/comm/DefaultServiceClient;-><init>(Lcom/aliyun/oss/ClientConfiguration;)V

    .line 54
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    .line 55
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    mul-int/lit8 v1, p1, 0x5

    mul-int/lit8 v2, p1, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    mul-int/lit8 p1, p1, 0x64

    invoke-direct {v6, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const-wide/16 v3, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 58
    iget-object p1, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method


# virtual methods
.method public sendRequestCore(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lcom/aliyun/oss/common/comm/ResponseMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->httpRequestFactory:Lcom/aliyun/oss/common/comm/HttpRequestFactory;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/oss/common/comm/HttpRequestFactory;->createHttpRequest(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p2

    .line 65
    invoke-static {}, Lorg/apache/http/client/protocol/HttpClientContext;->create()Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->requestConfig:Lorg/apache/http/client/config/RequestConfig;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setRequestConfig(Lorg/apache/http/client/config/RequestConfig;)V

    .line 69
    new-instance v1, Lcom/aliyun/oss/common/comm/TimeoutServiceClient$HttpRequestTask;

    invoke-direct {v1, p0, p2, v0}, Lcom/aliyun/oss/common/comm/TimeoutServiceClient$HttpRequestTask;-><init>(Lcom/aliyun/oss/common/comm/TimeoutServiceClient;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/protocol/HttpClientContext;)V

    .line 70
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v1}, Lcom/aliyun/oss/ClientConfiguration;->getRequestTimeout()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/CloseableHttpResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->buildResponse(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lorg/apache/http/client/methods/CloseableHttpResponse;)Lcom/aliyun/oss/common/comm/ResponseMessage;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ExecutorService]The wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v1}, Lcom/aliyun/oss/ClientConfiguration;->getRequestTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timed out: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 95
    new-instance p2, Lcom/aliyun/oss/ClientException;

    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestTimeout"

    const-string v2, "Unknown"

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 81
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 83
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    invoke-static {p1}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createNetworkException(Ljava/io/IOException;)Lcom/aliyun/oss/ClientException;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_0
    new-instance p2, Lcom/aliyun/oss/OSSException;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/aliyun/oss/OSSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_0
    const-string p2, "[ExecutorService]The computation threw an exception: "

    .line 89
    invoke-static {p2, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    throw p1

    :catch_2
    move-exception p1

    const-string v0, "[ExecutorService]The current thread was interrupted while waiting: "

    .line 75
    invoke-static {v0, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 78
    new-instance p2, Lcom/aliyun/oss/ClientException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public shutdown()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 107
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    const-string v1, "Pool did not terminate in 60 seconds"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 116
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->shutdown()V

    return-void
.end method
