.class Lorg/android/spdy/AndroidTrustAnchors;
.super Ljava/lang/Object;
.source "AndroidTrustAnchors.java"


# static fields
.field private static Android_CA_PATH:Ljava/lang/String; = null

.field public static volatile init:Z = false

.field private static singleton:Lorg/android/spdy/AndroidTrustAnchors;


# instance fields
.field private certificateFactory:Ljava/security/cert/CertificateFactory;

.field private trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lorg/android/spdy/AndroidTrustAnchors;

    invoke-direct {v0}, Lorg/android/spdy/AndroidTrustAnchors;-><init>()V

    sput-object v0, Lorg/android/spdy/AndroidTrustAnchors;->singleton:Lorg/android/spdy/AndroidTrustAnchors;

    const-string v0, "/system/etc/security/cacerts/"

    .line 82
    sput-object v0, Lorg/android/spdy/AndroidTrustAnchors;->Android_CA_PATH:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lorg/android/spdy/AndroidTrustAnchors;->trustAnchors:Ljava/util/Set;

    .line 85
    iput-object v0, p0, Lorg/android/spdy/AndroidTrustAnchors;->certificateFactory:Ljava/security/cert/CertificateFactory;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/AndroidTrustAnchors;->trustAnchors:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lorg/android/spdy/AndroidTrustAnchors;
    .locals 1

    .line 22
    sget-object v0, Lorg/android/spdy/AndroidTrustAnchors;->singleton:Lorg/android/spdy/AndroidTrustAnchors;

    return-object v0
.end method


# virtual methods
.method public Initialize()V
    .locals 9

    .line 29
    sget-boolean v0, Lorg/android/spdy/AndroidTrustAnchors;->init:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "X.509"

    .line 34
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/AndroidTrustAnchors;->certificateFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 38
    :goto_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/android/spdy/AndroidTrustAnchors;->Android_CA_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_5

    :cond_1
    const/4 v4, 0x0

    .line 45
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :try_start_2
    iget-object v3, p0, Lorg/android/spdy/AndroidTrustAnchors;->certificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v3

    .line 47
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 48
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 49
    iget-object v6, p0, Lorg/android/spdy/AndroidTrustAnchors;->trustAnchors:Ljava/util/Set;

    new-instance v7, Ljava/security/cert/TrustAnchor;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-direct {v7, v8, v4}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 58
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v3

    move-object v4, v5

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v4, v5

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v5, v4

    goto :goto_6

    :catch_3
    move-exception v3

    .line 54
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_3

    .line 58
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_4
    move-exception v3

    .line 52
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_3

    .line 58
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    .line 60
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_6
    if-eqz v5, :cond_4

    .line 58
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v1

    .line 60
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    :cond_4
    :goto_7
    throw v0

    :cond_5
    const/4 v0, 0x1

    .line 66
    sput-boolean v0, Lorg/android/spdy/AndroidTrustAnchors;->init:Z

    return-void
.end method

.method public getCertificateFactory()Ljava/security/cert/CertificateFactory;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/android/spdy/AndroidTrustAnchors;->certificateFactory:Ljava/security/cert/CertificateFactory;

    return-object v0
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/android/spdy/AndroidTrustAnchors;->trustAnchors:Ljava/util/Set;

    return-object v0
.end method
