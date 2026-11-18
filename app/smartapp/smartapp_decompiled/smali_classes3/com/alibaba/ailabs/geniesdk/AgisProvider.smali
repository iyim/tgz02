.class public Lcom/alibaba/ailabs/geniesdk/AgisProvider;
.super Lcom/alibaba/ailabs/ipc/server/MultiProvider;
.source "AgisProvider.java"


# static fields
.field public static final AGIS_SERVER:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.server"

.field private static final TAG:Ljava/lang/String; = "AgisProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/server/MultiProvider;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onInit()V
    .locals 9

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.alibaba.ailabs.geniesdk.AgisProvider;onInit(); start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "genie_provider"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/AgisProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 38
    invoke-static {p0, v2}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getInstance(Lcom/alibaba/ailabs/ipc/server/MultiProvider;Landroid/content/Context;)Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    move-result-object v4

    const-string v5, "com.alibaba.ailabs.genie.assistant.server"

    .line 39
    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getMultiRouter(Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/server/MultiRouter;

    move-result-object v4

    .line 42
    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    move-result-object v5

    .line 43
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 46
    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;

    move-result-object v5

    .line 47
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->getServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 50
    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;

    move-result-object v5

    .line 51
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->getServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.alibaba.ailabs.geniesdk.AgisProvider;cost1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v5, v0

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v2}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/data/DataCenterSvr;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 61
    invoke-static {v2}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 65
    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v7, "com.alibaba.ailabs.genie.assistant.userinfo"

    invoke-virtual {v4, v7, v1}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 69
    invoke-static {v2}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;

    move-result-object v1

    .line 70
    invoke-static {}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->getServerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 72
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getSceneExecutor()Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/geniesdk/AgisProvider$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/AgisProvider$1;-><init>(Lcom/alibaba/ailabs/geniesdk/AgisProvider;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->setVirtualPkgListener(Lcom/alibaba/ailabs/comm/task/listener/IGetPkgInfo;)V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.alibaba.ailabs.geniesdk.AgisProvider;cost2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v0, v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;

    move-result-object v5

    .line 89
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->getServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 92
    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;

    move-result-object v5

    .line 93
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->getServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 95
    new-instance v5, Lcom/alibaba/ailabs/geniesdk/client/SystemContextService;

    invoke-direct {v5, v2}, Lcom/alibaba/ailabs/geniesdk/client/SystemContextService;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/client/SystemContextService;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v5, "com.ailabas.alibaba.genie.system.context"

    invoke-virtual {v4, v5, v2}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.alibaba.ailabs.geniesdk.AgisProvider;cost3="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterceptor(ILjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/AgisProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/ipc/utils/Utils;->isCheckSelfApp(Landroid/content/Context;I)Z

    move-result v2

    const-string v3, ",serverName = "

    const-string v4, "AgisProvider"

    if-eqz v2, :cond_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptor the self app pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptor  pid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",curPid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {v4, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    if-ne p1, v1, :cond_2

    return v1

    :cond_2
    return v0
.end method
