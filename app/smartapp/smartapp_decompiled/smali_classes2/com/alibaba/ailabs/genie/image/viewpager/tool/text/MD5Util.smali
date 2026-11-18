.class public Lcom/alibaba/ailabs/genie/image/viewpager/tool/text/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field private static final hexDigIts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "a"

    const-string v11, "b"

    const-string v12, "c"

    const-string v13, "d"

    const-string v14, "e"

    const-string v15, "f"

    .line 14
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/text/MD5Util;->hexDigIts:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 48
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 49
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/text/MD5Util;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteToHexString(B)Ljava/lang/String;
    .locals 3

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    .line 59
    :cond_0
    div-int/lit8 v0, p0, 0x10

    .line 60
    rem-int/lit8 p0, p0, 0x10

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/ailabs/genie/image/viewpager/tool/text/MD5Util;->hexDigIts:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/text/MD5Util;->hexDigIts:[Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "utf-8"

    .line 21
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/text/MD5Util;->md5Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 34
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, ""

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/text/MD5Util;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/text/MD5Util;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p0
.end method
