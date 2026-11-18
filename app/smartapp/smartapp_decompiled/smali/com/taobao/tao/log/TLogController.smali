.class public Lcom/taobao/tao/log/TLogController;
.super Ljava/lang/Object;
.source "TLogController.java"

# interfaces
.implements Lcom/taobao/tao/log/ITLogController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/log/TLogController$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TLogController"


# instance fields
.field private logLevel:Lcom/taobao/tao/log/LogLevel;

.field private moduleFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/log/LogLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    iput-object v0, p0, Lcom/taobao/tao/log/TLogController;->logLevel:Lcom/taobao/tao/log/LogLevel;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/log/TLogController;->moduleFilter:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/tao/log/TLogController$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/taobao/tao/log/TLogController;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static final getInstance()Lcom/taobao/tao/log/TLogController;
    .locals 1

    .line 33
    invoke-static {}, Lcom/taobao/tao/log/TLogController$SingletonHolder;->access$100()Lcom/taobao/tao/log/TLogController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addModuleFilter(Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->moduleFilter:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getInitState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/taobao/tao/log/TLogNative;->isSoOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {p2}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/taobao/tao/log/TLogNative;->addModuleFilter(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public addModuleFilter(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/log/LogLevel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/tao/log/LogLevel;

    .line 43
    invoke-static {}, Lcom/taobao/tao/log/TLogController;->getInstance()Lcom/taobao/tao/log/TLogController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/taobao/tao/log/TLogController;->addModuleFilter(Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkLogLength(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public cleanModuleFilter()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->moduleFilter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public closeLog()V
    .locals 2

    .line 76
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getInitState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-static {}, Lcom/taobao/tao/log/TLogNative;->isSoOpen()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 83
    :cond_1
    :try_start_0
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->L:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v0}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v0

    invoke-static {v0}, Lcom/taobao/tao/log/TLogNative;->setLogLevel(I)V

    .line 84
    invoke-static {}, Lcom/taobao/tao/log/TLogNative;->appenderClose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public compress(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public destroyLog(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public ecrypted([B)[B
    .locals 0

    const/4 p1, 0x0

    .line 162
    new-array p1, p1, [B

    return-object p1
.end method

.method public ecrypted([BII)[B
    .locals 0

    const/4 p1, 0x0

    .line 157
    new-array p1, p1, [B

    return-object p1
.end method

.method public getLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;
    .locals 1

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object p1, p0, Lcom/taobao/tao/log/TLogController;->logLevel:Lcom/taobao/tao/log/LogLevel;

    return-object p1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->moduleFilter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/taobao/tao/log/TLogController;->logLevel:Lcom/taobao/tao/log/LogLevel;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->moduleFilter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/tao/log/LogLevel;

    :goto_0
    return-object p1
.end method

.method public isFilter(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;)Z
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->logLevel:Lcom/taobao/tao/log/LogLevel;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v2

    const/4 v3, 0x1

    if-gt v0, v2, :cond_1

    return v3

    :cond_1
    const-string v0, "."

    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->moduleFilter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->moduleFilter:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->moduleFilter:Ljava/util/Map;

    .line 148
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {p2}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result p2

    invoke-virtual {p1}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result p1

    if-gt p2, p1, :cond_4

    return v3

    :cond_4
    :goto_0
    return v1
.end method

.method public isOpenLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openLog(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public resumeLog(Landroid/content/Context;Lcom/taobao/tao/log/LogLevel;)V
    .locals 6

    .line 95
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getInitState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 100
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "logs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/tao/log/TLogInitializer;->logDir:Ljava/io/File;

    .line 102
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/log/TLogInitializer;->getNameprefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TLogController"

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeLog. logLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " logDir:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " namePrefix:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " appKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cacheDir:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p2}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result p2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0, v2, v1}, Lcom/taobao/tao/log/TLogNative;->appenderOpen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setLogLevel(Lcom/taobao/tao/log/LogLevel;)V
    .locals 2

    .line 65
    iput-object p1, p0, Lcom/taobao/tao/log/TLogController;->logLevel:Lcom/taobao/tao/log/LogLevel;

    .line 66
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getInitState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/taobao/tao/log/TLogNative;->isSoOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result p1

    invoke-static {p1}, Lcom/taobao/tao/log/TLogNative;->setLogLevel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .locals 0

    .line 180
    invoke-static {p1}, Lcom/taobao/tao/log/TLogUtils;->convertLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/tao/log/TLogController;->updateLogLevel(Lcom/taobao/tao/log/LogLevel;)V

    return-void
.end method

.method public setModuleFilter(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/log/LogLevel;",
            ">;)V"
        }
    .end annotation

    .line 196
    invoke-virtual {p0, p1}, Lcom/taobao/tao/log/TLogController;->addModuleFilter(Ljava/util/Map;)V

    return-void
.end method

.method protected updateAsyncConfig()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->moduleFilter:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->logLevel:Lcom/taobao/tao/log/LogLevel;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/taobao/tao/log/TLogNative;->isSoOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->moduleFilter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 122
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v1}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v1

    invoke-static {v2, v1}, Lcom/taobao/tao/log/TLogNative;->addModuleFilter(Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/taobao/tao/log/TLogController;->logLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v0}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v0

    invoke-static {v0}, Lcom/taobao/tao/log/TLogNative;->setLogLevel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected updateLogLevel(Lcom/taobao/tao/log/LogLevel;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/taobao/tao/log/TLogController;->logLevel:Lcom/taobao/tao/log/LogLevel;

    return-void
.end method
