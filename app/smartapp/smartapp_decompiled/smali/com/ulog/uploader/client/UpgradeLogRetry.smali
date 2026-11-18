.class public Lcom/ulog/uploader/client/UpgradeLogRetry;
.super Ljava/lang/Object;
.source "UpgradeLogRetry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;
    }
.end annotation


# static fields
.field private static final RETRY_COUNT_PROPERTY:Ljava/lang/String; = "times"

.field private static final RETRY_DATE_PROPERTY:Ljava/lang/String; = "date"

.field private static final RETRY_INFO_NAME:Ljava/lang/String; = "retry"

.field private static final RETRY_MAX_COUNT:I = 0x3

.field private static final RETRY_NAME_PROPERTY:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "ULog.UpgradePatchRetry"

.field private static sInstance:Lcom/ulog/uploader/client/UpgradeLogRetry;


# instance fields
.field private isRetryEnable:Z

.field private maxRetryCount:I

.field private final retryInfoDirectory:Ljava/io/File;

.field private final uploadClient:Lcom/ulog/uploader/client/UploadClient;


# direct methods
.method public constructor <init>(Lcom/ulog/uploader/client/UploadClient;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->isRetryEnable:Z

    const/4 v0, 0x3

    .line 48
    iput v0, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->maxRetryCount:I

    .line 56
    iput-object p1, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->uploadClient:Lcom/ulog/uploader/client/UploadClient;

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/ulog/uploader/utils/UploadUtils;->getLogCacheDir(Lcom/ulog/uploader/client/UploadClient;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "retry"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->retryInfoDirectory:Ljava/io/File;

    return-void
.end method

.method public static getInstance(Lcom/ulog/uploader/client/UploadClient;)Lcom/ulog/uploader/client/UpgradeLogRetry;
    .locals 1

    .line 61
    sget-object v0, Lcom/ulog/uploader/client/UpgradeLogRetry;->sInstance:Lcom/ulog/uploader/client/UpgradeLogRetry;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/ulog/uploader/client/UpgradeLogRetry;

    invoke-direct {v0, p0}, Lcom/ulog/uploader/client/UpgradeLogRetry;-><init>(Lcom/ulog/uploader/client/UploadClient;)V

    sput-object v0, Lcom/ulog/uploader/client/UpgradeLogRetry;->sInstance:Lcom/ulog/uploader/client/UpgradeLogRetry;

    .line 64
    :cond_0
    sget-object p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->sInstance:Lcom/ulog/uploader/client/UpgradeLogRetry;

    return-object p0
.end method


# virtual methods
.method public onLogUploadResult(Ljava/lang/String;)V
    .locals 4

    .line 165
    iget-boolean v0, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->isRetryEnable:Z

    const-string v1, "ULog.UpgradePatchRetry"

    if-nez v0, :cond_0

    const-string p1, "onLogUploadResult retry disabled, just return"

    .line 166
    invoke-static {v1, p1}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 173
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->retryInfoDirectory:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 175
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    const-string v2, "onLogUploadResult delete process: %s"

    invoke-static {v1, v2, p1}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-static {v0}, Lcom/ulog/uploader/utils/UploadUtils;->deleteFile(Ljava/io/File;)Z

    return-void
.end method

.method public onLogUploadStart(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 117
    iget-boolean v0, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->isRetryEnable:Z

    const-string v1, "ULog.UpgradePatchRetry"

    if-nez v0, :cond_0

    const-string p1, "onLogUploadStart retry disabled, just return"

    .line 118
    invoke-static {v1, p1}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_8

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 126
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->retryInfoDirectory:Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "1"

    if-eqz v2, :cond_7

    .line 128
    invoke-static {v0}, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->readRetryProperty(Ljava/io/File;)Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;

    move-result-object v2

    .line 129
    iget-object v4, v2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->fileName:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->times:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->date:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_0

    .line 134
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->fileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    .line 136
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 137
    iget-object p1, v2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->times:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 138
    iget p3, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->maxRetryCount:I

    if-lt p1, p3, :cond_3

    .line 139
    invoke-static {v4}, Lcom/ulog/uploader/utils/UploadUtils;->deleteFile(Ljava/io/File;)Z

    .line 140
    invoke-virtual {p0, p2}, Lcom/ulog/uploader/client/UpgradeLogRetry;->onLogUploadResult(Ljava/lang/String;)V

    .line 141
    new-array p1, v7, [Ljava/lang/Object;

    aput-object p2, p1, v6

    const-string p2, "onLogUploadStart process: %s, retry more than max count, delete retry info file!"

    invoke-static {v1, p2, p1}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    add-int/2addr p1, v7

    .line 144
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->times:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    const/4 v5, 0x2

    .line 148
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->fileName:Ljava/lang/String;

    aput-object v2, v5, v6

    aput-object p2, v5, v7

    const-string p2, "onLogUploadStart, delete old log file: %s, process: %s"

    invoke-static {v1, p2, v5}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-static {v4}, Lcom/ulog/uploader/utils/UploadUtils;->deleteFile(Ljava/io/File;)Z

    .line 151
    :cond_5
    new-instance p2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v3, p3}, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    goto :goto_1

    .line 130
    :cond_6
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->fileName:Ljava/lang/String;

    .line 131
    iput-object v3, v2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->times:Ljava/lang/String;

    .line 132
    iput-object p3, v2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->date:Ljava/lang/String;

    goto :goto_1

    .line 157
    :cond_7
    new-instance v2, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v3, p3}, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_1
    invoke-static {v0, v2}, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->writeRetryProperty(Ljava/io/File;Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;)V

    return-void

    :cond_8
    :goto_2
    const-string p1, "onLogUploadStart uploadFile is not exist, just return"

    .line 122
    invoke-static {v1, p1}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onULogUpLoadCheck()V
    .locals 12

    .line 80
    iget-boolean v0, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->isRetryEnable:Z

    const-string v1, "ULog.UpgradePatchRetry"

    if-nez v0, :cond_0

    const-string v0, "onULogUpLoadCheck retry disabled, just return"

    .line 81
    invoke-static {v1, v0}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->retryInfoDirectory:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->retryInfoDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 92
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    .line 93
    invoke-static {v6}, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->readRetryProperty(Ljava/io/File;)Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;

    move-result-object v7

    .line 94
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 95
    iget-object v9, v7, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->fileName:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v7, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->times:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v7, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->date:Ljava/lang/String;

    if-nez v9, :cond_2

    goto :goto_1

    .line 100
    :cond_2
    new-instance v9, Ljava/io/File;

    iget-object v10, v7, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->fileName:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 102
    new-array v7, v3, [Ljava/lang/Object;

    .line 103
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "onULogUpLoadCheck, upload ulog file:%s is not exist, just return"

    .line 102
    invoke-static {v1, v8, v7}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {v6}, Lcom/ulog/uploader/utils/UploadUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_2

    .line 107
    :cond_3
    iget-object v6, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->uploadClient:Lcom/ulog/uploader/client/UploadClient;

    .line 108
    invoke-virtual {v6}, Lcom/ulog/uploader/client/UploadClient;->getDefaultUploadCallback()Lcom/ulog/uploader/callback/ULogUploadCallback;

    move-result-object v10

    iget-object v11, v7, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->date:Ljava/lang/String;

    .line 107
    invoke-static {v9, v6, v10, v8, v11}, Lcom/ulog/uploader/utils/UploadUtils;->uploadFile(Ljava/io/File;Lcom/ulog/uploader/client/UploadClient;Lcom/ulog/uploader/callback/ULogUploadCallback;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 109
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v7, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->fileName:Ljava/lang/String;

    aput-object v8, v6, v2

    iget-object v8, v7, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->times:Ljava/lang/String;

    aput-object v8, v6, v3

    const/4 v8, 0x2

    iget-object v7, v7, Lcom/ulog/uploader/client/UpgradeLogRetry$RetryInfo;->date:Ljava/lang/String;

    aput-object v7, v6, v8

    const-string v7, "onULogUpLoadCheck, retry upload ulog file:%s, times:%s, date:%s"

    invoke-static {v1, v7, v6}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 96
    :cond_4
    :goto_1
    invoke-static {v6}, Lcom/ulog/uploader/utils/UploadUtils;->deleteFile(Ljava/io/File;)Z

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onULogUpLoadCheck processFile is illegal, file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-void

    .line 86
    :cond_6
    :goto_3
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->retryInfoDirectory:Ljava/io/File;

    aput-object v3, v0, v2

    const-string v2, "onULogUpLoadCheck retryInfoDirectory %s is not exist, just return"

    invoke-static {v1, v2, v0}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 1

    if-gtz p1, :cond_0

    const-string p1, "ULog.UpgradePatchRetry"

    const-string v0, "max count must large than 0"

    .line 73
    invoke-static {p1, v0}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    iput p1, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->maxRetryCount:I

    return-void
.end method

.method public setRetryEnable(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/ulog/uploader/client/UpgradeLogRetry;->isRetryEnable:Z

    return-void
.end method
