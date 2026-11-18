.class public Lcom/ut/mini/internal/UTTeamWork;
.super Ljava/lang/Object;
.source "UTTeamWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/internal/UTTeamWork$H5JSCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UTTeamWork"

.field private static s_instance:Lcom/ut/mini/internal/UTTeamWork;


# instance fields
.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ut/mini/internal/UTTeamWork$H5JSCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/internal/UTTeamWork;->callbacks:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/internal/UTTeamWork;
    .locals 2

    const-class v0, Lcom/ut/mini/internal/UTTeamWork;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/ut/mini/internal/UTTeamWork;->s_instance:Lcom/ut/mini/internal/UTTeamWork;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/ut/mini/internal/UTTeamWork;

    invoke-direct {v1}, Lcom/ut/mini/internal/UTTeamWork;-><init>()V

    sput-object v1, Lcom/ut/mini/internal/UTTeamWork;->s_instance:Lcom/ut/mini/internal/UTTeamWork;

    .line 37
    :cond_0
    sget-object v1, Lcom/ut/mini/internal/UTTeamWork;->s_instance:Lcom/ut/mini/internal/UTTeamWork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearHost4Https(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "UTAnalytics"

    const-string v0, "context =null"

    .line 190
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "utanalytics_https_host"

    .line 194
    invoke-static {p1, v1, v0}, Lcom/alibaba/analytics/utils/SpSetting;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public clearHost4TimeAdjustService(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "UTAnalytics"

    const-string v0, "context =null"

    .line 250
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "time_adjust_host"

    .line 254
    invoke-static {p1, v1, v0}, Lcom/alibaba/analytics/utils/SpSetting;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public clearHostPort4Http(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "UTAnalytics"

    const-string v0, "context =null"

    .line 220
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    const-string v1, "http_host"

    .line 224
    invoke-static {p1, v1, v0}, Lcom/alibaba/analytics/utils/SpSetting;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public clearHostPort4Tnet(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "UTAnalytics"

    const-string v0, "context =null"

    .line 129
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "utanalytics_tnet_host_port"

    .line 133
    invoke-static {p1, v1, v0}, Lcom/alibaba/analytics/utils/SpSetting;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public clearHostPort4TnetIpv6(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "UTTeamWork"

    const-string v0, "context is null"

    .line 160
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "utanalytics_tnet_host_port_ipv6"

    .line 164
    invoke-static {p1, v1, v0}, Lcom/alibaba/analytics/utils/SpSetting;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public clearIgnoreTagForExposureView(Landroid/view/View;)V
    .locals 0

    .line 308
    invoke-static {p1}, Lcom/ut/mini/exposure/ExposureUtils;->clearIgnoreTagForExposureView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public closeAuto1010Track()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/ClientVariables;->set1010AutoTrackClose()V

    return-void
.end method

.method public dispatchH5JSCall(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/ut/mini/internal/UTTeamWork;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 338
    iget-object v2, p0, Lcom/ut/mini/internal/UTTeamWork;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/internal/UTTeamWork$H5JSCallback;

    invoke-interface {v2, p1, p2}, Lcom/ut/mini/internal/UTTeamWork$H5JSCallback;->onH5JSCall(Ljava/lang/Object;Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchLocalHits()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->dispatchLocalHits()V

    return-void
.end method

.method public getExposureViewHandler(Landroid/app/Activity;)Lcom/ut/mini/internal/ExposureViewHandle;
    .locals 0

    .line 272
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/exposure/TrackerManager;->getExposureViewHandle()Lcom/ut/mini/internal/ExposureViewHandle;

    move-result-object p1

    return-object p1
.end method

.method public getUtsid()Ljava/lang/String;
    .locals 7

    const-string v0, "_"

    .line 86
    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/ClientVariables;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 92
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/ClientVariables;->getAppKey()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v1}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "session_timestamp"

    .line 94
    invoke-static {v4}, Lcom/alibaba/analytics/AnalyticsMgr;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 95
    invoke-static {v3}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 99
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {v3, v0, v1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    return-object v2
.end method

.method public initialized()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerExposureViewHandler(Lcom/ut/mini/internal/ExposureViewHandle;)V
    .locals 1

    .line 261
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/exposure/TrackerManager;->registerExposureViewHandler(Lcom/ut/mini/internal/ExposureViewHandle;)V

    return-void
.end method

.method public registerH5JSCallback(Lcom/ut/mini/internal/UTTeamWork$H5JSCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/internal/UTTeamWork;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/ut/mini/internal/UTTeamWork;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public saveCacheDataToLocal()V
    .locals 1

    .line 65
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->saveCacheDataToLocal()V

    return-void
.end method

.method public setExposureTagForWeex(Landroid/view/View;)V
    .locals 0

    .line 282
    invoke-static {p1}, Lcom/ut/mini/exposure/ExposureUtils;->setExposureForWeex(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setHost4Https(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTAnalytics"

    if-nez p1, :cond_0

    const-string p1, "context =null"

    .line 175
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 178
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "host or port is empty"

    .line 179
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_1
    const-string/jumbo v0, "utanalytics_https_host"

    .line 182
    invoke-static {p1, v0, p2}, Lcom/alibaba/analytics/utils/SpSetting;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setHost4TimeAdjustService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTAnalytics"

    if-nez p1, :cond_0

    const-string p1, "context =null"

    .line 235
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 238
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "host is empty"

    .line 239
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_1
    const-string/jumbo v0, "time_adjust_host"

    .line 242
    invoke-static {p1, v0, p2}, Lcom/alibaba/analytics/utils/SpSetting;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setHostPort4Http(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTAnalytics"

    if-nez p1, :cond_0

    const-string p1, "context =null"

    .line 205
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 208
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "host  is empty"

    .line 209
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_1
    const-string v0, "http_host"

    .line 212
    invoke-static {p1, v0, p2}, Lcom/alibaba/analytics/utils/SpSetting;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setHostPort4Tnet(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "UTAnalytics"

    if-nez p1, :cond_0

    const-string p1, "context =null"

    .line 114
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "host or port is empty"

    .line 118
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "utanalytics_tnet_host_port"

    invoke-static {p1, p3, p2}, Lcom/alibaba/analytics/utils/SpSetting;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHostPort4TnetIpv6(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "UTTeamWork"

    if-nez p1, :cond_0

    const-string p1, "context is null"

    .line 145
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "host or port is empty"

    .line 149
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "utanalytics_tnet_host_port_ipv6"

    invoke-static {p1, p3, p2}, Lcom/alibaba/analytics/utils/SpSetting;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIgnoreTagForExposureView(Landroid/view/View;)V
    .locals 0

    .line 300
    invoke-static {p1}, Lcom/ut/mini/exposure/ExposureUtils;->setIgnoreTagForExposureView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setToAliyunOsPlatform()V
    .locals 1

    .line 74
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->setToAliyunOsPlatform()V

    return-void
.end method

.method public startExpoTrack(Landroid/app/Activity;)Z
    .locals 1

    .line 287
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/exposure/TrackerManager;->addToTrack(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public stopExpoTrack(Landroid/app/Activity;)Z
    .locals 1

    .line 292
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/exposure/TrackerManager;->removeToTrack(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public turnOffRealTimeDebug()V
    .locals 1

    .line 49
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->e()V

    .line 50
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->turnOffRealTimeDebug()V

    return-void
.end method

.method public turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "UTTeamWork"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTAnalytics;->turnOnRealTimeDebug(Ljava/util/Map;)V

    return-void
.end method

.method public unRegisterExposureViewHandler(Lcom/ut/mini/internal/ExposureViewHandle;)V
    .locals 1

    .line 268
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/exposure/TrackerManager;->unRegisterExposureViewHandler(Lcom/ut/mini/internal/ExposureViewHandle;)V

    return-void
.end method

.method public unRegisterH5JSCallback(Lcom/ut/mini/internal/UTTeamWork$H5JSCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/internal/UTTeamWork;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
