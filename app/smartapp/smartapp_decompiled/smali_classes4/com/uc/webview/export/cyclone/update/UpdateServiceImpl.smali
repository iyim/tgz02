.class public Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/cyclone/update/UpdateService;
.implements Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;
.implements Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;


# static fields
.field private static final DOWNLOAD_RETRY_DELAY_MILLIS:J = 0xea60L

.field private static final DOWNLOAD_RETRY_MAX_MILLIS:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String; = "UpdateService"

.field private static final sPendingTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/uc/webview/export/cyclone/update/UpdateService$EventCallback;

.field private mCheckedFile:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

.field private mException:Ljava/lang/Throwable;

.field private mIsCore:Z

.field private mLastModified:J

.field private mLastPercent:I

.field private final mOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRealPercent:I

.field private mRetryMaxWaitMillis:J

.field private mRetryWaitMillis:J

.field private mRootDir:Ljava/io/File;

.field private mStartDelayMillis:J

.field private mTotalSize:J

.field private mTotalWaitMillis:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->sPendingTasks:Ljava/util/Set;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 4

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mOptions:Ljava/util/Map;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mLastPercent:I

    .line 52
    iput v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRealPercent:I

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mTotalWaitMillis:J

    const-wide/32 v2, 0xea60

    .line 54
    iput-wide v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRetryWaitMillis:J

    const-wide/32 v2, 0x240c8400

    .line 55
    iput-wide v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRetryMaxWaitMillis:J

    .line 56
    iput-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mStartDelayMillis:J

    .line 57
    iput-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mTotalSize:J

    .line 58
    iput-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mLastModified:J

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mCheckedFile:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mException:Ljava/lang/Throwable;

    return-void
.end method

