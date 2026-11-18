.class public Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;
.super Ljava/lang/Object;
.source "UTBaseRequestAuthentication.java"

# interfaces
.implements Lcom/ut/mini/core/sign/IUTRequestAuthentication;


# instance fields
.field private mAppSecret:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mDefaultAppAppSecret:[B

.field private mEncode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mEncode:Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mDefaultAppAppSecret:[B

    .line 44
    iput-object p1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mEncode:Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mDefaultAppAppSecret:[B

    .line 57
    iput-object p1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    .line 59
    iput-boolean p3, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mEncode:Z

    return-void
.end method

.method public static calcHmac([B[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HmacSHA1"

    .line 104
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 105
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 107
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 108
    invoke-static {p0}, Lcom/alibaba/analytics/utils/MD5Utils;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultAppAppSecret()[B
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mDefaultAppAppSecret:[B

    if-nez v0, :cond_0

    const/16 v0, 0x20

    .line 92
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 95
    invoke-static {v0}, Lcom/alibaba/analytics/utils/RC4;->rc4([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mDefaultAppAppSecret:[B

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mDefaultAppAppSecret:[B

    return-object v0

    :array_0
    .array-data 1
        0x42t
        0x25t
        0x2at
        -0x77t
        0x76t
        -0x68t
        -0x1et
        0x4t
        -0x5ft
        0xft
        -0x1at
        -0xct
        -0x4bt
        -0x66t
        0x47t
        0x17t
        -0x3t
        -0x78t
        -0x1t
        -0x39t
        0x2at
        0x63t
        -0x10t
        -0x65t
        0x67t
        -0x4at
        0x5dt
        -0x72t
        0x70t
        -0x1at
        -0x18t
        -0x18t
    .end array-data
.end method


# virtual methods
.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    return-object v1

    .line 79
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mEncode:Z

    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->calcHmac([B[B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->getDefaultAppAppSecret()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->calcHmac([B[B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    :goto_0
    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 69
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "There is no appkey,please check it!"

    aput-object v2, p1, v0

    const-string v0, "UTBaseRequestAuthentication"

    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public isEncode()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mEncode:Z

    return v0
.end method
