.class public final Lcom/alibaba/ailabs/geniesdk/AiLabsCore;
.super Ljava/lang/Object;
.source "AiLabsCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IExtUserBinderInfoListener;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IDefaultContextInfoListener;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$BusinessMethod;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$AudioCheckPointDumpType;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$AudioCheckPointType;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$MediaUiPolicy;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$MediaPolicy;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$SystemEvent;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$DeviceModeType;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$OfflineDecisionMode;,
        Lcom/alibaba/ailabs/geniesdk/AiLabsCore$DeviceMode;
    }
.end annotation


# static fields
.field public static final TALK_STATUS_OFFLINE:I = 0x0

.field public static final TALK_STATUS_ONLINE:I = 0x1

.field private static gInstance:Lcom/alibaba/ailabs/geniesdk/AiLabsCore;


# instance fields
.field private mAccountDispatch:Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIDefaultContextInfoListener:Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IDefaultContextInfoListener;

.field private mIExtUserBinderInfoListener:Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IExtUserBinderInfoListener;

.field private mIGetAppInfoListener:Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;

.field private mSystemEventProcessor:Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "agui"

    .line 410
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mContext:Landroid/content/Context;

    const-string p1, "HQN"

    const-string v0, "HQN. AiLabsCore()."

    .line 466
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/client/GetAppInfo;

    invoke-direct {p1}, Lcom/alibaba/ailabs/geniesdk/client/GetAppInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setIGetAppInfoListener(Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;)V

    return-void
.end method

.method private getDefaultContextInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 517
    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mIDefaultContextInfoListener:Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IDefaultContextInfoListener;

    if-eqz p2, :cond_0

    .line 520
    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IDefaultContextInfoListener;->onDefaultContextInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getForegroundInfo()Ljava/lang/String;
    .locals 2

    .line 476
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getIGetAppInfoListener()Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;->getForegroundInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;
    .locals 1

    .line 430
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->gInstance:Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/AiLabsCore;
    .locals 2

    .line 414
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->gInstance:Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    if-nez v0, :cond_1

    .line 415
    const-class v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    monitor-enter v0

    .line 416
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->gInstance:Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    if-nez v1, :cond_0

    .line 417
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->gInstance:Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    .line 419
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 421
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->gInstance:Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    return-object p0
.end method