.method public static create()Lcom/uc/webview/export/cyclone/update/UpdateService;
    .locals 1
    .annotation build Lcom/uc/webview/export/cyclone/Constant;
    .end annotation

    .line 64
    new-instance v0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;

    invoke-direct {v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;-><init>()V

    return-object v0
.end method

.method private getSizePercent(J)I
    .locals 6

    .line 367
    iget-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xa

    mul-long p1, p1, v4

    div-long/2addr p1, v0

    mul-long p1, p1, v4

    :goto_0
    const-wide/16 v0, 0x64

    cmp-long v4, p1, v0

    if-gtz v4, :cond_2

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    long-to-int p2, p1

    return p2

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private handleConfigs(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    .line 293
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mUrl:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 297
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 298
    sget-object v1, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->sPendingTasks:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 300
    sget-object v1, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->sPendingTasks:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "ctx"

    .line 302
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mContext:Landroid/content/Context;

    .line 303
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    const-string v0, "rootdir"

    .line 306
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRootDir:Ljava/io/File;

    .line 307
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRootDir:Ljava/io/File;

    if-eqz v0, :cond_5

    const-string v0, "checkfile"

    .line 310
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 311
    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mCheckedFile:Ljava/lang/String;

    :cond_0
    const-string v0, "upcore"

    .line 313
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mIsCore:Z

    :cond_1
    const-string v0, "retrywait"

    .line 316
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRetryWaitMillis:J

    :cond_2
    const-string v0, "retrymax"

    .line 319
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 320
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRetryMaxWaitMillis:J

    :cond_3
    const-string v0, "delays"

    .line 322
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    .line 323
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mStartDelayMillis:J

    :cond_4
    return-void

    .line 308
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Download root dir is empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 304
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Context is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate UpdateService:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 295
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Download url is empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onDownloadFinished()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 329
    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x7

    invoke-direct {p0, v3, v2}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {p0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->getExtractDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 336
    new-instance v4, Lcom/uc/webview/export/cyclone/update/UpdateFlagMarker;

    iget-object v5, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mCheckedFile:Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Lcom/uc/webview/export/cyclone/update/UpdateFlagMarker;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/update/UpdateFlagMarker;->markStart()Z

    const/16 v2, 0xb

    .line 338
    new-array v5, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v5}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/update/UpdateFlagMarker;->markFinished()Z

    .line 342
    iget-object v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->delete()V

    .line 343
    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mIsCore:Z

    if-eqz v4, :cond_0

    const-string v4, "sdk_ucm_s"

    goto :goto_0

    :cond_0
    const-string v4, "sdk_ucm_so"

    :goto_0
    aput-object v4, v2, v1

    invoke-direct {p0, v2}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onStat([Ljava/lang/Object;)V

    .line 346
    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 347
    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 334
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Get extract dir failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "onDownloadFinished failed"

    .line 349
    invoke-direct {p0, v3, v2}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->printLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    iput-object v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mException:Ljava/lang/Throwable;

    .line 351
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "sdk_dec7z"

    aput-object v4, v3, v1

    invoke-direct {p0, v3}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onStat([Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 352
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sdk_ucm_le"

    aput-object v4, v3, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-direct {p0, v3}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onStat([Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 353
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mCallback:Lcom/uc/webview/export/cyclone/update/UpdateService$EventCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0, p2}, Lcom/uc/webview/export/cyclone/update/UpdateService$EventCallback;->onCalled(ILcom/uc/webview/export/cyclone/update/UpdateService;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private varargs onStat([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 358
    invoke-direct {p0, v0, p1}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 372
    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->printLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "UpdateService"

    .line 376
    invoke-virtual {p0, v0, p1, p2}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 148
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->sPendingTasks:Ljava/util/Set;

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getDownloadDir()Ljava/io/File;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/update/Utils;->getDownloadDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadFile()Ljava/io/File;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->getFilePath()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadLastModified()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mLastModified:J

    return-wide v0
.end method

.method public getDownloadTotalSize()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mTotalSize:J

    return-wide v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getExtractDir()Ljava/io/File;
    .locals 6

    .line 134
    iget-wide v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mTotalSize:J

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRootDir:Ljava/io/File;

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mUrl:Ljava/lang/String;

    iget-wide v4, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mLastModified:J

    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/cyclone/update/Utils;->getExtractDir(Ljava/io/File;Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getPercent()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRealPercent:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onDownloadBegin()V
    .locals 2

    const/4 v0, 0x0

    .line 198
    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDownloadCheck()V
    .locals 2

    const/4 v0, 0x0

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDownloadException(Ljava/lang/Throwable;)V
    .locals 7

    .line 247
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mException:Ljava/lang/Throwable;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    .line 250
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sdk_ucm_le"

    aput-object v4, v3, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-direct {p0, v3}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onStat([Ljava/lang/Object;)V

    .line 254
    :cond_0
    iget-wide v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mTotalWaitMillis:J

    iget-wide v4, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRetryWaitMillis:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mTotalWaitMillis:J

    .line 255
    iget-wide v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mTotalWaitMillis:J

    iget-wide v4, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRetryMaxWaitMillis:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const/16 p1, 0xc

    .line 256
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object p1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    iget-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRetryWaitMillis:J

    invoke-virtual {p1, v0, v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->start(J)V

    return-void

    .line 260
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "sdk_ucm_e1"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onStat([Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 262
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Download aborted because of up to 10080 retries. Last exception is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mException:Ljava/lang/Throwable;

    const/16 p1, 0xf

    .line 266
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    .line 267
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDownloadFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->delete()V

    .line 235
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mException:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 236
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "sdk_dec7z_s"

    aput-object v1, p1, v0

    invoke-direct {p0, p1}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onStat([Ljava/lang/Object;)V

    .line 237
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDownloadFileDeleted()V
    .locals 2

    const/4 v0, 0x0

    .line 278
    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDownloadFileExists()V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onDownloadFinished()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDownloadRecovered()V
    .locals 2

    const/4 v0, 0x0

    .line 242
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDownloadSuccess()V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onDownloadFinished()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onHeaderReceived(Ljava/lang/Throwable;)Z
    .locals 5

    const/4 v0, 0x1

    .line 161
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 v3, 0xe

    invoke-direct {p0, v3, v1}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->getTotalSize()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mTotalSize:J

    .line 167
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->getLastModified()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mLastModified:J

    .line 169
    invoke-virtual {p0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->getExtractDir()Ljava/io/File;

    move-result-object v1

    .line 170
    iget-object v3, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mCheckedFile:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/uc/webview/export/cyclone/update/UpdateFlagMarker;->isFinished(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "onHeaderReceived file exists"

    .line 171
    invoke-direct {p0, p1}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->printLog(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 172
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object p1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-virtual {p1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->stop()V

    return v2

    .line 177
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->getCurrentSize()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->getSizePercent(J)I

    move-result v1

    const/4 v3, 0x2

    .line 179
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sdk_ucm_p"

    aput-object v4, v3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-direct {p0, v3}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onStat([Ljava/lang/Object;)V

    const/4 v1, 0x7

    .line 180
    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "onHeaderReceived failed"

    .line 182
    invoke-direct {p0, v1, p1}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->printLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 188
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mException:Ljava/lang/Throwable;

    .line 189
    iget-object p1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-virtual {p1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->stop()V

    const/4 p1, 0x5

    .line 190
    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_3
    return v0
.end method

.method public onProgressChanged()V
    .locals 12

    .line 203
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->getCurrentSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->getSizePercent(J)I

    move-result v0

    const/4 v1, 0x0

    .line 205
    :try_start_0
    iget v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mLastPercent:I

    if-gt v0, v2, :cond_0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_4

    .line 206
    :cond_0
    iget v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mLastPercent:I

    add-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mLastPercent:I

    const/4 v2, 0x2

    .line 207
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "sdk_ucm_p"

    aput-object v4, v3, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-direct {p0, v3}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onStat([Ljava/lang/Object;)V

    .line 209
    iget-object v3, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-virtual {v3}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->getFilePath()Ljava/io/File;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    .line 211
    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v3

    const-wide/32 v8, 0x100000

    .line 212
    div-long v8, v3, v8

    .line 213
    new-array v10, v2, [Ljava/lang/Object;

    const-string v11, "sdk_ucm_dm"

    aput-object v11, v10, v1

    long-to-int v9, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v5

    invoke-direct {p0, v10}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onStat([Ljava/lang/Object;)V

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    move-wide v3, v8

    goto :goto_0

    :cond_1
    const-wide/16 v10, 0xa

    mul-long v3, v3, v10

    .line 215
    div-long/2addr v3, v6

    mul-long v3, v3, v10

    :goto_0
    const-wide/16 v6, 0x64

    cmp-long v10, v3, v6

    if-gtz v10, :cond_3

    cmp-long v6, v3, v8

    if-gez v6, :cond_2

    goto :goto_1

    :cond_2
    long-to-int v4, v3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, -0x1

    .line 217
    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "sdk_ucm_dp"

    aput-object v3, v2, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onStat([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :catch_0
    :cond_4
    iget v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRealPercent:I

    if-le v0, v2, :cond_5

    .line 222
    iput v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mRealPercent:I

    const/4 v0, 0x7

    .line 223
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x3

    .line 285
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p2, 0x2

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->onEvent(I[Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setCallback(Lcom/uc/webview/export/cyclone/update/UpdateService$EventCallback;)Lcom/uc/webview/export/cyclone/update/UpdateService;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mCallback:Lcom/uc/webview/export/cyclone/update/UpdateService$EventCallback;

    return-object p0
.end method

.method public setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public start()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mOptions:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->handleConfigs(Ljava/util/Map;)V

    .line 84
    new-instance v0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;)V

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    .line 85
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mOptions:Ljava/util/Map;

    const-string v2, "checklm"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->setCheckLastModified(Ljava/lang/Boolean;)Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mOptions:Ljava/util/Map;

    const-string v2, "connto"

    .line 86
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->setConnectTimeOut(Ljava/lang/Integer;)Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mOptions:Ljava/util/Map;

    const-string v2, "readto"

    .line 87
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->setReadTimeOut(Ljava/lang/Integer;)Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    move-result-object v0

    iget-wide v1, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mStartDelayMillis:J

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->start(J)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->stop()V

    :cond_0
    return-void
.end method

.method public stopWith(Ljava/lang/Runnable;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UpdateServiceImpl;->mDownloader:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->stopWith(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
