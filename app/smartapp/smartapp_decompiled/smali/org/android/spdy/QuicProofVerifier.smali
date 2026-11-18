.class public Lorg/android/spdy/QuicProofVerifier;
.super Ljava/lang/Object;
.source "QuicProofVerifier.java"


# static fields
.field private static final DECODE_C:I = 0x1

.field private static final DECODE_EQ:I = 0x3

.field private static final DECODE_N:I = 0x2

.field private static final DECODE_RIGHT:I = 0x4

.field private static kProofSignatureLabel:Ljava/lang/String; = "QUIC CHLO and server config signature\u0000"

.field private static kProofSignatureLabelOld:Ljava/lang/String; = "QUIC server config signature\u0000"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static LoadFromAndroidSystem(Ljava/security/cert/CertificateFactory;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-static {}, Lorg/android/spdy/AndroidTrustAnchors;->getInstance()Lorg/android/spdy/AndroidTrustAnchors;

    move-result-object p0

    invoke-virtual {p0}, Lorg/android/spdy/AndroidTrustAnchors;->getTrustAnchors()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static VerifyProof(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string p1, "ISO-8859-1"

    .line 42
    invoke-static {}, Lorg/android/spdy/AndroidTrustAnchors;->getInstance()Lorg/android/spdy/AndroidTrustAnchors;

    move-result-object p6

    invoke-virtual {p6}, Lorg/android/spdy/AndroidTrustAnchors;->getCertificateFactory()Ljava/security/cert/CertificateFactory;

    move-result-object p6

    const/4 v0, 0x0

    if-nez p6, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 49
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    aget-object v3, p5, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p6, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 53
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    .line 51
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 58
    :goto_0
    invoke-static {p2, p3, p4, v1, p7}, Lorg/android/spdy/QuicProofVerifier;->verifySignature(Ljava/lang/String;ILjava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 62
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {p6}, Lorg/android/spdy/QuicProofVerifier;->LoadFromAndroidSystem(Ljava/security/cert/CertificateFactory;)Ljava/util/Set;

    move-result-object p3

    if-nez p3, :cond_2

    return v0

    :cond_2
    const/4 p4, 0x1

    const/4 p7, 0x1

    .line 72
    :goto_1
    :try_start_1
    array-length v2, p5

    if-ge p7, v2, :cond_3

    .line 73
    new-instance v2, Ljava/io/ByteArrayInputStream;

    aget-object v3, p5, p4

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p6, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 74
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p6, p2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p1

    .line 77
    new-instance p2, Ljava/security/cert/PKIXParameters;

    invoke-direct {p2, p3}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 78
    invoke-virtual {p2, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    const-string p3, "PKIX"

    .line 79
    invoke-static {p3}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p3

    .line 80
    invoke-virtual {p3, p1, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 83
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    array-length p3, p1

    const/4 p5, 0x0

    :goto_2
    if-ge p5, p3, :cond_5

    aget-object p6, p1, p5

    .line 86
    invoke-static {p6, p2}, Lorg/android/spdy/QuicProofVerifier;->getCNfromSubject(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result p6

    if-eqz p6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 91
    :cond_5
    :goto_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "*"

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz p0, :cond_7

    :cond_6
    return p4

    :catch_3
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_4

    :catch_6
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_4

    :catch_7
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_7
    :goto_4
    return v0
.end method

.method private static getCNfromSubject(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 9

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 118
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v0, v1, :cond_8

    aget-char v5, p0, v0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v4, v2, :cond_6

    if-eq v4, v8, :cond_5

    const/16 v8, 0x20

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    if-ne v5, v8, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-ne v5, v8, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0x3d

    if-eq v5, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    const/4 v4, 0x4

    goto :goto_1

    :cond_5
    const/16 v4, 0x4e

    const/4 v4, 0x3

    goto :goto_1

    :cond_6
    const/16 v6, 0x43

    if-eq v5, v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return v3
.end method

.method private static verifySignature(Ljava/lang/String;ILjava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)I
    .locals 11

    const-string p1, "ISO-8859-1"

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 168
    :try_start_0
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_6

    .line 177
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    const/4 v1, 0x0

    .line 180
    :try_start_1
    invoke-interface {p3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SHA256withRSA/PSS"

    .line 181
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    :try_start_2
    new-instance v9, Ljava/security/spec/PSSParameterSpec;

    const-string v4, "SHA-256"

    const-string v5, "MGF1"

    new-instance v6, Ljava/security/spec/MGF1ParameterSpec;

    const-string v3, "SHA-256"

    invoke-direct {v6, v3}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x20

    const/4 v8, 0x1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 183
    invoke-virtual {v2, v9}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 185
    :cond_0
    :try_start_3
    invoke-interface {p3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 191
    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 188
    :goto_0
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_1
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    .line 196
    :try_start_4
    invoke-virtual {v1, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 197
    sget-object p3, Lorg/android/spdy/QuicProofVerifier;->kProofSignatureLabel:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/security/Signature;->update([B)V

    const/4 p3, 0x4

    .line 198
    new-array p3, p3, [B

    .line 199
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    .line 200
    invoke-virtual {v1, p3}, Ljava/security/Signature;->update([B)V

    .line 201
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/security/Signature;->update([B)V

    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->update([B)V

    .line 203
    invoke-virtual {p4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_3
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception p0

    .line 207
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception p0

    .line 173
    invoke-virtual {p0}, Ljava/security/cert/CertificateNotYetValidException;->printStackTrace()V

    return v0

    :catch_7
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/security/cert/CertificateExpiredException;->printStackTrace()V

    :cond_1
    :goto_3
    return v0
.end method
