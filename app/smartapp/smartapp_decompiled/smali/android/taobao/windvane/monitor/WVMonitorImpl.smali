.class public Landroid/taobao/windvane/monitor/WVMonitorImpl;
.super Ljava/lang/Object;
.source "WVMonitorImpl.java"

# interfaces
.implements Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;
.implements Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;
.implements Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;
.implements Landroid/taobao/windvane/monitor/WVMonitorInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "WVMonitor"


# instance fields
.field private appStartTime:J

.field private currentUrl:Ljava/lang/String;

.field private dataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/monitor/WVMonitorData;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private initTime:J

.field private isInit:Z

.field private needCommitStartTime:Z

.field private zipApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->needCommitStartTime:Z

    const-wide/16 v1, 0x0

    .line 29
    iput-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->appStartTime:J

    .line 30
    iput-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->initTime:J

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isInit:Z

    const-string v2, ""

    .line 32
    iput-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->currentUrl:Ljava/lang/String;

    .line 33
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->zipApps:Ljava/util/HashSet;

    .line 34
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    iput-boolean v1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->enabled:Z

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->appStartTime:J

    .line 40
    iput-boolean v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->enabled:Z

    return-void
.end method

.method private checkNeedCollectResInfo(Ljava/lang/String;)Z
    .locals 1

    .line 380
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isPage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private static errorNeedReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 4

    .line 126
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->getConfig()Landroid/taobao/windvane/monitor/WVMonitorConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig;->isErrorBlacklist:Z

    .line 127
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->getConfig()Landroid/taobao/windvane/monitor/WVMonitorConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->errorRule:Ljava/util/List;

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;

    .line 129
    iget-object v3, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->url:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz p0, :cond_1

    .line 130
    iget-object v3, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->urlPattern:Ljava/util/regex/Pattern;

    if-nez v3, :cond_0

    .line 131
    iget-object v3, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->url:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->urlPattern:Ljava/util/regex/Pattern;

    .line 133
    :cond_0
    iget-object v3, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->urlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v3, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->msg:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 138
    iget-object v3, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->msgPattern:Ljava/util/regex/Pattern;

    if-nez v3, :cond_2

    .line 139
    iget-object v3, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->msg:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->msgPattern:Ljava/util/regex/Pattern;

    .line 141
    :cond_2
    iget-object v3, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->msgPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 146
    :cond_3
    iget-object v3, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->code:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p2, :cond_4

    .line 147
    iget-object v2, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->code:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method private static formatUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x3f

    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const/16 v1, 0x23

    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getConfig()Landroid/taobao/windvane/monitor/WVMonitorConfig;
    .locals 1

    .line 49
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->getInstance()Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    move-result-object v0

    iget-object v0, v0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->config:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    return-object v0
.end method

