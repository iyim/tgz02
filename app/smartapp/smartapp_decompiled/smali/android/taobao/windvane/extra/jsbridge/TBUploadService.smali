.class public Landroid/taobao/windvane/extra/jsbridge/TBUploadService;
.super Landroid/taobao/windvane/jsbridge/api/WVUploadService;
.source "TBUploadService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final LAST_PIC:Ljava/lang/String; = "\"isLastPic\":\"true\""

.field private static final MUTI_SELECTION:Ljava/lang/String; = "\"mutipleSelection\":\"1\""

.field private static final NOTIFY_ERROR:I = 0x7d3

.field private static final NOTIFY_FINISH:I = 0x7d2

.field private static final NOTIFY_START:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "TBUploadService"


# instance fields
.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVUploadService;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->doMtopUpload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    return-void
.end method

.method static synthetic access$100(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private doMtopUpload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 7

    const-string v0, "TBUploadService"

    :try_start_0
    const-string/jumbo v1, "windvane"

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/taobao/windvane/util/MimeTypeEnum;->JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-virtual {v3}, Landroid/taobao/windvane/util/MimeTypeEnum;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/taobao/windvane/cache/WVCacheManager;->getTempDir(Z)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 170
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroid/taobao/windvane/file/FileManager;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "errorInfo"

    const-string v1, "Failed to copy file!"

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    .line 180
    :cond_0
    new-instance v2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 183
    :try_start_1
    invoke-static {}, Lcom/uploader/export/UploaderCreator;->get()Lcom/uploader/export/IUploaderManager;

    move-result-object v3

    .line 184
    new-instance v4, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$3;

    invoke-direct {v4, p0, p1, v1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$3;-><init>(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;Ljava/io/File;)V

    .line 216
    new-instance v5, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;

    invoke-direct {v5, p0, v2, p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$4;-><init>(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;Landroid/taobao/windvane/jsbridge/WVResult;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    .line 279
    iget-object v6, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v4, v5, v6}, Lcom/uploader/export/IUploaderManager;->uploadAsync(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskListener;Landroid/os/Handler;)Z

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do aus upload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v3

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "try aus upload error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :try_start_2
    new-instance v3, Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-direct {v3}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;-><init>()V

    .line 288
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->setFilePath(Ljava/lang/String;)V

    .line 289
    iget-object v1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->bizCode:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->setBizCode(Ljava/lang/String;)V

    .line 290
    iget-object v1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraData:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->setPrivateData(Ljava/lang/String;)V

    const-string v1, "identifier"

    .line 291
    iget-object v4, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isLastPic"

    .line 292
    iget-boolean v4, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mutipleSelection"

    .line 293
    iget-object v4, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lmtopsdk/mtop/upload/FileUploadMgr;->getInstance()Lmtopsdk/mtop/upload/FileUploadMgr;

    move-result-object v1

    new-instance v4, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;

    invoke-direct {v4, p0, v2, p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$5;-><init>(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;Landroid/taobao/windvane/jsbridge/WVResult;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    iget-boolean v2, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needLogin:Z

    invoke-virtual {v1, v3, v4, v2}, Lmtopsdk/mtop/upload/FileUploadMgr;->addTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/FileUploadBaseListener;Z)V

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do mtop upload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtop sdk not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_2
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private doNormalUpload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 5

    .line 107
    invoke-static {}, Landroid/taobao/windvane/thread/WVThreadPool;->getInstance()Landroid/taobao/windvane/thread/WVThreadPool;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/extra/upload/UploadFileConnection;

    iget-object v2, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    sget-object v3, Landroid/taobao/windvane/util/MimeTypeEnum;->JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

    .line 108
    invoke-virtual {v3}, Landroid/taobao/windvane/util/MimeTypeEnum;->getSuffix()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;

    invoke-direct {v4, p0, p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$2;-><init>(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    invoke-direct {v1, v2, v3, v4}, Landroid/taobao/windvane/extra/upload/UploadFileConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public doUpload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "TBUploadService"

    const-string v0, "UploadParams is null."

    .line 75
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 79
    :cond_0
    iput-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 81
    :try_start_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object p2

    invoke-interface {p2}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TBUploadService bizCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->bizCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->v:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitOffMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    iget-object p2, p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->v:Ljava/lang/String;

    const-string v0, "2.0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 86
    sget-object p2, Landroid/taobao/windvane/WindVaneSDKForTB;->wvAdapter:Landroid/taobao/windvane/extra/WVIAdapter;

    if-eqz p2, :cond_1

    .line 87
    sget-object p2, Landroid/taobao/windvane/WindVaneSDKForTB;->wvAdapter:Landroid/taobao/windvane/extra/WVIAdapter;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/taobao/windvane/extra/WVIAdapter;->getLoginInfo(Landroid/os/Handler;)Ljava/util/Map;

    .line 89
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/thread/WVThreadPool;->getInstance()Landroid/taobao/windvane/thread/WVThreadPool;

    move-result-object p2

    new-instance v0, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$1;

    invoke-direct {v0, p0, p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService$1;-><init>(Landroid/taobao/windvane/extra/jsbridge/TBUploadService;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    invoke-virtual {p2, v0}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->doNormalUpload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string/jumbo v2, "tfsKey"

    const-string v3, "localPath"

    const-string/jumbo v4, "resourceURL"

    const-string/jumbo v5, "url"

    const-string v6, "images"

    const-string v7, "base64Data"

    .line 371
    iget v8, v0, Landroid/os/Message;->what:I

    const-string v9, "\"isLastPic\":\"true\""

    const-string v10, "\"mutipleSelection\":\"1\""

    const-string v11, "TBUploadService"

    const/4 v12, 0x1

    packed-switch v8, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    .line 436
    :pswitch_0
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 437
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVResult;

    .line 438
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    iget-object v3, v1, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string v4, "WVPhoto.Event.uploadPhotoFailed"

    invoke-virtual {v3, v4, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    iget-object v2, v1, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 445
    :cond_0
    iget-object v2, v1, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, v1, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    :cond_2
    :goto_0
    return v12

    .line 378
    :pswitch_1
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_9

    .line 379
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "upload file success, retString: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-virtual {v13}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVResult;

    .line 383
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    .line 393
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    .line 395
    :try_start_1
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 396
    :try_start_2
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 397
    :try_start_3
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 398
    :try_start_4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 399
    :try_start_5
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 400
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v11, v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v17, v11

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v15, v11

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v14, v11

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v13, v11

    move-object v14, v13

    :goto_1
    move-object v15, v14

    :goto_2
    move-object/from16 v16, v15

    :goto_3
    move-object/from16 v17, v16

    .line 403
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_5
    move-object v12, v13

    move-object/from16 v0, v16

    move-object v13, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v6

    .line 405
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 407
    :try_start_6
    invoke-virtual {v6, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    invoke-virtual {v6, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    invoke-virtual {v6, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v13, :cond_5

    .line 412
    invoke-virtual {v6, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 415
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 417
    :cond_5
    :goto_6
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 418
    iget-object v0, v1, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    goto :goto_8

    .line 420
    :cond_6
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v12, :cond_7

    .line 422
    iget-object v0, v1, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    goto :goto_7

    .line 424
    :cond_7
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    move-object/from16 v2, v17

    .line 425
    invoke-virtual {v0, v2, v12}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 426
    iget-object v2, v1, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 429
    :cond_8
    :goto_7
    iget-object v0, v1, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WVPhoto.Event.uploadPhotoSuccess"

    invoke-virtual {v0, v3, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_8
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/cache/WVCacheManager;->getTempDir(Z)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/file/FileAccesser;->deleteFile(Ljava/io/File;)Z

    goto :goto_9

    :cond_9
    const/4 v2, 0x1

    :goto_9
    return v2

    :pswitch_2
    const/4 v2, 0x1

    const-string/jumbo v0, "start upload file ..."

    .line 373
    invoke-static {v11, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, v1, Landroid/taobao/windvane/extra/jsbridge/TBUploadService;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string v3, "WVPhoto.Event.prepareUploadPhotoSuccess"

    const-string/jumbo v4, "{}"

    invoke-virtual {v0, v3, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
