.class public Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;
.super Lcom/alipay/vi/android/phone/mrpc/core/AbstractRpcCaller;
.source "HttpCaller.java"


# instance fields
.field private a:Lcom/alipay/vi/android/phone/mrpc/core/Config;


# direct methods
.method public constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/Config;Ljava/lang/reflect/Method;ILjava/lang/String;[BZLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/vi/android/phone/mrpc/core/Config;",
            "Ljava/lang/reflect/Method;",
            "I",
            "Ljava/lang/String;",
            "[BZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v5, "application/x-www-form-urlencoded"

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    move-object v7, p7

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/alipay/vi/android/phone/mrpc/core/AbstractRpcCaller;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;ZLjava/util/Map;)V

    .line 40
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->a:Lcom/alipay/vi/android/phone/mrpc/core/Config;

    .line 41
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x10

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xf

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x2

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()Lcom/alipay/vi/android/phone/mrpc/core/Transport;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->a:Lcom/alipay/vi/android/phone/mrpc/core/Config;

    invoke-interface {v0}, Lcom/alipay/vi/android/phone/mrpc/core/Config;->getTransport()Lcom/alipay/vi/android/phone/mrpc/core/Transport;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;)V
    .locals 6

    .line 147
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->mRpcHeaders:Ljava/util/Map;

    const-string v1, "AppId"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->mRpcHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->mRpcHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 156
    :cond_0
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    iget-object v5, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->mRpcHeaders:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->a:Lcom/alipay/vi/android/phone/mrpc/core/Config;

    invoke-interface {v0}, Lcom/alipay/vi/android/phone/mrpc/core/Config;->getRpcParams()Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 162
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/Header;

    .line 164
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {p1, v3}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    const-string v0, ""

    .line 45
    new-instance v1, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->a:Lcom/alipay/vi/android/phone/mrpc/core/Config;

    invoke-interface {v2}, Lcom/alipay/vi/android/phone/mrpc/core/Config;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->mReqData:[B

    invoke-virtual {v1, v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->setReqData([B)V

    .line 48
    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->setContentType(Ljava/lang/String;)V

    .line 49
    iget-boolean v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->mResetCookie:Z

    invoke-virtual {v1, v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->setResetCookie(Z)V

    .line 50
    iget v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->mId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->mOperationType:Ljava/lang/String;

    const-string v3, "operationType"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->a:Lcom/alipay/vi/android/phone/mrpc/core/Config;

    invoke-interface {v2}, Lcom/alipay/vi/android/phone/mrpc/core/Config;->isGzip()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gzip"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->a(Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;)V

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "threadid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpCaller"

    .line 55
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x9

    const/16 v3, 0xd

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->a()Lcom/alipay/vi/android/phone/mrpc/core/Transport;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/alipay/vi/android/phone/mrpc/core/Transport;->execute(Lcom/alipay/vi/android/phone/mrpc/core/Request;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/vi/android/phone/mrpc/core/Response;

    if-eqz v1, :cond_0

    .line 75
    move-object v4, v1

    check-cast v4, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;

    invoke-virtual {v4}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->getHeader()Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/vi/android/phone/mrpc/core/RpcThreadParamsHelper;->setResponseHeaders(Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;)V

    .line 76
    invoke-virtual {v1}, Lcom/alipay/vi/android/phone/mrpc/core/Response;->getResData()[B

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    new-instance v1, Lcom/alipay/vi/mobile/common/rpc/RpcException;

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "response is null"

    invoke-direct {v1, v4, v5}, Lcom/alipay/vi/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 93
    new-instance v2, Lcom/alipay/vi/mobile/common/rpc/RpcException;

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/alipay/vi/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 82
    instance-of v4, v3, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    if-eqz v4, :cond_1

    .line 83
    nop

    nop

    .line 84
    new-instance v0, Lcom/alipay/vi/mobile/common/rpc/RpcException;

    invoke-virtual {v3}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;->getCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 85
    invoke-virtual {v3}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/vi/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    new-instance v3, Lcom/alipay/vi/mobile/common/rpc/RpcException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/alipay/vi/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v3

    :catch_2
    move-exception v1

    .line 78
    new-instance v2, Lcom/alipay/vi/mobile/common/rpc/RpcException;

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/alipay/vi/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2
.end method
