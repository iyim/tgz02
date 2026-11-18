.class public Lcom/ut/mini/extend/WindvaneExtend;
.super Ljava/lang/Object;
.source "WindvaneExtend.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerWindvane(Z)V
    .locals 5

    .line 20
    sget-boolean v0, Lcom/ut/mini/extend/UTExtendSwitch;->bWindvaneExtend:Z

    const/4 v1, 0x0

    const-string v2, "UTAnalytics"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 21
    new-array p0, v3, [Ljava/lang/Object;

    const-string/jumbo v0, "user disable WVTBUserTrack "

    aput-object v0, p0, v1

    invoke-static {v2, p0}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 26
    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "Has registered WVTBUserTrack plugin,not need to register again! "

    aput-object v0, p0, v1

    invoke-static {v2, p0}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/ut/mini/module/process/MultiProcessManager;->getMultiProcessAdapter()Lcom/ut/mini/module/process/AbsMultiProcessAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v0}, Lcom/ut/mini/module/process/AbsMultiProcessAdapter;->isUiSubProcess()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 35
    invoke-virtual {v0}, Lcom/ut/mini/module/process/AbsMultiProcessAdapter;->getSubProcessWVApiPluginClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 37
    :cond_2
    const-class p0, Lcom/ut/mini/core/WVUserTrack;

    :cond_3
    :goto_0
    if-nez p0, :cond_4

    .line 42
    const-class p0, Lcom/ut/mini/core/WVUserTrack;

    :cond_4
    const-string v0, "WVTBUserTrack"

    .line 44
    invoke-static {v0, p0, v3}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 45
    new-array p0, v3, [Ljava/lang/Object;

    const-string/jumbo v0, "register WVTBUserTrack Success"

    aput-object v0, p0, v1

    invoke-static {v2, p0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "Exception"

    aput-object v4, v0, v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
