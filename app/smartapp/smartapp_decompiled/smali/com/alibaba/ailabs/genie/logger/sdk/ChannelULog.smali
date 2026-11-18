.class public Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog;
.super Ljava/lang/Object;
.source "ChannelULog.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelULog"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog;->init(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog;->registerIm()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "unet"

    .line 134
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChannelULog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->getInstance()Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->init(Landroid/content/Context;)V

    .line 138
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/UlogConfig;->initULogUpload(Landroid/content/Context;)V

    return-void
.end method

.method private mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg:"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 126
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private registerIm()V
    .locals 3

    .line 142
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog$1;-><init>(Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog;)V

    const-string/jumbo v2, "uc_wpk_ulog"

    invoke-virtual {v0, v2, v1}, Lcom/uc/rmbsdk/export/RmbManager;->registerChannel(Ljava/lang/String;Lcom/uc/rmbsdk/export/IRmbMessageListener;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-static {p1, p2}, Lcom/uc/sdk/ulog/ULog;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog;->mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-static {p1, p2}, Lcom/uc/sdk/ulog/ULog;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public dumpLogcat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "logcatStart"

    .line 92
    invoke-static {p1, v0}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/utils/RuntimeSystemUtils;->getLogcat(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "logcatEnd"

    .line 94
    invoke-static {p1, v0}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-static {p1, p2}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog;->mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-static {p1, p2}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public flushToDisk()V
    .locals 1

    .line 114
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/sdk/ulog/ULogSetup;->flushToDisk()V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-static {p1, p2}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog;->mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-static {p1, p2}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setBinder(Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public uploadDaysLog(I)V
    .locals 1

    .line 109
    invoke-static {}, Lcom/ulog/uploader/ULogUploadSetup;->with()Lcom/ulog/uploader/ULogUploadSetup;

    move-result-object v0

    invoke-static {p1}, Lcom/ulog/uploader/utils/ULogDateUtils;->someDay(I)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ulog/uploader/ULogUploadSetup;->uploadAllULog(Ljava/util/Date;)V

    return-void
.end method

.method public uploadTodayLog()V
    .locals 2

    .line 99
    invoke-static {}, Lcom/ulog/uploader/ULogUploadSetup;->with()Lcom/ulog/uploader/ULogUploadSetup;

    move-result-object v0

    invoke-static {}, Lcom/ulog/uploader/utils/ULogDateUtils;->today()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ulog/uploader/ULogUploadSetup;->uploadAllULog(Ljava/util/Date;)V

    return-void
.end method

.method public uploadYesterdayLog()V
    .locals 2

    .line 104
    invoke-static {}, Lcom/ulog/uploader/ULogUploadSetup;->with()Lcom/ulog/uploader/ULogUploadSetup;

    move-result-object v0

    invoke-static {}, Lcom/ulog/uploader/utils/ULogDateUtils;->yesterday()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ulog/uploader/ULogUploadSetup;->uploadAllULog(Ljava/util/Date;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-static {p1, p2}, Lcom/uc/sdk/ulog/ULog;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog;->mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {p1, p2}, Lcom/uc/sdk/ulog/ULog;->v(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-static {p1, p2}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog;->mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-static {p1, p2}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
