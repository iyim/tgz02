.class public Lcom/ta/audid/upload/UtdidUploadTask;
.super Ljava/lang/Object;
.source "UtdidUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final POST_HTTP_URL:Ljava/lang/String; = "https://audid-api.taobao.com/v2.0/a/audid/req/"

.field private static volatile bRunning:Z = false


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/ta/audid/upload/UtdidUploadTask;->mContext:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcom/ta/audid/upload/UtdidUploadTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildPostDataFromDB(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ta/audid/store/UtdidContent;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    invoke-static {}, Lcom/ta/audid/device/AppUtdid;->getInstance()Lcom/ta/audid/device/AppUtdid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/device/AppUtdid;->getCurrentAppUtdid()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 119
    :cond_1
    invoke-static {v1}, Lcom/ta/audid/store/UtdidContentBuilder;->buildUDID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 123
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 124
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ta/audid/store/UtdidContent;

    invoke-virtual {v3}, Lcom/ta/audid/store/UtdidContent;->getDecodedContent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    .line 125
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_2
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 130
    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ta/audid/store/UtdidContentUtil;->getEncodedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method private reqServer(Ljava/lang/String;)Z
    .locals 6

    const-string v0, ""

    const/4 v1, 0x1

    const-string v2, "https://audid-api.taobao.com/v2.0/a/audid/req/"

    .line 95
    invoke-static {v2, p1, v1}, Lcom/ta/audid/upload/HttpUtils;->sendRequest(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ta/audid/upload/HttpResponse;

    move-result-object p1

    const/4 v2, 0x0

    .line 98
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/ta/audid/upload/HttpResponse;->data:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 100
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :goto_0
    iget-object p1, p1, Lcom/ta/audid/upload/HttpResponse;->signature:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ta/audid/upload/HttpResponse;->checkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    invoke-static {v0}, Lcom/ta/audid/upload/BizResponse;->parseResult(Ljava/lang/String;)Lcom/ta/audid/upload/BizResponse;

    move-result-object p1

    iget p1, p1, Lcom/ta/audid/upload/BizResponse;->code:I

    invoke-static {p1}, Lcom/ta/audid/upload/BizResponse;->isSuccess(I)Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method private upload()V
    .locals 5

    .line 37
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->d()V

    .line 38
    iget-object v0, p0, Lcom/ta/audid/upload/UtdidUploadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/audid/utils/NetworkInfoUtils;->isConnectInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    sget-boolean v0, Lcom/ta/audid/upload/UtdidUploadTask;->bRunning:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 42
    sput-boolean v0, Lcom/ta/audid/upload/UtdidUploadTask;->bRunning:Z

    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->trylockUpload()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Other Process is Uploading"

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    sput-boolean v1, Lcom/ta/audid/upload/UtdidUploadTask;->bRunning:Z

    .line 67
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUpload()V

    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 54
    :try_start_1
    invoke-direct {p0}, Lcom/ta/audid/upload/UtdidUploadTask;->uploadFromDataBase()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x3e8

    .line 58
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 66
    sput-boolean v1, Lcom/ta/audid/upload/UtdidUploadTask;->bRunning:Z

    .line 67
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUpload()V

    throw v0

    .line 66
    :catch_1
    :cond_3
    :goto_1
    sput-boolean v1, Lcom/ta/audid/upload/UtdidUploadTask;->bRunning:Z

    .line 67
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUpload()V

    :cond_4
    return-void
.end method

.method private uploadFromDataBase()Z
    .locals 5

    .line 72
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->d()V

    .line 73
    invoke-static {}, Lcom/ta/audid/store/UtdidContentSqliteStore;->getInstance()Lcom/ta/audid/store/UtdidContentSqliteStore;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ta/audid/store/UtdidContentSqliteStore;->get(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    invoke-direct {p0, v0}, Lcom/ta/audid/upload/UtdidUploadTask;->buildPostDataFromDB(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "postData is empty"

    invoke-static {v2, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 84
    :cond_1
    invoke-direct {p0, v3}, Lcom/ta/audid/upload/UtdidUploadTask;->reqServer(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_2

    .line 86
    invoke-static {}, Lcom/ta/audid/store/UtdidContentSqliteStore;->getInstance()Lcom/ta/audid/store/UtdidContentSqliteStore;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ta/audid/store/UtdidContentSqliteStore;->delete(Ljava/util/List;)I

    .line 87
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "upload success"

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "upload fail"

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2

    .line 75
    :cond_3
    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "log is empty"

    invoke-static {v2, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 30
    :try_start_0
    invoke-direct {p0}, Lcom/ta/audid/upload/UtdidUploadTask;->upload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    invoke-static {v2, v0, v1}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
