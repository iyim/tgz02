.class public Lanet/channel/util/HttpSslUtil;
.super Ljava/lang/Object;
.source "HttpSslUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/util/HttpSslUtil$SSLTrustAllSocketFactory;,
        Lanet/channel/util/HttpSslUtil$AllowAllHostnameVerifier;
    }
.end annotation


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

.field public static final TRUST_ALL_SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field static sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field static verifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lanet/channel/util/HttpSslUtil$AllowAllHostnameVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/util/HttpSslUtil$AllowAllHostnameVerifier;-><init>(Lanet/channel/util/HttpSslUtil$1;)V

    sput-object v0, Lanet/channel/util/HttpSslUtil;->ALLOW_ALL_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 16
    invoke-static {}, Lanet/channel/util/HttpSslUtil$SSLTrustAllSocketFactory;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lanet/channel/util/HttpSslUtil;->TRUST_ALL_SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 27
    sget-object v0, Lanet/channel/util/HttpSslUtil;->verifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public static getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 19
    sget-object v0, Lanet/channel/util/HttpSslUtil;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 31
    sput-object p0, Lanet/channel/util/HttpSslUtil;->verifier:Ljavax/net/ssl/HostnameVerifier;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 23
    sput-object p0, Lanet/channel/util/HttpSslUtil;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
