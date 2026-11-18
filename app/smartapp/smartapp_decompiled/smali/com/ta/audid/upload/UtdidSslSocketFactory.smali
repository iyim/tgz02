.class public Lcom/ta/audid/upload/UtdidSslSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "UtdidSslSocketFactory.java"


# instance fields
.field private peerHost:Ljava/lang/String;

.field private setHostNameMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    .line 28
    iput-object p1, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

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

    .line 69
    iget-object v0, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    iput-object p2, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    :cond_0
    const/4 p2, 0x6

    .line 73
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "host"

    aput-object v1, p2, v0

    iget-object v1, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, p2, v2

    const/4 v1, 0x2

    const-string v3, "port"

    aput-object v3, p2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, p2, v4

    const/4 v3, 0x4

    const-string v5, "autoClose"

    aput-object v5, p2, v3

    const/4 v3, 0x5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, p2, v3

    const-string v3, ""

    invoke-static {v3, p2}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    if-eqz p4, :cond_1

    .line 77
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 80
    :cond_1
    invoke-static {v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object p1

    check-cast p1, Landroid/net/SSLCertificateSocketFactory;

    .line 81
    invoke-virtual {p1, p2, p3}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    .line 84
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 86
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x11

    if-lt p3, p4, :cond_2

    .line 87
    iget-object p3, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    if-nez p1, :cond_3

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo p3, "setHostname"

    new-array p4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, p4, v0

    invoke-virtual {p1, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    .line 92
    iget-object p1, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    new-array p3, v2, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    aput-object p4, p3, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    new-array p3, v4, [Ljava/lang/Object;

    const-string p4, "SNI not useable"

    aput-object p4, p3, v0

    const/4 p4, 0x0

    aput-object p4, p3, v2

    aput-object p1, p3, v1

    invoke-static {v3, p3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :goto_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    .line 102
    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "SSLSession PeerHost"

    aput-object p4, p3, v0

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {v3, p3}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 59
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 64
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
