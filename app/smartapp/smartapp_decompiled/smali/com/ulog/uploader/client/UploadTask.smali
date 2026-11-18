.class public Lcom/ulog/uploader/client/UploadTask;
.super Ljava/lang/Object;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ulog/uploader/client/UploadTask$TaskListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ULog.UploadTask"

.field private static final ULOG_SUFFIX:Ljava/lang/String; = "_userlog.ulog"


# instance fields
.field private final mBeginHour:I

.field private final mDateTime:Ljava/lang/String;

.field private final mDelFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndHour:I

.field private final mExtraUploadInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileDate:Ljava/util/Date;

.field private mListener:Lcom/ulog/uploader/client/UploadTask$TaskListener;

.field private final mLogDir:Ljava/lang/String;

.field private final mOriginCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ulog/uploader/callback/ULogUploadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessName:Ljava/lang/String;

.field private final mUploadClient:Lcom/ulog/uploader/client/UploadClient;

.field private final mWrapperInnerCallback:Lcom/ulog/uploader/callback/ULogUploadCallback;


# direct methods
.method public constructor <init>(Lcom/ulog/uploader/client/UploadClient;Ljava/lang/String;Ljava/util/Date;Ljava/lang/ref/WeakReference;IILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ulog/uploader/client/UploadClient;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ulog/uploader/callback/ULogUploadCallback;",
            ">;II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ulog/uploader/client/UploadTask;->mDelFiles:Ljava/util/List;

    .line 63
    iput p5, p0, Lcom/ulog/uploader/client/UploadTask;->mBeginHour:I

    .line 64
    iput p6, p0, Lcom/ulog/uploader/client/UploadTask;->mEndHour:I

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/ulog/uploader/client/UploadTask;->mFileDate:Ljava/util/Date;

    .line 68
    iput-object p4, p0, Lcom/ulog/uploader/client/UploadTask;->mOriginCallback:Ljava/lang/ref/WeakReference;

    .line 70
    iget-object p2, p0, Lcom/ulog/uploader/client/UploadTask;->mFileDate:Ljava/util/Date;

    invoke-static {p2}, Lcom/ulog/uploader/utils/ULogDateUtils;->dateOfFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ulog/uploader/client/UploadTask;->mDateTime:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/ulog/uploader/utils/UploadUtils;->getAllLogDirIfExist(Lcom/ulog/uploader/client/UploadClient;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ulog/uploader/client/UploadTask;->mLogDir:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    .line 75
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/ulog/uploader/client/UploadTask;->mExtraUploadInfo:Ljava/util/Map;

    .line 76
    iget-object p2, p0, Lcom/ulog/uploader/client/UploadTask;->mExtraUploadInfo:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ulog/uploader/client/UploadClient;->getExtraInfo()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 77
    iget-object p1, p0, Lcom/ulog/uploader/client/UploadTask;->mExtraUploadInfo:Ljava/util/Map;

    invoke-interface {p1, p7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 79
    new-instance p1, Lcom/ulog/uploader/client/UploadTask$1;

    invoke-direct {p1, p0}, Lcom/ulog/uploader/client/UploadTask$1;-><init>(Lcom/ulog/uploader/client/UploadTask;)V

    iput-object p1, p0, Lcom/ulog/uploader/client/UploadTask;->mWrapperInnerCallback:Lcom/ulog/uploader/callback/ULogUploadCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ulog/uploader/client/UploadTask;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ulog/uploader/client/UploadTask;->mOriginCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ulog/uploader/client/UploadTask;)Lcom/ulog/uploader/client/UploadTask$TaskListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ulog/uploader/client/UploadTask;->mListener:Lcom/ulog/uploader/client/UploadTask$TaskListener;

    return-object p0
.end method

.method private static convertUtdid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "/"

    const-string v1, "_"

    .line 225
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFormattedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 200
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 201
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    .line 204
    invoke-virtual {v1}, Lcom/ulog/uploader/client/UploadClient;->getProjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v2}, Lcom/ulog/uploader/client/UploadClient;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v2}, Lcom/ulog/uploader/client/UploadClient;->getBuildSeq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v2}, Lcom/ulog/uploader/client/UploadClient;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v2}, Lcom/ulog/uploader/client/UploadClient;->getRom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v2}, Lcom/ulog/uploader/client/UploadClient;->getUtdId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ulog/uploader/client/UploadTask;->convertUtdid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_userlog.ulog"

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, "-"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPeriodLogsAndMakeAFile(Ljava/lang/String;Ljava/util/List;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p2

    const-string v2, "merge error"

    const-string v3, "ULog.UploadTask"

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    .line 364
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_b

    .line 368
    :cond_0
    invoke-direct {p0, v0}, Lcom/ulog/uploader/client/UploadTask;->sortFiles(Ljava/util/List;)V

    .line 370
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 372
    new-instance v7, Lcom/ulog/uploader/utils/PeriodLogsInfo;

    invoke-direct {v7}, Lcom/ulog/uploader/utils/PeriodLogsInfo;-><init>()V

    .line 373
    iput-object v6, v7, Lcom/ulog/uploader/utils/PeriodLogsInfo;->file:Ljava/io/File;

    .line 374
    iget v6, v1, Lcom/ulog/uploader/client/UploadTask;->mBeginHour:I

    iput v6, v7, Lcom/ulog/uploader/utils/PeriodLogsInfo;->beginH:I

    .line 375
    iget v6, v1, Lcom/ulog/uploader/client/UploadTask;->mEndHour:I

    iput v6, v7, Lcom/ulog/uploader/utils/PeriodLogsInfo;->endH:I

    .line 376
    invoke-static {v7}, Lcom/ulog/uploader/utils/UploadUtils;->getPeriodLogs(Lcom/ulog/uploader/utils/PeriodLogsInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 377
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    .line 386
    :cond_3
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_4
    const/4 v7, 0x0

    .line 394
    :try_start_0
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v0, 0x4000

    .line 396
    :try_start_1
    new-array v0, v0, [B

    .line 397
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ulog/uploader/utils/PeriodLogsInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 399
    :try_start_2
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v11, v9, Lcom/ulog/uploader/utils/PeriodLogsInfo;->file:Ljava/io/File;

    const-string/jumbo v12, "r"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 400
    :try_start_3
    iget-wide v11, v9, Lcom/ulog/uploader/utils/PeriodLogsInfo;->beginPos:J

    invoke-virtual {v10, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 401
    iget-wide v11, v9, Lcom/ulog/uploader/utils/PeriodLogsInfo;->endPos:J

    iget-wide v13, v9, Lcom/ulog/uploader/utils/PeriodLogsInfo;->beginPos:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x0

    .line 404
    :goto_2
    invoke-virtual {v10, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_6

    move-object/from16 p1, v5

    int-to-long v4, v7

    add-long/2addr v13, v4

    cmp-long v4, v13, v11

    if-lez v4, :cond_5

    sub-long/2addr v13, v11

    long-to-int v4, v13

    sub-int/2addr v7, v4

    const/4 v4, 0x0

    .line 407
    invoke-virtual {v8, v0, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 410
    invoke-virtual {v8, v0, v4, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v5, p1

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 p1, v5

    .line 422
    :goto_3
    :try_start_4
    invoke-static {v10}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v5, p1

    move-object v7, v10

    const/4 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v7, v10

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v7, v10

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_4
    const/4 v4, 0x0

    .line 414
    :try_start_5
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v2, v5}, Lcom/uc/sdk/ulog/ULog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    invoke-static {v8}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 417
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 418
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 422
    :cond_7
    :try_start_6
    invoke-static {v7}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 434
    invoke-static {v7}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 435
    invoke-static {v8}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_5
    const/4 v2, 0x0

    return v2

    .line 422
    :goto_6
    :try_start_7
    invoke-static {v7}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 423
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 434
    :cond_8
    invoke-static {v7}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 435
    invoke-static {v8}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    return v0

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v10, v7

    :goto_7
    move-object v7, v8

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v8, v7

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v10, v7

    :goto_8
    const/4 v4, 0x0

    .line 426
    :try_start_8
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v2, v5}, Lcom/uc/sdk/ulog/ULog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    invoke-static {v7}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 429
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 430
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 434
    :cond_9
    invoke-static {v10}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 435
    invoke-static {v7}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v8, v7

    :goto_9
    move-object v7, v10

    .line 434
    :goto_a
    invoke-static {v7}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 435
    invoke-static {v8}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 436
    throw v0

    :cond_a
    :goto_b
    const/4 v2, 0x0

    return v2
.end method

.method private isTargetFile(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 442
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v2}, Lcom/ulog/uploader/client/UploadClient;->getProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v2}, Lcom/ulog/uploader/client/UploadClient;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v2}, Lcom/ulog/uploader/client/UploadClient;->getRom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_userlog.ulog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private merge2Files(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_6

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 270
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "ULog.UploadTask"

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    const/4 p3, 0x2

    .line 272
    new-array p3, p3, [Ljava/lang/Object;

    .line 273
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    const-string p1, "merge files, f1 %s and f2 %s is not exist, just return"

    .line 272
    invoke-static {v4, p1, p3}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 276
    invoke-virtual {p1, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 278
    invoke-virtual {p2, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_3
    const/4 v1, 0x0

    .line 284
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 285
    :try_start_1
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v5, 0x4000

    .line 286
    :try_start_2
    new-array v5, v5, [B

    .line 289
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 290
    invoke-virtual {p1, v5, v0, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 293
    :cond_4
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    :goto_1
    :try_start_3
    invoke-virtual {v6, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    if-eq p2, v7, :cond_5

    .line 295
    invoke-virtual {p1, v5, v0, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 307
    :cond_5
    invoke-static {v2}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 308
    invoke-static {v6}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 309
    invoke-static {p1}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_5

    :catch_1
    move-exception p2

    move-object v6, v1

    :goto_2
    move-object v1, p1

    goto :goto_3

    :catchall_2
    move-exception p2

    move-object p1, v1

    goto :goto_5

    :catch_2
    move-exception p2

    move-object v6, v1

    goto :goto_3

    :catchall_3
    move-exception p2

    move-object p1, v1

    move-object v2, p1

    goto :goto_5

    :catch_3
    move-exception p2

    move-object v2, v1

    move-object v6, v2

    :goto_3
    :try_start_4
    const-string p1, "merge error"

    .line 299
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v4, p2, p1, v3}, Lcom/uc/sdk/ulog/ULog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-static {v1}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 302
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 303
    invoke-virtual {p3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 307
    :cond_6
    invoke-static {v2}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 308
    invoke-static {v6}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 309
    invoke-static {v1}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_4
    move-exception p2

    move-object p1, v1

    :goto_4
    move-object v1, v6

    .line 307
    :goto_5
    invoke-static {v2}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 308
    invoke-static {v1}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 309
    invoke-static {p1}, Lcom/ulog/uploader/utils/UploadUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 310
    throw p2

    :cond_7
    :goto_6
    return v0
.end method

.method private selectTargetLogFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ulog/uploader/client/UploadTask;->mLogDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 235
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 236
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ".ulog"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private sortFiles(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 315
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "_\\d{0,9}_\\d{0,9}\\.ulog"

    .line 319
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 320
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 322
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 325
    :cond_1
    new-instance v0, Lcom/ulog/uploader/client/UploadTask$2;

    invoke-direct {v0, p0, v1}, Lcom/ulog/uploader/client/UploadTask$2;-><init>(Lcom/ulog/uploader/client/UploadTask;Ljava/util/Map;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private tryMergeIndexLogFiles(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 247
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 254
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1

    .line 257
    :cond_1
    invoke-direct {p0, p2}, Lcom/ulog/uploader/client/UploadTask;->sortFiles(Ljava/util/List;)V

    add-int/lit8 v0, p1, -0x2

    .line 258
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    sub-int/2addr p1, v2

    .line 259
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 262
    invoke-direct {p0, v0, p1, v1}, Lcom/ulog/uploader/client/UploadTask;->merge2Files(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public doTask()V
    .locals 8

    .line 150
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask;->mWrapperInnerCallback:Lcom/ulog/uploader/callback/ULogUploadCallback;

    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ulog/uploader/client/UploadTask;->mDateTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ulog/uploader/callback/ULogUploadCallback;->onBeforeUpload(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Lcom/ulog/uploader/client/UploadTask;->selectTargetLogFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "ULog.UploadTask"

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask;->mWrapperInnerCallback:Lcom/ulog/uploader/callback/ULogUploadCallback;

    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    iget-object v5, p0, Lcom/ulog/uploader/client/UploadTask;->mDateTime:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/ulog/uploader/callback/ULogUploadCallback;->onLogFileNotFound(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 157
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mFileDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "no suitable log file for process:%s, date:%s"

    invoke-static {v4, v1, v0}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mDelFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 162
    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mDelFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ulog/uploader/client/UploadTask;->mLogDir:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ulog/uploader/client/UploadTask;->mDateTime:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/ulog/uploader/client/UploadTask;->getFormattedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    iget v5, p0, Lcom/ulog/uploader/client/UploadTask;->mBeginHour:I

    const-string/jumbo v6, "try generate target log file %s fail!"

    if-nez v5, :cond_1

    iget v5, p0, Lcom/ulog/uploader/client/UploadTask;->mEndHour:I

    const/16 v7, 0x18

    if-ne v5, v7, :cond_1

    .line 169
    invoke-direct {p0, v1, v0}, Lcom/ulog/uploader/client/UploadTask;->tryMergeIndexLogFiles(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask;->mWrapperInnerCallback:Lcom/ulog/uploader/callback/ULogUploadCallback;

    iget-object v5, p0, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    iget-object v7, p0, Lcom/ulog/uploader/client/UploadTask;->mDateTime:Ljava/lang/String;

    invoke-interface {v0, v5, v7}, Lcom/ulog/uploader/callback/ULogUploadCallback;->onLogFileNotFound(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-static {v4, v6, v0}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask;->mDelFiles:Ljava/util/List;

    invoke-static {v0}, Lcom/ulog/uploader/utils/UploadUtils;->deleteFiles(Ljava/util/List;)Z

    return-void

    .line 178
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/ulog/uploader/client/UploadTask;->getPeriodLogsAndMakeAFile(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask;->mWrapperInnerCallback:Lcom/ulog/uploader/callback/ULogUploadCallback;

    iget-object v5, p0, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    iget-object v7, p0, Lcom/ulog/uploader/client/UploadTask;->mDateTime:Ljava/lang/String;

    invoke-interface {v0, v5, v7}, Lcom/ulog/uploader/callback/ULogUploadCallback;->onLogFileNotFound(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-static {v4, v6, v0}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask;->mDelFiles:Ljava/util/List;

    invoke-static {v0}, Lcom/ulog/uploader/utils/UploadUtils;->deleteFiles(Ljava/util/List;)Z

    return-void

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask;->mDelFiles:Ljava/util/List;

    invoke-static {v0}, Lcom/ulog/uploader/utils/UploadUtils;->deleteFiles(Ljava/util/List;)Z

    .line 189
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->isInited()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v1}, Lcom/ulog/uploader/client/UploadClient;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ulog/uploader/client/UploadTask;->mExtraUploadInfo:Ljava/util/Map;

    iget-object v4, p0, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/ulog/uploader/utils/DeviceInfoUtil;->createWpkFileHeader(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ulog/uploader/client/UploadClient;->addExtraInfo2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mUploadClient:Lcom/ulog/uploader/client/UploadClient;

    iget-object v2, p0, Lcom/ulog/uploader/client/UploadTask;->mWrapperInnerCallback:Lcom/ulog/uploader/callback/ULogUploadCallback;

    iget-object v3, p0, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ulog/uploader/client/UploadTask;->mDateTime:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ulog/uploader/utils/UploadUtils;->uploadFile(Ljava/io/File;Lcom/ulog/uploader/client/UploadClient;Lcom/ulog/uploader/callback/ULogUploadCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 131
    :cond_0
    instance-of v1, p1, Lcom/ulog/uploader/client/UploadTask;

    if-eqz v1, :cond_1

    .line 132
    nop

    nop

    .line 133
    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    iget-object v2, p1, Lcom/ulog/uploader/client/UploadTask;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ulog/uploader/client/UploadTask;->mDateTime:Ljava/lang/String;

    iget-object p1, p1, Lcom/ulog/uploader/client/UploadTask;->mDateTime:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 142
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setListener(Lcom/ulog/uploader/client/UploadTask$TaskListener;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/ulog/uploader/client/UploadTask;->mListener:Lcom/ulog/uploader/client/UploadTask$TaskListener;

    return-void
.end method