.method private getPackageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 494
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getIGetAppInfoListener()Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private nativeCreateStorage(Ljava/lang/String;)Lcom/alibaba/ailabs/geniesdk/storage/IStorage;
    .locals 2

    .line 588
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private onAccountRequest(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1365
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mAccountDispatch:Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;

    if-eqz v0, :cond_0

    .line 1368
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/account/IAccountRequest;->onAccountRequest(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1371
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private onExtUserBinderInfo(Ljava/lang/String;)V
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getExtUserBindInfoListener()Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IExtUserBinderInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    :try_start_0
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IExtUserBinderInfoListener;->onExtUserBinderInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 602
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private onLocalProcess(ILjava/lang/String;Ljava/lang/String;)I
    .locals 9

    const-string p1, ", asr = "

    const-string v0, ",data = "

    const-string v1, "onPlugin"

    const-string v2, "asr"

    const/4 v3, 0x0

    .line 537
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mContext:Landroid/content/Context;

    const-string v5, "com.alibaba.ailabs.genie.iot.ipc.service"

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v4

    const-string v5, "iot.ipc.service"

    .line 538
    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    if-eqz v4, :cond_1

    .line 540
    invoke-interface {v4}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 541
    invoke-static {v4}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v4

    .line 543
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "d"

    .line 544
    invoke-virtual {v5, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "e"

    const/4 v7, 0x1

    .line 545
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x0

    .line 549
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 551
    :try_start_2
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 553
    invoke-virtual {v5, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "extra"

    .line 555
    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v8, v6

    .line 558
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/16 v2, 0x2711

    .line 561
    invoke-interface {v4, v2, v5}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "r"

    .line 563
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 566
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "success ret = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 572
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private native registerClientInner(Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/mmi/NativeClient;)Z
.end method

.method private native registerEventDispatcherInner(ILcom/alibaba/ailabs/geniesdk/event/NativeMmiEventCallback;)J
.end method

.method private native registerInputDevice(Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;Lcom/alibaba/ailabs/geniesdk/record/InputDeviceAttr;)Z
.end method

.method private native setSystemEventProcessorInner(Lcom/alibaba/ailabs/geniesdk/event/NativeMmiEventCallback;)V
.end method


# virtual methods
.method public native addAppFeature(Ljava/lang/String;)V
.end method

.method public native addFullAppFeature(Ljava/lang/String;)V
.end method

.method public native addPlayerParam(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public native agmcAbandonFocus(Ljava/lang/String;Z)Z
.end method

.method public native agmcGetCurrentPosition(Ljava/lang/String;)J
.end method

.method public native agmcGetDuration(Ljava/lang/String;)J
.end method

.method public native agmcGetPlayableDuration(Ljava/lang/String;)J
.end method

.method public native agmcHasFocus(Ljava/lang/String;)Z
.end method

.method public native agmcInit(Ljava/lang/String;)V
.end method

.method public native agmcIsPlaying(Ljava/lang/String;)Z
.end method

.method public native agmcPause(Ljava/lang/String;)V
.end method

.method public native agmcPlay(Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/agmc/AgmcMedia;)I
.end method

.method public native agmcRegisterCallback(Lcom/alibaba/ailabs/geniesdk/agmc/IAgmcCallback;)V
.end method

.method public native agmcRelease(Ljava/lang/String;)V
.end method

.method public native agmcResume(Ljava/lang/String;)V
.end method

.method public native agmcSeekTo(Ljava/lang/String;J)V
.end method

.method public native agmcSetFadeIn(Ljava/lang/String;IFF)V
.end method

.method public native agmcSetSpeed(Ljava/lang/String;IF)V
.end method

.method public native agmcSetVolume(Ljava/lang/String;F)V
.end method

.method public native agmcStop(Ljava/lang/String;)V
.end method

.method public native agmcStopAll()V
.end method

.method public native audioCheckPoint(II)V
.end method

.method public native authorize(Ljava/lang/String;)I
.end method

.method public native bindGuest()V
.end method

.method public native bindUser()V
.end method

.method public native businessExt(ILjava/lang/String;)Z
.end method

.method public native cancelMultiDialog()V
.end method

.method public native enableWakeup(Z)V
.end method

.method public native executeAutoTestAppCmd(ILjava/lang/String;IZ)V
.end method

.method public native executeAutoTestCmd(Ljava/lang/String;)V
.end method

.method public native exitSession(I)V
.end method

.method public native fullDuplexDialogPageChangeToBlackList(Ljava/lang/String;)V
.end method

.method public getAccountDispatch()Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;
    .locals 2

    .line 1352
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mAccountDispatch:Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;

    if-nez v0, :cond_1

    .line 1353
    const-class v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    monitor-enter v0

    .line 1354
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mAccountDispatch:Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;

    if-nez v1, :cond_0

    .line 1355
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;

    invoke-direct {v1}, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mAccountDispatch:Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;

    .line 1357
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1359
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mAccountDispatch:Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public native getDigest(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getExtUserBindInfoListener()Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IExtUserBinderInfoListener;
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mIExtUserBinderInfoListener:Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IExtUserBinderInfoListener;

    return-object v0
.end method

.method public getHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 440
    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JNI_JAVA"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mHandlerThread:Landroid/os/HandlerThread;

    .line 443
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 445
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 447
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getIGetAppInfoListener()Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mIGetAppInfoListener:Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;

    return-object v0
.end method

.method public native getMediaPolicy()I
.end method

.method public native getMediaUiPolicy(II)I
.end method

.method public native getMirrorValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getOrangeConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getProductSetting(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getServerSessionId()Ljava/lang/String;
.end method

.method public native getSystemContext()V
.end method

.method public getSystemEventProcessor()Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mSystemEventProcessor:Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;

    return-object v0
.end method

.method public native getTalkStatus()I
.end method

.method public getVirtualPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 502
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getIGetAppInfoListener()Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;->getVirtualPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public native getWakeupType()I
.end method

.method public native informJump(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;)I
.end method

.method public native init(Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;Ljava/lang/Object;)V
.end method

.method public native isExtrenPlay()Z
.end method

.method public native isMemberType()Z
.end method

.method public native isOnLine()Z
.end method

.method public native isScreenOn()Z
.end method

.method public native isTestEnable()Z
.end method

.method public native logoutUser()V
.end method

.method public lsgetVirtualPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 614
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getIGetAppInfoListener()Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;->getVirtualPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public native notifyClientDied(ILjava/lang/String;Z)V
.end method

.method public native onResponseCapabilityProcessor(ILcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
.end method

.method public native playTts(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;)I
.end method

.method public native refreshMirrorData()V
.end method

.method public native registerCallback(Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;)V
.end method

.method public registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;Z)V
    .locals 1

    .line 679
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;-><init>()V

    .line 681
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setPackageName(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setPkg(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p3}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setClassName(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0, p5}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setShowUI(Z)V

    .line 687
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerCallback(Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;)V

    return-void
.end method

.method public registerCapability(ILcom/alibaba/ailabs/agui/modal/ICapability;)V
    .locals 1

    .line 1440
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/mmi/NativeCapability;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/mmi/NativeCapability;-><init>(ILcom/alibaba/ailabs/agui/modal/ICapability;)V

    .line 1441
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerCapabilityInner(ILcom/alibaba/ailabs/geniesdk/mmi/NativeCapability;)V

    return-void
.end method

.method public native registerCapabilityInner(ILcom/alibaba/ailabs/geniesdk/mmi/NativeCapability;)V
.end method

.method public registerClient(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 1483
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/mmi/NativeClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/alibaba/ailabs/geniesdk/mmi/NativeClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1485
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerClientInner(Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/mmi/NativeClient;)Z

    return-void
.end method

.method public registerEventDispatcher(ILcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)J
    .locals 1

    .line 1390
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/event/NativeMmiEventCallback;

    invoke-direct {v0, p2}, Lcom/alibaba/ailabs/geniesdk/event/NativeMmiEventCallback;-><init>(Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)V

    .line 1392
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerEventDispatcherInner(ILcom/alibaba/ailabs/geniesdk/event/NativeMmiEventCallback;)J

    move-result-wide p1

    return-wide p1
.end method

.method public registerInputDevice(Lcom/alibaba/ailabs/geniesdk/record/InputDeviceAttr;Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;)Z
    .locals 1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1537
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;

    invoke-direct {v0, p2}, Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;-><init>(Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;)V

    .line 1539
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerInputDevice(Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;Lcom/alibaba/ailabs/geniesdk/record/InputDeviceAttr;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public native registerLocalNluProcesser(Lcom/alibaba/ailabs/geniesdk/input/ILocalNluProcess;Ljava/lang/String;)V
.end method

.method public native registerRecordInputDevice(ILcom/alibaba/ailabs/geniesdk/record/InputDeviceAttr;Lcom/alibaba/ailabs/geniesdk/record/NativeAGRecordProducer;)Z
.end method

.method public native sendCommand(ILjava/lang/String;Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
.end method

.method public native sendEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
.end method

.method public native sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 757
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)I
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 772
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)I

    move-result p1

    return p1
.end method

.method public native sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)I
.end method

.method public native sendTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setAccountMask(I)V
.end method

.method public native setAsrMode(Ljava/lang/String;I)V
.end method

.method public native setBackgroundService(Ljava/lang/String;Z)V
.end method

.method public setDefaultContextInfoListener(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IDefaultContextInfoListener;)V
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mIDefaultContextInfoListener:Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IDefaultContextInfoListener;

    return-void
.end method

.method public native setEnable(Ljava/lang/String;Z)V
.end method

.method public native setEnableDebug(Z)V
.end method

.method public setExtUserBindInfoListener(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IExtUserBinderInfoListener;)V
    .locals 0

    .line 1306
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mIExtUserBinderInfoListener:Lcom/alibaba/ailabs/geniesdk/AiLabsCore$IExtUserBinderInfoListener;

    return-void
.end method

.method public native setFocusMgr(Lcom/alibaba/ailabs/geniesdk/focus/NativeFocusMgr;)V
.end method

.method public native setFullDuplexDialogRenewDuration(I)V
.end method

.method public setIGetAppInfoListener(Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;)V
    .locals 0

    .line 1325
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mIGetAppInfoListener:Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;

    return-void
.end method

.method public native setLocalTtsProcesser(Lcom/alibaba/ailabs/geniesdk/agmc/ILocalTtsProcesser;)V
.end method

.method public native setMirrorListener(Lcom/alibaba/ailabs/geniesdk/deviceMirror/IDeviceMirrorListener;)V
.end method

.method public native setMirrorValue(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public native setModeChange(II)V
.end method

.method public native setOfflineDecisionMode(I)V
.end method

.method public native setOrangeNotifyProxy(Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;)V
.end method

.method public native setResultMode(Ljava/lang/String;I)V
.end method

.method public native setSecureConnectEnable(Z)V
.end method

.method public native setSystemContextCallback(Lcom/alibaba/ailabs/geniesdk/client/ISystemContextCallBack;)V
.end method

.method public setSystemEventProcessor(Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)V
    .locals 1

    .line 1422
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->mSystemEventProcessor:Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;

    .line 1423
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/event/NativeMmiEventCallback;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/geniesdk/event/NativeMmiEventCallback;-><init>(Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)V

    .line 1425
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setSystemEventProcessorInner(Lcom/alibaba/ailabs/geniesdk/event/NativeMmiEventCallback;)V

    return-void
.end method

.method public native setUIManager(ILcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;)V
.end method

.method public native setUTAnalytics(Lcom/alibaba/ailabs/geniesdk/ut/NativeUTAnalytics;)V
.end method

.method public native setUTPStreamType(III)V
.end method

.method public native setWindowType(Ljava/lang/String;Z)V
.end method

.method public native showAsrUI(Ljava/lang/String;Z)V
.end method

.method public native skillAttempt(Ljava/lang/String;)I
.end method

.method public native skillAttemptByButton(ILjava/lang/String;Ljava/lang/String;Z)I
.end method

.method public native start()V
.end method

.method public native startCapability(I)V
.end method

.method public native startTalk(ILcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;)Z
.end method

.method public native stopBindUser()V
.end method

.method public native stopCapability(I)V
.end method

.method public native stopTalk(ILcom/alibaba/ailabs/geniesdk/record/StopWakeInfo;)V
.end method

.method public native stopTts(I)V
.end method

.method public native systemToNotify(IIILjava/lang/Object;)V
.end method

.method public native unregisterCallback(Ljava/lang/String;Z)V
.end method

.method public native unregisterCapability(I)V
.end method

.method public native unregisterClient(Ljava/lang/String;)V
.end method

.method public native unregisterEventDispatcher(IJ)V
.end method

.method public native updateAccountInfo()Z
.end method

.method public native updatePageWakeupWord(I[I)V
.end method
