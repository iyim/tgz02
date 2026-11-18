.class Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "UtSslSocketFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UtSslSocketFactory"


# instance fields
.field private bizHost:Ljava/lang/String;

.field private setHostNameMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    .line 30
    iput-object p1, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->bizHost:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "bizHost"

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->bizHost:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v4, "host"

    aput-object v4, v0, v2

    const/4 v4, 0x3

    aput-object p2, v0, v4

    const/4 p2, 0x4

    const-string v4, "port"

    aput-object v4, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x5

    aput-object p2, v0, v4

    const/4 p2, 0x6

    const-string v4, "autoClose"

    aput-object v4, v0, p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v4, 0x7

    aput-object p2, v0, v4

    const-string p2, "UtSslSocketFactory"

    invoke-static {p2, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->bizHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    new-array v0, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customized createSocket. host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->bizHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {p2, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :try_start_0
    new-instance v0, Landroid/net/SSLSessionCache;

    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x2710

    .line 81
    invoke-static {v4, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    .line 83
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_0

    .line 84
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UtTrustManager;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UtExtendTrustManager;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    .line 90
    :goto_0
    iget-object v4, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->bizHost:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, p3, p4}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 91
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 92
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p4, 0x11

    if-ge p3, p4, :cond_2

    .line 94
    :try_start_1
    iget-object p3, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    if-nez p3, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string/jumbo p4, "setHostname"

    new-array v0, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-virtual {p3, p4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    .line 96
    iget-object p3, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p3, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 98
    :cond_1
    iget-object p3, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    new-array p4, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->bizHost:Ljava/lang/String;

    aput-object v0, p4, v1

    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p3

    :try_start_2
    const-string p4, ""

    .line 100
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "SNI not useable"

    aput-object v2, v0, v1

    aput-object p3, v0, v3

    invoke-static {p4, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v0, p1, v3}, Landroid/net/SSLCertificateSocketFactory;->setUseSessionTickets(Ljava/net/Socket;Z)V

    .line 104
    iget-object p3, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->bizHost:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 106
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 107
    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "customized createSocket end"

    aput-object p4, p3, v1

    invoke-static {p2, p3}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 111
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createSocket exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 74
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SDK set empty bizHost"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->bizHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    nop

    nop

    iget-object p1, p1, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->bizHost:Ljava/lang/String;

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->bizHost:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UtSslSocketFactory;->bizHost:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 66
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
