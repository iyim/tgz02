.class final Lcom/uc/webview/export/internal/setup/bz;
.super Lcom/uc/webview/export/internal/update/b$a;
.source "U4Source"


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/bo;

.field final synthetic c:Lcom/uc/webview/export/internal/setup/bw;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bw;Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/io/File;Lcom/uc/webview/export/internal/setup/bo;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    iput-object p4, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Ljava/io/File;

    iput-object p5, p0, Lcom/uc/webview/export/internal/setup/bz;->b:Lcom/uc/webview/export/internal/setup/bo;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/uc/webview/export/internal/update/b$a;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/uc/webview/export/cyclone/update/UpdateService;)V
    .locals 4

    const/4 v0, 0x0

    .line 230
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v2, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v2, :cond_0

    .line 232
    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 234
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Ljava/io/File;

    .line 236
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v2, v0

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bz;->a:Ljava/io/File;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 241
    invoke-interface {p1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->getExtractDir()Ljava/io/File;

    move-result-object v2

    .line 240
    :cond_2
    invoke-static {v1, v3, v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    :goto_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/uc/webview/export/internal/update/b$a;->a(Lcom/uc/webview/export/cyclone/update/UpdateService;)V

    .line 248
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "sdk_ucm_wifi"

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/uc/webview/export/internal/setup/bw;->callbackStat(Landroid/util/Pair;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/uc/webview/export/cyclone/update/UpdateService;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/bw;->a(Lcom/uc/webview/export/internal/setup/bw;)Z

    .line 258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-super {p0, p1}, Lcom/uc/webview/export/internal/update/b$a;->b(Lcom/uc/webview/export/cyclone/update/UpdateService;)V

    return-void

    :catchall_0
    move-exception p1

    .line 258
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Lcom/uc/webview/export/cyclone/update/UpdateService;)V
    .locals 10

    .line 264
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/bw;->a(Lcom/uc/webview/export/internal/setup/bw;)Z

    .line 266
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/bw;->getExtraException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    if-nez v0, :cond_1

    .line 271
    invoke-interface {p1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->getException()Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    .line 277
    instance-of v5, v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    if-eqz v5, :cond_0

    nop

    nop

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {v5, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 279
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCKnownException;->errCode()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 281
    :try_start_2
    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCKnownException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :try_start_3
    const-string v5, "httpcode:"

    .line 285
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x9

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 289
    :catch_1
    :try_start_4
    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCKnownException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 293
    :catch_2
    :try_start_5
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    new-instance v5, Landroid/util/Pair;

    const-string v6, "sdk_upd"

    new-instance v7, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v7}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string v8, "cnt"

    const-string v9, "1"

    .line 296
    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v7

    const-string v8, "code"

    .line 297
    invoke-virtual {v7, v8, v4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v7, "err"

    .line 298
    invoke-virtual {v4, v7, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string v4, "cls"

    .line 299
    invoke-virtual {v1, v4, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string v2, "msg"

    .line 300
    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v0, v5}, Lcom/uc/webview/export/internal/setup/bw;->callbackStat(Landroid/util/Pair;)V

    .line 304
    :cond_1
    invoke-interface {p1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-interface {p1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bw;->setExtraException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    const-string v1, "downloadException"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bw;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 311
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/uc/webview/export/internal/update/b$a;->c(Lcom/uc/webview/export/cyclone/update/UpdateService;)V

    return-void

    :catchall_0
    move-exception p1

    .line 266
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final d(Lcom/uc/webview/export/cyclone/update/UpdateService;)V
    .locals 2

    .line 322
    invoke-super {p0, p1}, Lcom/uc/webview/export/internal/update/b$a;->d(Lcom/uc/webview/export/cyclone/update/UpdateService;)V

    .line 323
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bz;->b:Lcom/uc/webview/export/internal/setup/bo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/uc/webview/export/cyclone/update/UpdateService;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/bw;->b(Lcom/uc/webview/export/internal/setup/bw;)Z

    .line 330
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-interface {p1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 332
    invoke-super {p0, p1}, Lcom/uc/webview/export/internal/update/b$a;->e(Lcom/uc/webview/export/cyclone/update/UpdateService;)V

    .line 333
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bz;->b:Lcom/uc/webview/export/internal/setup/bo;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 330
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f(Lcom/uc/webview/export/cyclone/update/UpdateService;)V
    .locals 2

    .line 338
    invoke-super {p0, p1}, Lcom/uc/webview/export/internal/update/b$a;->f(Lcom/uc/webview/export/cyclone/update/UpdateService;)V

    .line 340
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bz;->b:Lcom/uc/webview/export/internal/setup/bo;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final g(Lcom/uc/webview/export/cyclone/update/UpdateService;)V
    .locals 1

    .line 345
    invoke-super {p0, p1}, Lcom/uc/webview/export/internal/update/b$a;->g(Lcom/uc/webview/export/cyclone/update/UpdateService;)V

    .line 346
    invoke-interface {p1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->getDownloadFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/setup/bw;->a(Lcom/uc/webview/export/internal/setup/bw;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    const-string v0, "downloadFileDelete"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/bw;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 351
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final h(Lcom/uc/webview/export/cyclone/update/UpdateService;)V
    .locals 1

    .line 357
    invoke-super {p0, p1}, Lcom/uc/webview/export/internal/update/b$a;->h(Lcom/uc/webview/export/cyclone/update/UpdateService;)V

    .line 358
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    invoke-interface {p1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->getPercent()I

    move-result p1

    iput p1, v0, Lcom/uc/webview/export/internal/setup/bw;->mPercent:I

    .line 359
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    const-string v0, "updateProgress"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/bw;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bz;->c:Lcom/uc/webview/export/internal/setup/bw;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
