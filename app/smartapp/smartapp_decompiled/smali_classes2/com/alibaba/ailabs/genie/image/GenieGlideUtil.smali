.class public Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;
.super Ljava/lang/Object;
.source "GenieGlideUtil.java"


# static fields
.field public static MAX:J = 0x6400000L

.field private static instance:Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;

.field public static mMaxDiskCacheDirSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    sget-wide v0, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->MAX:J

    sput-wide v0, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->mMaxDiskCacheDirSize:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private deleteFolderFile(Ljava/lang/String;Z)Z
    .locals 6

    const/4 v0, 0x0

    .line 169
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 172
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    .line 173
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->deleteFolderFile(Ljava/lang/String;Z)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_2

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return v2

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;
    .locals 1

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->instance:Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->instance:Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;

    .line 32
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->instance:Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;

    return-object v0
.end method


# virtual methods
.method public clearCacheDiskSelf(Landroid/content/Context;)Z
    .locals 2

    .line 93
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 94
    new-instance v0, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil$1;-><init>(Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->clearDiskCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public clearCacheMemory(Landroid/content/Context;)Z
    .locals 2

    .line 113
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 114
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->clearMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCacheSize(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 56
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->getFormatSize(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public getDiskCacheDirSize(Landroid/content/Context;)J
    .locals 2

    .line 73
    :try_start_0
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDiskCacheDirSize(Landroid/content/Context;Ljava/io/File;)J
    .locals 0

    .line 83
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getFolderSize(Ljava/io/File;)J
    .locals 6
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 127
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 128
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 129
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_1

    .line 132
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-wide v0
.end method

.method public getFormatSize(D)Ljava/lang/String;
    .locals 9

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double v2, p1, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "Byte"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    div-double p1, v2, v0

    const/4 v6, 0x4

    const/4 v7, 0x2

    cmpg-double v8, p1, v4

    if-gez v8, :cond_1

    .line 149
    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "KB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    div-double v2, p1, v0

    cmpg-double v8, v2, v4

    if-gez v8, :cond_2

    .line 154
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    div-double p1, v2, v0

    cmpg-double v0, p1, v4

    if-gez v0, :cond_3

    .line 159
    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 162
    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaxDiskCacheDirSize()J
    .locals 2

    .line 68
    sget-wide v0, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->mMaxDiskCacheDirSize:J

    return-wide v0
.end method

.method public setMaxDiskCacheDirSize(J)V
    .locals 0

    .line 64
    sput-wide p1, Lcom/alibaba/ailabs/genie/image/GenieGlideUtil;->mMaxDiskCacheDirSize:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
