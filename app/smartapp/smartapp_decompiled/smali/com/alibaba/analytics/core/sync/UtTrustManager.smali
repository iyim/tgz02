.class Lcom/alibaba/analytics/core/sync/UtTrustManager;
.super Ljava/lang/Object;
.source "UtTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "X509TrustManager"

.field private static trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static declared-synchronized getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 4

    const-class v0, Lcom/alibaba/analytics/core/sync/UtTrustManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/UtTrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 28
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/alibaba/analytics/core/sync/UtTrustManager;

    invoke-direct {v3}, Lcom/alibaba/analytics/core/sync/UtTrustManager;-><init>()V

    aput-object v3, v1, v2

    sput-object v1, Lcom/alibaba/analytics/core/sync/UtTrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 31
    :cond_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/UtTrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 p1, 0x1

    .line 36
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "checkClientTrusted"

    aput-object v0, p1, p2

    const-string p2, "X509TrustManager"

    invoke-static {p2, p1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "checkServerTrusted"

    aput-object v2, v0, v1

    const-string v2, "X509TrustManager"

    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 42
    array-length v0, p1

    if-lez v0, :cond_4

    :try_start_0
    const-string v0, "X509"

    .line 48
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v2, 0x0

    .line 49
    nop

    nop

    invoke-virtual {v0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 59
    :try_start_1
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v3, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p2, p1

    :goto_1
    if-eqz p2, :cond_2

    .line 63
    instance-of v0, p2, Ljava/security/cert/CertificateExpiredException;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 67
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    .line 69
    :cond_2
    throw p1

    :cond_3
    return-void

    :catch_1
    move-exception p1

    .line 53
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 51
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 43
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "checkServerTrusted: X509Certificate array is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    .line 77
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
