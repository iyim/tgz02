.class public Lcom/uc/base/net/unet/HttpClientAsync;
.super Lcom/uc/base/net/unet/HttpClientBase;
.source "HttpClientAsync.java"

# interfaces
.implements Lcom/uc/base/net/IHttpClientAsync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;,
        Lcom/uc/base/net/unet/HttpClientAsync$fixLooperForExecutor;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x1


# instance fields
.field private mAutoRetryWhenZstdError:Z

.field protected mEventListener:Lcom/uc/base/net/IHttpEventListener;

.field private mExecutor:Lcom/uc/base/net/unet/HttpClientAsync$fixLooperForExecutor;

.field private mIsZstdResponse:Z

.field private mLooper:Landroid/os/Looper;

.field private mNextBackupIpRetryIndex:I

.field private mOriginRequest:Lcom/alibaba/mbg/unet/Request;

.field mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

.field private mRequestCallback:Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;

.field private mRequestTimeOut:I

.field private mRetryCount:I

.field private mRetryingBackupIps:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/uc/base/net/IHttpEventListener;)V
    .locals 1

    .line 99
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/uc/base/net/unet/HttpClientAsync;-><init>(Lcom/uc/base/net/IHttpEventListener;Landroid/os/Looper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/uc/base/net/IHttpEventListener;Landroid/os/Looper;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/uc/base/net/unet/HttpClientBase;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestTimeOut:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mAutoRetryWhenZstdError:Z

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mIsZstdResponse:Z

    .line 60
    iput v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryCount:I

    if-eqz p1, :cond_0

    .line 88
    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mEventListener:Lcom/uc/base/net/IHttpEventListener;

    .line 89
    iput-object p2, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mLooper:Landroid/os/Looper;

    .line 90
    new-instance p1, Lcom/uc/base/net/unet/HttpClientAsync$fixLooperForExecutor;

    invoke-direct {p1, p0, p2}, Lcom/uc/base/net/unet/HttpClientAsync$fixLooperForExecutor;-><init>(Lcom/uc/base/net/unet/HttpClientAsync;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mExecutor:Lcom/uc/base/net/unet/HttpClientAsync$fixLooperForExecutor;

    .line 91
    new-instance p1, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;

    invoke-direct {p1, p0}, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;-><init>(Lcom/uc/base/net/unet/HttpClientAsync;)V

    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestCallback:Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lcom/uc/base/net/unet/HttpClientAsync;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mIsZstdResponse:Z

    return p1
.end method

.method static synthetic access$100(Lcom/uc/base/net/unet/HttpClientAsync;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/uc/base/net/unet/HttpClientAsync;Lcom/alibaba/mbg/unet/Request;I)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/uc/base/net/unet/HttpClientAsync;->checkZstdErrorAndRetry(Lcom/alibaba/mbg/unet/Request;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/uc/base/net/unet/HttpClientAsync;Lcom/alibaba/mbg/unet/Request;I)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/uc/base/net/unet/HttpClientAsync;->checkBackupIpAndRetry(Lcom/alibaba/mbg/unet/Request;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/uc/base/net/unet/HttpClientAsync;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/uc/base/net/unet/HttpClientAsync;->resetBackupIpRetry()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkBackupIpAndRetry(Lcom/alibaba/mbg/unet/Request;I)Z
    .locals 7

    .line 178
    invoke-static {}, Lcom/uc/base/net/util/AppNetworkDelegate;->isNetworkConnected()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 185
    :cond_0
    iget-object p2, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mOriginRequest:Lcom/alibaba/mbg/unet/Request;

    if-nez p2, :cond_1

    .line 187
    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mOriginRequest:Lcom/alibaba/mbg/unet/Request;

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mOriginRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {p1}, Lcom/alibaba/mbg/unet/Request;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https"

    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 194
    :cond_2
    iget-object p2, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mOriginRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {p2}, Lcom/alibaba/mbg/unet/Request;->getHost()Ljava/lang/String;

    move-result-object p2

    .line 195
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 198
    :cond_3
    iget v1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mNextBackupIpRetryIndex:I

    const-string v2, "shellunet"

    if-nez v1, :cond_5

    .line 200
    invoke-static {p2}, Lcom/uc/base/net/util/dns/BackupIpProvider;->getAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryingBackupIps:[Ljava/lang/String;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backup ips size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryingBackupIps:[Ljava/lang/String;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    array-length v3, v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryingBackupIps:[Ljava/lang/String;

    if-nez v1, :cond_6

    return v0

    .line 207
    :cond_5
    iget-object v3, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryingBackupIps:[Ljava/lang/String;

    array-length v3, v3

    if-gt v3, v1, :cond_6

    const-string p1, "backup ip retry finished"

    .line 208
    invoke-static {v2, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 214
    :cond_6
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryingBackupIps:[Ljava/lang/String;

    iget v3, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mNextBackupIpRetryIndex:I

    aget-object v1, v1, v3

    .line 215
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p0, p1}, Lcom/uc/base/net/unet/HttpClientAsync;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object v1

    .line 218
    iget-object v3, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    invoke-virtual {v3}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->getAllHeaders()[Lcom/uc/base/net/adaptor/Headers$Header;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 220
    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_7

    aget-object v5, v3, v0

    .line 221
    invoke-virtual {v5}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/uc/base/net/adaptor/Headers$Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Lcom/uc/base/net/IRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const-string v0, "Host"

    .line 225
    invoke-interface {v1, v0, p2}, Lcom/uc/base/net/IRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do backup ip retry:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for host:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/uc/base/net/unet/HttpClientAsync;->sendRequest(Lcom/uc/base/net/IRequest;)V

    .line 229
    iget p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mNextBackupIpRetryIndex:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mNextBackupIpRetryIndex:I

    .line 230
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    invoke-virtual {p1, p2}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->setUseBackupIp(Z)V

    .line 231
    iget p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryCount:I

    return p2
.end method

.method private checkZstdErrorAndRetry(Lcom/alibaba/mbg/unet/Request;I)Z
    .locals 4

    .line 242
    iget-boolean v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mAutoRetryWhenZstdError:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, -0x14a

    if-ne p2, v0, :cond_2

    .line 245
    iget-boolean p2, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mIsZstdResponse:Z

    if-eqz p2, :cond_2

    const-string p2, "shellunet"

    const-string v0, "zstd error, retry with no zstd"

    .line 246
    invoke-static {p2, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {p1}, Lcom/alibaba/mbg/unet/Request;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uc/base/net/unet/HttpClientAsync;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object p1

    .line 248
    invoke-interface {p1}, Lcom/uc/base/net/IRequest;->disableZstd()V

    .line 249
    iget-object p2, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    invoke-virtual {p2}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->getAllHeaders()[Lcom/uc/base/net/adaptor/Headers$Header;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 251
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 252
    invoke-virtual {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/uc/base/net/IRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0, p1}, Lcom/uc/base/net/unet/HttpClientAsync;->sendRequest(Lcom/uc/base/net/IRequest;)V

    .line 257
    iget p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryCount:I

    return p2

    :cond_2
    return v1
.end method

.method private isConnectOrDnsError(I)Z
    .locals 1

    const/16 v0, -0xc7

    if-lt p1, v0, :cond_0

    const/16 v0, -0x64

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, -0x383

    if-lt p1, v0, :cond_2

    const/16 v0, -0x320

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private resetBackupIpRetry()V
    .locals 1

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mOriginRequest:Lcom/alibaba/mbg/unet/Request;

    .line 237
    iput-object v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRetryingBackupIps:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mNextBackupIpRetryIndex:I

    return-void
.end method


# virtual methods
.method public cancel(Lcom/uc/base/net/IRequest;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "HttpClientAsync"

    const-string v0, "cancel fail!! request is null, just ignore the cancel operation"

    .line 133
    invoke-static {p1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    instance-of v0, p1, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    if-eqz v0, :cond_1

    .line 137
    nop

    nop

    .line 138
    invoke-virtual {p1}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->cancel()V

    :cond_1
    return-void
.end method

.method public getDataDecompressEventListener()Lcom/uc/base/net/IDataDecompressEventListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getHttpConnectionMetrics()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/uc/base/net/unet/HttpClientBase;->getHttpConnectionMetrics()Lcom/uc/base/net/metrics/IHttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public bridge synthetic getMetricsTAG()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/uc/base/net/unet/HttpClientBase;->getMetricsTAG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Lcom/uc/base/net/unet/HttpClientBase;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest(Lcom/uc/base/net/IRequest;)V
    .locals 2

    const-string v0, "shellunet"

    const-string v1, "HttpClientAsync sendRequest "

    .line 107
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mIsZstdResponse:Z

    .line 109
    invoke-virtual {p0}, Lcom/uc/base/net/unet/HttpClientAsync;->CreateMetrics()V

    .line 110
    instance-of v0, p1, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    if-eqz v0, :cond_2

    .line 111
    nop

    nop

    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    .line 112
    iget p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mConnectTimeOut:I

    if-lez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    iget v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mConnectTimeOut:I

    invoke-virtual {p1, v0}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->setConnectTimeout(I)V

    .line 115
    :cond_0
    iget p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestTimeOut:I

    if-lez p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    invoke-virtual {v0, p1}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->useSyncRequestTimeout(I)V

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    iget-object v0, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mExecutor:Lcom/uc/base/net/unet/HttpClientAsync$fixLooperForExecutor;

    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestCallback:Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;

    invoke-virtual {p1, v0, v1}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->start(Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V

    :cond_2
    return-void
.end method

.method public sendRequest(Lcom/uc/base/net/IRequest;Z)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/uc/base/net/unet/HttpClientAsync;->sendRequest(Lcom/uc/base/net/IRequest;)V

    return-void
.end method

.method public bridge synthetic setAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lcom/uc/base/net/unet/HttpClientBase;->setAuth(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setAutoRetryWhenZstdFailed(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mAutoRetryWhenZstdError:Z

    return-void
.end method

.method public bridge synthetic setConnectionTimeout(I)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/uc/base/net/unet/HttpClientBase;->setConnectionTimeout(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setDataDecompressEventListener(Lcom/uc/base/net/IDataDecompressEventListener;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setFollowProxy(Z)V
    .locals 0

    .line 270
    invoke-super {p0, p1}, Lcom/uc/base/net/unet/HttpClientBase;->setFollowProxy(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public bridge synthetic setMetricsTAG(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/uc/base/net/unet/HttpClientBase;->setMetricsTAG(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 0

    .line 265
    invoke-super {p0, p1, p2}, Lcom/uc/base/net/unet/HttpClientBase;->setProxy(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setRequestTimeout(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestTimeOut:I

    return-void
.end method

.method public bridge synthetic setSocketTimeout(I)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/uc/base/net/unet/HttpClientBase;->setSocketTimeout(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
