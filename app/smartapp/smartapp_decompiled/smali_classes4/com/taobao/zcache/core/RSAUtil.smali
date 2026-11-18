.class Lcom/taobao/zcache/core/RSAUtil;
.super Ljava/lang/Object;
.source "RSAUtil.java"


# static fields
.field private static publicKey:Ljava/security/PublicKey; = null

.field private static final publicKeyCertificate:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAr4QTVnTHJ/W1hfBkEfTdWMMAxsQHW22gK0JProk3hmdwwal+Up7Ty/8NUXs+8SKufik2ASXQLFkqeoZu60sXmtlQGZJ+kAezC8pS9MboHZWywO9VJwxRUQuXI/Hn0jjZsA8tZPpN6Ty9wkz80GrQJrRuhjEjT0JAjElhpZUxTXMKIIPqM+ndgcfF55f9wWYFKW+o/Z0Nil0yP1crvLryq3sbSbDTnz7+j4zUE7aCGb0ECyS/ii1o53C08YKyhzpSTICSzILvHMdHFHGeuH1LfrinuLYdyORlC0f6qoSODBSaXO7UI+uHxhb6K3e1YzUYsMRuEjyDUTETeT/b07LIgwIDAQAB"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static decryptData([BLjava/security/Key;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 69
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 70
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 71
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static getPublicKey()Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/taobao/zcache/core/RSAUtil;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAr4QTVnTHJ/W1hfBkEfTdWMMAxsQHW22gK0JProk3hmdwwal+Up7Ty/8NUXs+8SKufik2ASXQLFkqeoZu60sXmtlQGZJ+kAezC8pS9MboHZWywO9VJwxRUQuXI/Hn0jjZsA8tZPpN6Ty9wkz80GrQJrRuhjEjT0JAjElhpZUxTXMKIIPqM+ndgcfF55f9wWYFKW+o/Z0Nil0yP1crvLryq3sbSbDTnz7+j4zUE7aCGb0ECyS/ii1o53C08YKyhzpSTICSzILvHMdHFHGeuH1LfrinuLYdyORlC0f6qoSODBSaXO7UI+uHxhb6K3e1YzUYsMRuEjyDUTETeT/b07LIgwIDAQAB"

    .line 55
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 57
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    .line 58
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    sput-object v0, Lcom/taobao/zcache/core/RSAUtil;->publicKey:Ljava/security/PublicKey;

    .line 61
    :cond_0
    sget-object v0, Lcom/taobao/zcache/core/RSAUtil;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public static verifySign([B[B)Z
    .locals 2

    .line 39
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 40
    new-instance p0, Ljava/lang/String;

    invoke-static {}, Lcom/taobao/zcache/core/RSAUtil;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/zcache/core/RSAUtil;->decryptData([BLjava/security/Key;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
