.class public Lcom/alibaba/ailabs/geniesdk/AguiCtx;
.super Ljava/lang/Object;
.source "AguiCtx.java"


# static fields
.field private static gInstance:Lcom/alibaba/ailabs/geniesdk/AguiCtx;


# instance fields
.field private mAiLabsCore:Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

.field private mAnalytics:Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

.field private mClientManager:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

.field private mContext:Landroid/content/Context;

.field private mCorpusManager:Lcom/alibaba/ailabs/geniesdk/nlp/ICorpusTrainManager;

.field private mPreResultScreenMode:Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;

.field private mRomInterface:Lcom/alibaba/ailabs/geniesdk/rom/IRom;

.field private mStatusMgr:Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

.field private mUiManager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

.field private mVisionRenew:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/device/IDevice;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mAiLabsCore:Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mAiLabsCore:Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    new-instance v2, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;

    invoke-direct {v2, p2}, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;-><init>(Lcom/alibaba/ailabs/geniesdk/device/IDevice;)V

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->init(Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;Ljava/lang/Object;)V

    .line 54
    new-instance p2, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mClientManager:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    .line 55
    new-instance p2, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    invoke-direct {p2}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mStatusMgr:Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    .line 56
    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mStatusMgr:Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->reportAllStatus(Lcom/alibaba/ailabs/geniesdk/status/StatusManager;Landroid/content/Context;)V

    .line 57
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->softWareUpLoad(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 61
    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mVisionRenew:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;

    .line 63
    new-instance p2, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/geniesdk/focus/FocusMgr;-><init>(Landroid/content/Context;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mAiLabsCore:Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    new-instance v1, Lcom/alibaba/ailabs/geniesdk/focus/NativeFocusMgr;

    invoke-direct {v1, p2}, Lcom/alibaba/ailabs/geniesdk/focus/NativeFocusMgr;-><init>(Lcom/alibaba/ailabs/geniesdk/focus/IFocus;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setFocusMgr(Lcom/alibaba/ailabs/geniesdk/focus/NativeFocusMgr;)V

    .line 69
    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mClientManager:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->getASRManager()Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;

    move-result-object p2

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 70
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;-><init>(ZLandroid/os/IBinder;)V

    .line 72
    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;->getServerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/ailabs/ipc/Router;->registerServer(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    .line 74
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    move-result-object p2

    .line 75
    new-instance v1, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {v1, v3, p2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;-><init>(ZLandroid/os/IBinder;)V

    .line 76
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getServerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/ailabs/ipc/Router;->registerServer(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    .line 79
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;

    move-result-object p2

    .line 80
    new-instance v1, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/mmi/MmiSvr;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {v1, v3, p2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;-><init>(ZLandroid/os/IBinder;)V

    .line 81
    invoke-static {}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->getServerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/ailabs/ipc/Router;->registerServer(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    .line 84
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;

    move-result-object p2

    .line 85
    new-instance v1, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {v1, v3, p2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;-><init>(ZLandroid/os/IBinder;)V

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaService;->getServerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/ailabs/ipc/Router;->registerServer(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    .line 88
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p2

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setMirrorListener(Lcom/alibaba/ailabs/geniesdk/deviceMirror/IDeviceMirrorListener;)V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;
    .locals 1

    .line 115
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->gInstance:Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/device/IDevice;)Lcom/alibaba/ailabs/geniesdk/AguiCtx;
    .locals 2

    .line 99
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->gInstance:Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    if-nez v0, :cond_1

    .line 100
    const-class v0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->gInstance:Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/device/IDevice;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->gInstance:Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    .line 104
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 106
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->gInstance:Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    return-object p0
.end method


# virtual methods
.method public getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mClientManager:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCorpusManager()Lcom/alibaba/ailabs/geniesdk/nlp/ICorpusTrainManager;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mCorpusManager:Lcom/alibaba/ailabs/geniesdk/nlp/ICorpusTrainManager;

    return-object v0
.end method

.method public getNativeUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mUiManager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    return-object v0
.end method

.method public getPreOnResultScreenMode()Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mPreResultScreenMode:Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;

    return-object v0
.end method

.method public getRomInterface()Lcom/alibaba/ailabs/geniesdk/rom/IRom;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mRomInterface:Lcom/alibaba/ailabs/geniesdk/rom/IRom;

    return-object v0
.end method

.method public getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mStatusMgr:Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    return-object v0
.end method

.method public getTraceInterface()Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mAnalytics:Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    return-object v0
.end method

.method public getUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mUiManager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->getUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisionRenew()Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mVisionRenew:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;

    return-object v0
.end method

.method public setCorpusManager(Lcom/alibaba/ailabs/geniesdk/nlp/ICorpusTrainManager;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mCorpusManager:Lcom/alibaba/ailabs/geniesdk/nlp/ICorpusTrainManager;

    return-void
.end method

.method public setPreResultScreenMode(Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mPreResultScreenMode:Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;

    return-void
.end method

.method public setRomInterface(Lcom/alibaba/ailabs/geniesdk/rom/IRom;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mRomInterface:Lcom/alibaba/ailabs/geniesdk/rom/IRom;

    return-void
.end method

.method public setTraceInterface(Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;)V
    .locals 2

    .line 243
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mAnalytics:Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    .line 244
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mAiLabsCore:Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/ut/NativeUTAnalytics;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/geniesdk/ut/NativeUTAnalytics;-><init>(Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setUTAnalytics(Lcom/alibaba/ailabs/geniesdk/ut/NativeUTAnalytics;)V

    :cond_0
    return-void
.end method

.method public setUiManager(Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;)V
    .locals 2

    .line 145
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;-><init>(Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;)V

    .line 147
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setUIManager(ILcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;)V

    .line 148
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->mUiManager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    return-void
.end method
