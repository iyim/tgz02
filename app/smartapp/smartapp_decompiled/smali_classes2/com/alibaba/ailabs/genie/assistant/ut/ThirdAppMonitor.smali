.class public Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;
.super Ljava/lang/Object;
.source "ThirdAppMonitor.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/plugin/interfaces/IActivityChangeListener;


# static fields
.field private static gThirdAppMonitor:Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;


# instance fields
.field private mPackageAndActivityName:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2f

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getThirdAppMonitor()Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;
    .locals 2

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->gThirdAppMonitor:Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->gThirdAppMonitor:Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->gThirdAppMonitor:Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->gThirdAppMonitor:Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;

    return-object v0
.end method


# virtual methods
.method public onActivityChange(Ljava/lang/String;)V
    .locals 8

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->mPackageAndActivityName:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->mPackageAndActivityName:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->mStartTime:J

    goto :goto_1

    .line 57
    :cond_1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 59
    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->mStartTime:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 63
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 66
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "packageName"

    .line 68
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "pageName"

    .line 69
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "startTime"

    .line 70
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "endTime"

    .line 71
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "openThirdApp"

    const/4 v3, 0x0

    .line 73
    invoke-static {v0, v3, v6}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :cond_2
    :goto_0
    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->mStartTime:J

    .line 83
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ut/ThirdAppMonitor;->mPackageAndActivityName:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method
