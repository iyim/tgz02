.class Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;
.super Ljava/lang/Object;
.source "UpgradeLogRetry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ulog/uploader/client/UpgradeLogRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RetryInfo"
.end annotation


# instance fields
.field date:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field times:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->fileName:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->times:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->date:Ljava/lang/String;

    return-void
.end method

.method static readRetryProperty(Ljava/io/File;)Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;
    .locals 7

    .line 196
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    .line 199
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string p0, "name"

    .line 201
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v3, "times"

    .line 202
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v4, "date"

    .line 203
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    :goto_0
    invoke-static {v2}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p0, v1

    move-object v3, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    move-object v3, v2

    :goto_1
    :try_start_4
    const-string v4, "ULog.UpgradePatchRetry"

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to readRetryProperty:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 210
    :goto_2
    new-instance v0, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;

    invoke-direct {v0, p0, v3, v1}, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_1
    move-exception p0

    .line 207
    :goto_3
    invoke-static {v2}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 208
    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method static writeRetryProperty(Ljava/io/File;Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 223
    :cond_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 224
    iget-object v1, p1, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->fileName:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p1, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->times:Ljava/lang/String;

    const-string/jumbo v2, "times"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object p1, p1, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->date:Ljava/lang/String;

    const-string v1, "date"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 230
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    :try_start_1
    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    invoke-static {v2}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    const-string v0, "ULog.UpgradePatchRetry"

    const-string/jumbo v2, "retry write property fail"

    .line 234
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2, p1}, Lcom/uc/sdk/ulog/ULog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    invoke-static {v1}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v1}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 237
    throw p0
.end method
