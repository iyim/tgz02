.class public Lcom/rich/czlylibary/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "131654654"


# instance fields
.field private b:Ljavax/crypto/Cipher;

.field private c:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/b/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/rich/czlylibary/b/b;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rich/czlylibary/b/b;->b:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lcom/rich/czlylibary/b/b;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rich/czlylibary/b/b;->d([B)Ljava/security/Key;

    move-result-object p1

    const-string v0, "DES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/rich/czlylibary/b/b;->b:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/rich/czlylibary/b/b;->b:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/czlylibary/b/b;->c:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/rich/czlylibary/b/b;->c:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v3, p0, v2

    :goto_1
    if-gez v3, :cond_0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    :cond_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v0, p0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    div-int/lit8 v4, v2, 0x2

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private d([B)Ljava/security/Key;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "DES"

    invoke-direct {p1, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/b/b;->b([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/rich/czlylibary/b/b;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b([B)[B
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/b/b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/rich/czlylibary/b/b;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/b/b;->c([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public c([B)[B
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/b/b;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method