.method private getResData(Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorData$resStat;
    .locals 3

    .line 386
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 389
    :cond_0
    iget-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/monitor/WVMonitorData;

    if-nez v0, :cond_1

    return-object v1

    .line 393
    :cond_1
    iget-object v1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget-object v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->resStat:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    if-nez v1, :cond_2

    .line 395
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorData;->createNewResStatInstance()Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    move-result-object v1

    .line 396
    iget-object v0, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget-object v0, v0, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->resStat:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method private initData(Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorData;
    .locals 3

    .line 158
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/monitor/WVMonitorData;

    if-nez v0, :cond_2

    .line 163
    const-class v1, Landroid/taobao/windvane/monitor/WVMonitorImpl;

    monitor-enter v1

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "WVMonitor"

    const-string v2, "monitor data init"

    .line 165
    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Landroid/taobao/windvane/monitor/WVMonitorData;

    invoke-direct {v0}, Landroid/taobao/windvane/monitor/WVMonitorData;-><init>()V

    .line 167
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->currentUrl:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private isEnabled()Z
    .locals 1

    .line 58
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    iget-boolean v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->enabled:Z

    return v0
.end method

.method private isPage(Ljava/lang/String;)Z
    .locals 1

    .line 373
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 376
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private pageFinish(Ljava/lang/String;JZ)V
    .locals 9

    .line 402
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 405
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    return-void

    .line 408
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/monitor/WVMonitorData;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 412
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "pageFinish: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "WVMonitor"

    invoke-static {v4, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-wide v5, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_5

    .line 415
    :try_start_0
    iget-wide v5, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    sub-long/2addr p2, v5

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url: %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " onLoad time :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->getConfig()Landroid/taobao/windvane/monitor/WVMonitorConfig;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 418
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v2, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    iget-wide v4, v2, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->onLoad:J

    cmp-long v2, p2, v4

    if-ltz v2, :cond_5

    .line 419
    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iput-wide p2, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onLoad:J

    .line 420
    iget-object p2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput v1, p2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->finish:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 423
    invoke-virtual {p2}, Landroid/net/Uri;->isHierarchical()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string/jumbo p3, "wvAppMonitor"

    .line 424
    invoke-virtual {p2, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 425
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 427
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->wvAppMonitor:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    :catch_0
    :cond_4
    :try_start_2
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->upload(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 441
    :catch_1
    :cond_5
    iget-object p2, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    return-void
.end method

.method private upload(Ljava/lang/String;)V
    .locals 10

    .line 66
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    return-void

    .line 70
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/monitor/WVMonitorData;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 v1, 0x3bc5

    .line 76
    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v2, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onLoad:J

    const-string v4, ""

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_3

    move-object v2, v4

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v7, v3, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onLoad:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v7, v7, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onDomLoad:J

    cmp-long v9, v7, v5

    if-nez v9, :cond_4

    iget-object v7, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v7, v7, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onLoad:J

    cmp-long v9, v7, v5

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v4, v4, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->finish:I

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v0}, Landroid/taobao/windvane/monitor/WVMonitorData;->toJsonStringDict()[Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {v1, p1, v2, v3, v4}, Landroid/taobao/windvane/monitor/UserTrackUtil;->commitEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    iget-boolean v1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isInit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-wide v3, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    iget-wide v7, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->initTime:J

    cmp-long v1, v3, v7

    if-lez v1, :cond_5

    .line 82
    iput-boolean v2, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isInit:Z

    const/4 v1, 0x1

    .line 83
    iput-boolean v1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->isInit:Z

    .line 84
    iget-wide v3, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    iget-wide v7, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->initTime:J

    sub-long/2addr v3, v7

    iput-wide v3, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->init:J

    .line 86
    :cond_5
    invoke-static {v0}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitPerformanceInfo(Landroid/taobao/windvane/monitor/WVMonitorData;)V

    .line 87
    iget-object v1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v1, v1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppName:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->zipApps:Ljava/util/HashSet;

    if-eqz v3, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->zipApps:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v7, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->appStartTime:J

    sub-long/2addr v3, v7

    invoke-static {v1, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitPackageVisitStartInfo(Ljava/lang/String;J)V

    .line 91
    iget-object v3, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->zipApps:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_6
    iget-boolean v1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->needCommitStartTime:Z

    if-eqz v1, :cond_7

    iget-wide v3, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->appStartTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    iget-wide v5, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_7

    .line 94
    iget-object v1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->url:Ljava/lang/String;

    iget-wide v3, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    iget-wide v5, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->appStartTime:J

    sub-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitStartTimeInfo(Ljava/lang/String;J)V

    .line 95
    iput-boolean v2, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->needCommitStartTime:Z

    .line 97
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upload performance info  URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fromType : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget p1, p1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->fromType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageAppName : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object p1, p1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WVMonitor"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public WebViewWrapType(Ljava/lang/String;)V
    .locals 1

    .line 518
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "UnKnow"

    .line 521
    :goto_0
    invoke-static {p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitWVWrapType(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitCoreInitTime(JLjava/lang/String;)V
    .locals 1

    .line 527
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "UnKnow"

    .line 530
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitCoreInitTime(JLjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitCoreTypeByPV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UnKnow"

    .line 537
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 540
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 543
    :goto_1
    invoke-static {p1, p2}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitCoreTypeByPV(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitRenderType(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 548
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    sget-boolean v0, Landroid/taobao/windvane/config/GlobalConfig;->isBackground:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitRenderType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitUseWebgl(Ljava/lang/String;)V
    .locals 0

    .line 553
    invoke-static {p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitUseWebgl(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public commitWebMultiTypeByPV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 559
    invoke-static/range {p1 .. p6}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitRenderTypeByPV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UC Multi: initRenderType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], successRenderType = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "renderTypeReason = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], initGpuType = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], successGpuType = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "],"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "gpuTypeReason = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVMonitor"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public didExitAtTime(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->pageFinish(Ljava/lang/String;JZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public didGetPageStatusCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;",
            ")V"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->initData(Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorData;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 259
    :cond_1
    iget-object v0, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iput-object p8, v0, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->netStat:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

    if-lez p2, :cond_2

    .line 260
    iget-object p8, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iput p2, p8, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->statusCode:I

    :cond_2
    const/4 p2, 0x1

    if-le p3, p2, :cond_3

    .line 261
    iget-object p8, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget p8, p8, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->fromType:I

    if-gt p8, p2, :cond_3

    iget-object p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iput p3, p2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->fromType:I

    .line 262
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iput-object p4, p2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppVersion:Ljava/lang/String;

    :cond_4
    if-eqz p7, :cond_5

    .line 265
    iget-object p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    const-string/jumbo p3, "via"

    invoke-interface {p7, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p2, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->via:Ljava/lang/String;

    .line 267
    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iput-object p5, p2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppName:Ljava/lang/String;

    .line 268
    :cond_6
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p1, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iput-object p6, p1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->appSeq:Ljava/lang/String;

    :cond_7
    :goto_0
    return-void
.end method

.method public didGetResourceStatusCode(Ljava/lang/String;IILjava/util/Map;Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;",
            ")V"
        }
    .end annotation

    .line 321
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v8, p4

    move-object v9, p5

    .line 322
    invoke-virtual/range {v1 .. v9}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->didGetPageStatusCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)V

    goto :goto_1

    .line 323
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->checkNeedCollectResInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->getResData(Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 328
    :cond_1
    iput p3, p1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->fromType:I

    .line 329
    iput p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->statusCode:I

    if-eqz p4, :cond_2

    const-string p2, "Via"

    .line 330
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    iput-object p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->via:Ljava/lang/String;

    if-eqz p5, :cond_3

    .line 331
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->getConfig()Landroid/taobao/windvane/monitor/WVMonitorConfig;

    move-result-object p2

    iget-object p2, p2, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    iget-boolean p2, p2, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->netstat:Z

    if-eqz p2, :cond_3

    .line 332
    iput-object p5, p1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->netStat:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

    :cond_3
    :goto_1
    return-void
.end method

.method public didGetResourceVerifyCode(Ljava/lang/String;JJII)V
    .locals 2

    .line 340
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/monitor/WVMonitorData;

    if-nez v0, :cond_1

    return-void

    .line 347
    :cond_1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isPage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 348
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 349
    :cond_2
    iget-object p1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iput-wide p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyResTime:J

    .line 350
    iget-object p1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iput-wide p4, p1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyTime:J

    .line 351
    iget-object p1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iput p6, p1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyError:I

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 352
    :cond_4
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->checkNeedCollectResInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 353
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->getResData(Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    move-result-object p1

    .line 354
    iput-wide p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyResTime:J

    .line 355
    iput-wide p4, p1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyTime:J

    .line 356
    iput p6, p1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyError:I

    .line 358
    :cond_5
    :goto_1
    iget-object p1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->allVerifyTime:J

    add-long/2addr p2, p4

    iput-wide p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->allVerifyTime:J

    .line 359
    iget-object p1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iput p7, p1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyCacheSize:I

    return-void
.end method

.method public didOccurJSError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 460
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 463
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const/4 v4, 0x3

    aput-object p4, v0, v4

    const-string/jumbo v5, "reportJsError: %s ///// %s ///// %s ///// %s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "WVMonitor"

    invoke-static {v5, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 466
    invoke-static {p1, p2, v0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->errorNeedReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p4, v0, v2

    aput-object p3, v0, v3

    const-string p2, "message=%s\nline=%s\nfile=%s"

    .line 468
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "JavaScriptError"

    .line 469
    invoke-static {p3, v2, p2, p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public didOccurNativeError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 447
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 449
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p3, v0, v2

    .line 450
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string/jumbo v3, "reportNativeError: %s ///// %s ///// %d"

    .line 449
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "WVMonitor"

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p3, v0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->errorNeedReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v2

    const-string p3, "message=%s\ncode=%d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "NativeError"

    .line 454
    invoke-static {v0, p2, p3, p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 475
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitConifgUpdateError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public didOccurUpdateConfigSuccess(Ljava/lang/String;)V
    .locals 1

    .line 490
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitConifgUpdateSuccess(Ljava/lang/String;)V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public didPageDomLoadAtTime(Ljava/lang/String;J)V
    .locals 5

    .line 198
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    return-void

    .line 202
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/monitor/WVMonitorData;

    if-nez p1, :cond_2

    return-void

    .line 207
    :cond_2
    iget-wide v0, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 208
    iget-wide v0, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    sub-long/2addr p2, v0

    .line 209
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->getConfig()Landroid/taobao/windvane/monitor/WVMonitorConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    iget-wide v0, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->onDomLoad:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 210
    iget-object p1, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iput-wide p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onDomLoad:J

    :cond_3
    :goto_0
    return-void
.end method

.method public didPageFinishLoadAtTime(Ljava/lang/String;J)V
    .locals 1

    if-eqz p1, :cond_1

    .line 191
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->pageFinish(Ljava/lang/String;JZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public didPageOccurSelfDefinedEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .line 233
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    iget-object p2, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p2, :cond_1

    return-void

    .line 237
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/taobao/windvane/monitor/WVMonitorData;

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 p3, 0x1

    .line 241
    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "domLoad: %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "WVMonitor"

    invoke-static {p3, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-wide p3, p2, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_3

    .line 244
    iget-object p1, p2, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget-object p1, p1, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->selfDefine:Ljava/util/Map;

    .line 245
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p2, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public didPagePerformanceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 505
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/monitor/WVMonitorData;

    if-nez p1, :cond_1

    return-void

    .line 512
    :cond_1
    iput-object p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData;->performanceInfo:Ljava/lang/String;

    return-void
.end method

.method public didPageReceiveFirstByteAtTime(Ljava/lang/String;J)V
    .locals 5

    .line 217
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    return-void

    .line 221
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/monitor/WVMonitorData;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 225
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "domLoad: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "WVMonitor"

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-wide v1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    .line 227
    iget-object p1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v0, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    sub-long/2addr p2, v0

    iput-wide p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->firstByteTime:J

    :cond_3
    :goto_0
    return-void
.end method

.method public didPageStartInFSP(Ljava/lang/String;J)V
    .locals 0

    .line 369
    invoke-static {p1, p2, p3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFSPInfo(Ljava/lang/String;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public didPageStartLoadAtTime(Ljava/lang/String;J)V
    .locals 2

    .line 177
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 180
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "pageStart: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVMonitor"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->initData(Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorData;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 185
    :cond_1
    iput-wide p2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    .line 186
    iput-object p1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->url:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public didPerformanceCheckResult(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 364
    invoke-static/range {p1 .. p6}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitWebPerfCheckInfo(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public didResourceFinishLoadAtTime(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 2

    .line 297
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/monitor/WVMonitorData;

    if-nez v0, :cond_1

    return-void

    .line 305
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->checkNeedCollectResInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->getResData(Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    move-result-object p1

    .line 307
    iget-wide v0, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    sub-long/2addr p2, v0

    iput-wide p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->end:J

    .line 308
    iput-object p4, p1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->protocolType:Ljava/lang/String;

    .line 309
    iput-wide p5, p1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->tcpTime:J

    goto :goto_0

    .line 310
    :cond_2
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isPage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 311
    iput-object p4, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->protocolType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "didResourceFinishLoadAtTime Exception : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVMonitor"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public didResourceStartLoadAtTime(Ljava/lang/String;J)V
    .locals 2

    .line 278
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->dataMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/monitor/WVMonitorData;

    if-nez v0, :cond_1

    return-void

    .line 286
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->checkNeedCollectResInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    invoke-direct {p0, p1}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->getResData(Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorData$resStat;

    move-result-object p1

    .line 288
    iget-wide v0, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->startTime:J

    sub-long/2addr p2, v0

    iput-wide p2, p1, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->start:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 291
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "didResourceStartLoadAtTime Exception : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVMonitor"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public didUpdateConfig(Ljava/lang/String;IJII)V
    .locals 1

    .line 482
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-static/range {p1 .. p6}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitConifgUpdateInfo(Ljava/lang/String;IJII)V

    .line 485
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateConfig "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isSuccess : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " count : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVMonitor"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public didWebViewInitAtTime(J)V
    .locals 1

    .line 497
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->isInit:Z

    .line 500
    iput-wide p1, p0, Landroid/taobao/windvane/monitor/WVMonitorImpl;->initTime:J

    return-void
.end method
