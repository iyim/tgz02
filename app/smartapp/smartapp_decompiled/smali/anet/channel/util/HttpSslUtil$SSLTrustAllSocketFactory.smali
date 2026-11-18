.class Lanet/channel/util/HttpSslUtil$SSLTrustAllSocketFactory;
.super Ljava/lang/Object;
.source "HttpSslUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/util/HttpSslUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SSLTrustAllSocketFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/util/HttpSslUtil$SSLTrustAllSocketFactory$SSLTrustAllManager;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "TLS"

    .line 64
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x1

    .line 65
    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    new-instance v4, Lanet/channel/util/HttpSslUtil$SSLTrustAllSocketFactory$SSLTrustAllManager;

    invoke-direct {v4, v1}, Lanet/channel/util/HttpSslUtil$SSLTrustAllSocketFactory$SSLTrustAllManager;-><init>(Lanet/channel/util/HttpSslUtil$1;)V

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 66
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSocketFactory error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "awcn.SSLTrustAllSocketFactory"

    invoke-static {v3, v2, v1, v0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
