.class public Lcom/alibaba/mbg/unet/internal/ResponseImpl;
.super Ljava/lang/Object;
.source "ResponseImpl.java"

# interfaces
.implements Lcom/alibaba/mbg/unet/Response;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/unet/internal/ResponseImpl$HeaderBlock;
    }
.end annotation


# instance fields
.field private final mHeaders:Lcom/alibaba/mbg/unet/internal/ResponseImpl$HeaderBlock;

.field private final mHttpStatusCode:I

.field private final mHttpStatusText:Ljava/lang/String;

.field protected mInputStream:Ljava/io/InputStream;

.field private mLastLocation:Ljava/lang/String;

.field private mMetricInfo:[Ljava/lang/String;

.field private final mNegotiatedProtocol:Ljava/lang/String;

.field private final mProxyServer:Ljava/lang/String;

.field private final mReceivedBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mResponseInfoUrlChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWasCached:Z


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mResponseInfoUrlChain:Ljava/util/List;

    .line 96
    iput p2, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mHttpStatusCode:I

    .line 97
    iput-object p3, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mHttpStatusText:Ljava/lang/String;

    .line 98
    new-instance p1, Lcom/alibaba/mbg/unet/internal/ResponseImpl$HeaderBlock;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/mbg/unet/internal/ResponseImpl$HeaderBlock;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mHeaders:Lcom/alibaba/mbg/unet/internal/ResponseImpl$HeaderBlock;

    .line 99
    iput-boolean p5, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mWasCached:Z

    .line 100
    iput-object p6, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mNegotiatedProtocol:Ljava/lang/String;

    .line 101
    iput-object p7, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mProxyServer:Ljava/lang/String;

    .line 102
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mReceivedBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public getAllHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mHeaders:Lcom/alibaba/mbg/unet/internal/ResponseImpl$HeaderBlock;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/ResponseImpl$HeaderBlock;->getAsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeadersAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mHeaders:Lcom/alibaba/mbg/unet/internal/ResponseImpl$HeaderBlock;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/ResponseImpl$HeaderBlock;->getAsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mHttpStatusCode:I

    return v0
.end method

.method public getHttpStatusText()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mHttpStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public getLastLocation()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mLastLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricInfoArray()[Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mMetricInfo:[Ljava/lang/String;

    return-object v0
.end method

.method public getNegotiatedProtocol()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mNegotiatedProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyServer()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mReceivedBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mResponseInfoUrlChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mResponseInfoUrlChain:Ljava/util/List;

    return-object v0
.end method

.method public readResponse()Ljava/io/InputStream;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setLastLocation(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mLastLocation:Ljava/lang/String;

    return-void
.end method

.method public setMetricInfoArray([Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mMetricInfo:[Ljava/lang/String;

    return-void
.end method

.method public setReceivedBytesCount(J)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mReceivedBytesCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 221
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    .line 225
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->getUrlChain()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->getHttpStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->getHttpStatusText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->wasCached()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->getProxyServer()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->getReceivedBytesCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "ResponseImpl@[%s][%s]: urlChain = %s, httpStatus = %d %s, headers = %s, wasCached = %b, negotiatedProtocol = %s, proxyServer= %s, receivedBytesCount = %d"

    .line 221
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasCached()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->mWasCached:Z

    return v0
.end method
