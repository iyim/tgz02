.class public Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "RestSslSocketFactory.java"


# instance fields
.field private peerHost:Ljava/lang/String;

.field private setHostNameMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    .line 30
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;->peerHost:Ljava/lang/String;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;->peerHost:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    iput-object p2, p0, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;->peerHost:Ljava/lang/String;

    .line 75
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;->peerHost:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "port"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "autoClose"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    if-eqz p4, :cond_1

    .line 79
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_1
    const/4 p1, 0x0

    .line 82
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object p4

    check-cast p4, Landroid/net/SSLCertificateSocketFactory;

    .line 83
    invoke-virtual {p4, p2, p3}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    .line 86
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 88
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p3, v0, :cond_2

    .line 89
    iget-object p1, p0, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;->peerHost:Ljava/lang/String;

    invoke-virtual {p4, p2, p1}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    :try_start_0
    iget-object p3, p0, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    const/4 p4, 0x1

    if-nez p3, :cond_3

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "setHostname"

    new-array v1, p4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, p1

    invoke-virtual {p3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    .line 94
    iget-object p3, p0, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p3, p4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 96
    :cond_3
    iget-object p3, p0, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    new-array p4, p4, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/motu/tbrest/request/RestSslSocketFactory;->peerHost:Ljava/lang/String;

    aput-object v0, p4, p1

    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "SNI not useable"

    .line 98
    invoke-static {p3, p1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :goto_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    return-object p2
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 66
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
