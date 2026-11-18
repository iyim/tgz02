.class public Lcom/taobao/downloader/download/impl/DMDownloader;
.super Ljava/lang/Object;
.source "DMDownloader.java"

# interfaces
.implements Lcom/taobao/downloader/download/IDownloader;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static downloadManager:Landroid/app/DownloadManager;


# instance fields
.field private downloadChangeObserver:Landroid/database/ContentObserver;

.field private mDownloadId:J

.field private mListener:Lcom/taobao/downloader/download/IListener;

.field private mTask:Lcom/taobao/downloader/request/task/SingleTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    sget-object v0, Lcom/taobao/downloader/Configuration;->sContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    sput-object v0, Lcom/taobao/downloader/download/impl/DMDownloader;->downloadManager:Landroid/app/DownloadManager;

    const-string v0, "content://downloads/my_downloads"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/taobao/downloader/download/impl/DMDownloader;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/taobao/downloader/download/impl/DMDownloader;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/taobao/downloader/download/impl/DMDownloader;->queryDownloadStatus()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private destroy()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->downloadChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/taobao/downloader/Configuration;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->downloadChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private hasPermission()Z
    .locals 2

    .line 96
    sget-object v0, Lcom/taobao/downloader/Configuration;->sContext:Landroid/content/Context;

    const-string v1, "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private queryDownloadStatus()V
    .locals 8

    .line 113
    iget-wide v0, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mDownloadId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 117
    :cond_0
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    .line 118
    new-array v2, v1, [J

    iget-wide v3, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mDownloadId:J

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 119
    sget-object v2, Lcom/taobao/downloader/download/impl/DMDownloader;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "status"

    .line 121
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "reason"

    .line 123
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "title"

    .line 124
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v6, "total_size"

    .line 125
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "bytes_so_far"

    .line 127
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 129
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 131
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 134
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Downloaded "

    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    iget-object v4, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mListener:Lcom/taobao/downloader/download/IListener;

    int-to-long v6, v7

    invoke-interface {v4, v6, v7}, Lcom/taobao/downloader/download/IListener;->onProgress(J)V

    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "tag"

    invoke-static {v6, v3, v4}, Lcom/taobao/downloader/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v2, v1, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    const/16 v0, 0x10

    if-eq v2, v0, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "STATUS_FAILED"

    invoke-static {v6, v1, v0}, Lcom/taobao/downloader/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v2, "local_filename"

    .line 155
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    iget-object v2, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iput-object v0, v2, Lcom/taobao/downloader/request/task/SingleTask;->storeFilePath:Ljava/lang/String;

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iput-boolean v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->success:Z

    .line 162
    iget-object v1, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mListener:Lcom/taobao/downloader/download/IListener;

    invoke-interface {v1, v0}, Lcom/taobao/downloader/download/IListener;->onResult(Lcom/taobao/downloader/request/task/SingleTask;)V

    .line 163
    invoke-direct {p0}, Lcom/taobao/downloader/download/impl/DMDownloader;->destroy()V

    goto :goto_0

    .line 145
    :cond_4
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "STATUS_PAUSED"

    invoke-static {v6, v1, v0}, Lcom/taobao/downloader/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_5
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "STATUS_PENDING"

    invoke-static {v6, v1, v0}, Lcom/taobao/downloader/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_6
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "STATUS_RUNNING"

    invoke-static {v6, v1, v0}, Lcom/taobao/downloader/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 102
    sget-object v0, Lcom/taobao/downloader/download/impl/DMDownloader;->downloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    iget-wide v2, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mDownloadId:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 103
    invoke-direct {p0}, Lcom/taobao/downloader/download/impl/DMDownloader;->destroy()V

    return-void
.end method

.method public download(Lcom/taobao/downloader/request/task/SingleTask;Lcom/taobao/downloader/download/IListener;)V
    .locals 8

    .line 37
    iput-object p2, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mListener:Lcom/taobao/downloader/download/IListener;

    .line 38
    iput-object p1, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    .line 40
    new-instance p2, Landroid/app/DownloadManager$Request;

    iget-object v0, p1, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 44
    iget-object v0, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget v0, v0, Lcom/taobao/downloader/request/Param;->network:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v4, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget v4, v4, Lcom/taobao/downloader/request/Param;->network:I

    and-int/2addr v4, v3

    const/4 v5, 0x4

    if-eq v4, v3, :cond_1

    iget-object v4, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget v4, v4, Lcom/taobao/downloader/request/Param;->network:I

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    :cond_1
    or-int/lit8 v0, v0, 0x2

    .line 51
    :cond_2
    invoke-virtual {p2, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 53
    iget-object v0, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget v0, v0, Lcom/taobao/downloader/request/Param;->network:I

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v0, v4, :cond_3

    .line 54
    invoke-virtual {p2, v2}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    .line 57
    :cond_3
    iget-object v0, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget-object v0, v0, Lcom/taobao/downloader/request/Param;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 58
    iget-object v0, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget-object v0, v0, Lcom/taobao/downloader/request/Param;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 59
    iget-object v0, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget-object v0, v0, Lcom/taobao/downloader/request/Param;->description:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 62
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/downloader/request/task/SingleTask;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 65
    invoke-virtual {p2, v4}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 69
    iget-object v4, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/taobao/downloader/request/task/SingleTask;->storeFilePath:Ljava/lang/String;

    .line 71
    iget-object p1, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget-boolean p1, p1, Lcom/taobao/downloader/request/Param;->notificationUI:Z

    if-nez p1, :cond_5

    .line 72
    invoke-virtual {p2, v2}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 73
    invoke-direct {p0}, Lcom/taobao/downloader/download/impl/DMDownloader;->hasPermission()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 74
    invoke-virtual {p2, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    goto :goto_1

    .line 77
    :cond_5
    iget-object p1, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object p1, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget p1, p1, Lcom/taobao/downloader/request/Param;->notificationVisibility:I

    invoke-virtual {p2, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 80
    :cond_6
    :goto_1
    sget-object p1, Lcom/taobao/downloader/download/impl/DMDownloader;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {p1, p2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->mDownloadId:J

    .line 82
    new-instance p1, Lcom/taobao/downloader/download/impl/DMDownloader$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/taobao/downloader/download/impl/DMDownloader$1;-><init>(Lcom/taobao/downloader/download/impl/DMDownloader;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->downloadChangeObserver:Landroid/database/ContentObserver;

    .line 89
    sget-object p1, Lcom/taobao/downloader/Configuration;->sContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/taobao/downloader/download/impl/DMDownloader;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/taobao/downloader/download/impl/DMDownloader;->downloadChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/taobao/downloader/download/impl/DMDownloader;->destroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
