.class public Lcom/alibaba/ailabs/tg/utils/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static encryptMD5([B)[B
    .locals 1

    const-string v0, "MD5"

    .line 108
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5File(Ljava/io/File;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 132
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p0, "MD5"

    .line 133
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 134
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, v1, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    const/high16 p0, 0x40000

    .line 135
    new-array p0, p0, [B

    .line 137
    :cond_1
    invoke-virtual {v2, p0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_1

    .line 139
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    :goto_0
    move-object v1, v0

    .line 142
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 118
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncryptUtils;->encryptMD5File(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/ConvertUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncryptUtils;->encryptMD5ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/ConvertUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString([B)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/ConvertUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString([B[B)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 96
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/ConvertUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static encryptSHA1([B)[B
    .locals 1

    const-string v0, "SHA1"

    .line 166
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA1ToString([B)Ljava/lang/String;
    .locals 0

    .line 156
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncryptUtils;->encryptSHA1([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/ConvertUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA256([B)[B
    .locals 1

    const-string v0, "SHA256"

    .line 187
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA256ToString([B)Ljava/lang/String;
    .locals 0

    .line 177
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncryptUtils;->encryptSHA256([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/ConvertUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hashTemplate([BLjava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 198
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 201
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 202
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    .line 32
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 36
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 37
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    invoke-static {v2}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    invoke-static {v9}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v9, v0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v9, v0

    goto :goto_1

    :catch_3
    move-exception p0

    move-object v9, v0

    :goto_0
    move-object v0, v2

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v9, v0

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v2, v0

    move-object v9, v2

    .line 41
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 43
    invoke-static {v2}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    invoke-static {v9}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object p0, v0

    :goto_2
    if-nez p0, :cond_0

    return-object v0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/ConvertUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_2
    move-exception p0

    :goto_3
    move-object v0, v2

    goto :goto_5

    :catch_5
    move-exception p0

    move-object v9, v0

    .line 39
    :goto_4
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p0

    .line 43
    :goto_5
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    invoke-static {v9}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
