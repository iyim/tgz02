.class public Lcom/uc/sdk/ulog/ULogSetup$Builder;
.super Ljava/lang/Object;
.source "ULogSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/sdk/ulog/ULogSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private isDebug:Z

.field private logEnable:Z

.field private logFileDir:Ljava/lang/String;

.field private logFileNamePrefix:Ljava/lang/String;

.field private logLevel:I

.field private logSyncWrite:Z

.field private maxFileSize:J

.field private maxLogAliveDay:I

.field private publicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 227
    iput-wide v0, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->maxFileSize:J

    const/4 v0, -0x1

    .line 228
    iput v0, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->maxLogAliveDay:I

    const/4 v1, 0x0

    .line 229
    iput-boolean v1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->isDebug:Z

    const/4 v1, 0x1

    .line 230
    iput-boolean v1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logEnable:Z

    .line 231
    iput v0, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logLevel:I

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileNamePrefix:Ljava/lang/String;

    .line 233
    iput-object v0, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileDir:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->publicKey:Ljava/lang/String;

    .line 235
    iput-boolean v1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logSyncWrite:Z

    if-eqz p1, :cond_0

    .line 242
    iput-object p1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->context:Landroid/content/Context;

    return-void

    .line 240
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "ulog init, context is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/uc/sdk/ulog/ULogSetup;
    .locals 18

    move-object/from16 v0, p0

    .line 309
    iget-object v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/ulog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 311
    iget-object v2, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    iput-object v14, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileDir:Ljava/lang/String;

    .line 319
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->publicKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "a05033cfb9e2bb67cecd14353339cef78d40ea6f8397fdf8caec4df3812ff2ef8b0f3057e4b72c40390a1bab426cb0531668ecf36c0df6350100711c0f264156"

    .line 320
    iput-object v2, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->publicKey:Ljava/lang/String;

    .line 323
    :cond_1
    iget-object v2, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileNamePrefix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 324
    iget-object v2, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/uc/sdk/ulog/ULogUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "NONE"

    .line 326
    iput-object v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileNamePrefix:Ljava/lang/String;

    goto :goto_1

    .line 328
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MAIN"

    .line 329
    iput-object v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileNamePrefix:Ljava/lang/String;

    goto :goto_1

    .line 331
    :cond_3
    iput-object v2, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileNamePrefix:Ljava/lang/String;

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 334
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileNamePrefix:Ljava/lang/String;

    goto :goto_1

    .line 337
    :cond_4
    iget-object v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileNamePrefix:Ljava/lang/String;

    .line 343
    :cond_5
    :goto_1
    iget v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 345
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->getLogLevel()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    .line 346
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->getLogLevel()I

    move-result v1

    iput v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logLevel:I

    goto :goto_2

    .line 347
    :cond_6
    iget-boolean v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->isDebug:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    .line 348
    iput v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logLevel:I

    goto :goto_2

    :cond_7
    const/4 v1, 0x2

    .line 350
    iput v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logLevel:I

    .line 354
    :cond_8
    :goto_2
    iget v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->maxLogAliveDay:I

    if-gtz v1, :cond_9

    const/4 v1, 0x5

    .line 355
    iput v1, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->maxLogAliveDay:I

    .line 358
    :cond_9
    new-instance v1, Lcom/uc/sdk/ulog/ULogSetup;

    iget-object v5, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->context:Landroid/content/Context;

    iget-boolean v6, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logEnable:Z

    iget-boolean v7, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->isDebug:Z

    iget-wide v8, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->maxFileSize:J

    iget v10, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->maxLogAliveDay:I

    iget v11, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logLevel:I

    iget-object v12, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileNamePrefix:Ljava/lang/String;

    iget-object v13, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileDir:Ljava/lang/String;

    iget-object v15, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->publicKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logSyncWrite:Z

    const/16 v17, 0x0

    move-object v4, v1

    move/from16 v16, v2

    invoke-direct/range {v4 .. v17}, Lcom/uc/sdk/ulog/ULogSetup;-><init>(Landroid/content/Context;ZZJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/uc/sdk/ulog/ULogSetup$1;)V

    return-object v1
.end method

.method public isDebug(Z)Lcom/uc/sdk/ulog/ULogSetup$Builder;
    .locals 0

    .line 255
    iput-boolean p1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->isDebug:Z

    return-object p0
.end method

.method public logEnable(Z)Lcom/uc/sdk/ulog/ULogSetup$Builder;
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logEnable:Z

    return-object p0
.end method

.method public logFileDir(Ljava/lang/String;)Lcom/uc/sdk/ulog/ULogSetup$Builder;
    .locals 1

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iput-object p1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileDir:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public logFileNamePrefix(Ljava/lang/String;)Lcom/uc/sdk/ulog/ULogSetup$Builder;
    .locals 1

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iput-object p1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileNamePrefix:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public logLevel(I)Lcom/uc/sdk/ulog/ULogSetup$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 250
    iput p1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logLevel:I

    return-object p0

    .line 247
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "ulog level must between 0 and 6"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logSyncWrite(Z)Lcom/uc/sdk/ulog/ULogSetup$Builder;
    .locals 0

    .line 304
    iput-boolean p1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logSyncWrite:Z

    return-object p0
.end method

.method public maxFileSize(J)Lcom/uc/sdk/ulog/ULogSetup$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 264
    iput-wide p1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->maxFileSize:J

    return-object p0

    .line 261
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "ulog maxFileSize must larger than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxLogAliveDay(I)Lcom/uc/sdk/ulog/ULogSetup$Builder;
    .locals 1

    if-lez p1, :cond_0

    .line 273
    iput p1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->maxLogAliveDay:I

    return-object p0

    .line 270
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "ulog maxLogAliveTime must larger than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public publicKey(Ljava/lang/String;)Lcom/uc/sdk/ulog/ULogSetup$Builder;
    .locals 1

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iput-object p1, p0, Lcom/uc/sdk/ulog/ULogSetup$Builder;->publicKey:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
