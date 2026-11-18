.class public Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "GestureSvr.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x3
.end annotation


# static fields
.field private static final BACK:I = 0x10

.field public static final CHILDMODE_AUTHORITY:Ljava/lang/String; = "com.alibaba.ailabs.childmode.provider"

.field private static final EVENT_CODE_GESTURE_RESULT:I = 0x111d4

.field private static final GESTURE_DIED:I = 0x2

.field private static final GESTURE_RECHECK:I = 0x4

.field private static final GESTURE_RESULT:I = 0x3

.field private static final GESTURE_SERVER:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.gestures"

.field private static final GESTURE_START:I = 0x0

.field private static final GESTURE_STATE_KEY:Ljava/lang/String; = "isopen"

.field private static final GESTURE_STOP:I = 0x1

.field private static final GESTURE_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

.field public static final LISTEN_MODE_CONTENT:Ljava/lang/String; = "listenMode"

.field private static final NEXT:I = 0x2

.field private static final PAUSE:I = 0x8

.field private static final PLAY:I = 0x4

.field private static final PREVIOUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GestureSvr"

.field private static sGestureSvr:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;


# instance fields
.field private back:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCur:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

.field private mGestureClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field private mGestureEngineCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private mGestureMode:I

.field private mHandler:Landroid/os/Handler;

.field private mIAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

.field private mIsEnabled:Z

.field private mLastStartTimestamp:J

.field private mListenModeObserver:Landroid/database/ContentObserver;

.field private mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

.field private manager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

.field private next:Ljava/lang/String;

.field private no:Ljava/lang/String;

.field private ok:Ljava/lang/String;

.field private pre:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x3
    .end annotation

    .line 501
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mIsEnabled:Z

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mContentObserver:Landroid/database/ContentObserver;

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mListenModeObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureMode:I

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->manager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->pre:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->next:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->ok:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->no:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->back:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 332
    iput-wide v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mLastStartTimestamp:J

    .line 462
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$3;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$3;-><init>(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureEngineCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    .line 490
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$4;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$4;-><init>(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mIAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    .line 502
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mHandler:Landroid/os/Handler;

    .line 505
    :try_start_0
    new-instance p1, Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-direct {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 506
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "geniegesture"

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureEngineCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mIAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->init(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 508
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private check(Z)V
    .locals 9

    .line 335
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->isOpened()Z

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const-string v6, "GestureSvr"

    if-eqz v4, :cond_5

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    const-string v2, " had started gesture = "

    if-nez p1, :cond_3

    if-eq v1, v0, :cond_2

    .line 357
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->isSame(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 358
    :cond_2
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 364
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->closeGesture()V

    .line 366
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->manager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mLastStartTimestamp:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x7d0

    cmp-long p1, v3, v7

    if-lez p1, :cond_4

    .line 367
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->manager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    const/16 v0, 0xe9

    invoke-virtual {p1, v0, v5}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->showGestureAnimation(ILjava/lang/String;)V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mLastStartTimestamp:J

    .line 372
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getNativeUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->manager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    .line 373
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V

    .line 374
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "enable"

    const-string v3, "GenieGestureVEngine"

    invoke-virtual {p1, v0, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 375
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "setMode"

    const-string v3, "static"

    invoke-virtual {p1, v0, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 376
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "setGestureMode"

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 377
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getType()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureMode:I

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mGestureMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "setGestureAnimText"

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getGestureAnimationText(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 381
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :goto_1
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 383
    :goto_2
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    throw p1

    .line 341
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 343
    :goto_4
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->closeGesture()V

    if-nez v4, :cond_7

    .line 346
    iput-object v5, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    .line 348
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no need gesture, has connected = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAlive ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOpened ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private closeGesture()V
    .locals 4

    const/4 v0, 0x0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 318
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->manager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    if-eqz v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->manager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    const/16 v3, 0x1b1

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->showGestureAnimation(ILjava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v2, "disable"

    const-string v3, "GenieGestureVEngine"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 328
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    throw v1

    :catch_0
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    return-void
.end method

.method private getGestureAnimationText(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;)Ljava/lang/String;
    .locals 7

    .line 390
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getTips()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->pre:Ljava/lang/String;

    const/4 v1, 0x2

    .line 393
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->next:Ljava/lang/String;

    const/4 v1, 0x4

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->ok:Ljava/lang/String;

    const/16 v1, 0x8

    .line 395
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->no:Ljava/lang/String;

    const/16 v1, 0x10

    .line 396
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->back:Ljava/lang/String;

    goto :goto_0

    .line 398
    :cond_0
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->back:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->no:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->ok:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->next:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->pre:Ljava/lang/String;

    .line 401
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->pre:Ljava/lang/String;

    const-string v1, ""

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 402
    :goto_1
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->next:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 403
    :goto_2
    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->ok:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v1

    .line 404
    :goto_3
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->no:Ljava/lang/String;

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move-object v4, v1

    .line 405
    :goto_4
    iget-object v5, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->back:Ljava/lang/String;

    if-eqz v5, :cond_5

    move-object v1, v5

    .line 409
    :cond_5
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "pre"

    .line 410
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "next"

    .line 411
    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ok"

    .line 412
    invoke-virtual {v5, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "no"

    .line 413
    invoke-virtual {v5, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "back"

    .line 414
    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->manager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    if-eqz p1, :cond_6

    const-string p1, "GestureSvr"

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->manager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    const/16 v1, 0x14d

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->showGestureAnimation(ILjava/lang/String;)V

    .line 419
    :cond_6
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 421
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getGestureAvailable(Landroid/content/Context;)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    const-string v2, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

    .line 102
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 105
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "isopen"

    .line 107
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object p0, v0

    .line 111
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 114
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v1

    :catchall_1
    move-exception v1

    .line 113
    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 114
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x3
    .end annotation

    .line 452
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->sGestureSvr:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    if-nez v0, :cond_1

    .line 453
    const-class v0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    monitor-enter v0

    .line 454
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->sGestureSvr:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    if-nez v1, :cond_0

    .line 455
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->sGestureSvr:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    .line 457
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 459
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->sGestureSvr:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.gestures"

    return-object v0
.end method

.method private isOpened()Z
    .locals 5

    .line 267
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mIsEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mIsEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GestureSvr"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 273
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_1

    .line 275
    :try_start_0
    new-instance v2, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$1;

    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$1;-><init>(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mContentObserver:Landroid/database/ContentObserver;

    .line 282
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 284
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    .line 285
    iput-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mContentObserver:Landroid/database/ContentObserver;

    .line 289
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mListenModeObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_2

    .line 291
    :try_start_1
    new-instance v2, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$2;

    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$2;-><init>(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mListenModeObserver:Landroid/database/ContentObserver;

    .line 299
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.alibaba.ailabs.childmode.provider/listenMode"

    .line 300
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mListenModeObserver:Landroid/database/ContentObserver;

    .line 299
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getGestureAvailable(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_3

    .line 310
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->isListenMode()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private onGesture(I)Z
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gesture result, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", clientInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GestureSvr"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->onGesture(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public enableGesture(Z)V
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableGesture enable  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureSvr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mIsEnabled:Z

    .line 583
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "GestureSvr"

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 141
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    .line 143
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    if-eqz v4, :cond_0

    .line 146
    invoke-virtual {v4}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->unlinkToDeath()V

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trigger inner start, remove old = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    if-eqz p1, :cond_3

    .line 152
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->linkToDeath()V

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->isSame(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 154
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForced = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "trigger inner start = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const/4 p1, 0x1

    goto/16 :goto_4

    .line 157
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-eq v0, v3, :cond_f

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_5

    goto/16 :goto_2

    .line 178
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-ne v0, v6, :cond_d

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gesture = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->pre:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->next:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->ok:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->no:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->back:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 182
    iget v7, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mGestureMode:I

    const/16 v8, 0x1000

    if-eq v7, v8, :cond_b

    if-ne v0, v3, :cond_6

    and-int/lit8 v4, v7, 0x1

    if-nez v4, :cond_b

    return v3

    :cond_6
    if-ne v0, v4, :cond_7

    shr-int/lit8 v4, v7, 0x1

    and-int/2addr v4, v3

    if-nez v4, :cond_b

    return v3

    :cond_7
    if-ne v0, v6, :cond_8

    shr-int/lit8 v4, v7, 0x2

    and-int/2addr v4, v3

    if-nez v4, :cond_b

    return v3

    :cond_8
    if-ne v0, v5, :cond_9

    shr-int/lit8 v4, v7, 0x3

    and-int/2addr v4, v3

    if-nez v4, :cond_b

    return v3

    :cond_9
    const/4 v4, 0x5

    if-ne v0, v4, :cond_a

    shr-int/lit8 v4, v7, 0x4

    and-int/2addr v4, v3

    if-nez v4, :cond_b

    return v3

    :cond_a
    const/4 v5, 0x6

    if-ne v0, v5, :cond_b

    shr-int/lit8 v4, v7, 0x5

    and-int/2addr v4, v3

    if-nez v4, :cond_b

    return v3

    .line 210
    :cond_b
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 229
    :pswitch_0
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->back:Ljava/lang/String;

    goto :goto_1

    .line 225
    :pswitch_1
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->no:Ljava/lang/String;

    goto :goto_1

    .line 221
    :pswitch_2
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->ok:Ljava/lang/String;

    goto :goto_1

    .line 217
    :pswitch_3
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->next:Ljava/lang/String;

    goto :goto_1

    .line 213
    :pswitch_4
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->pre:Ljava/lang/String;

    :goto_1
    :pswitch_5
    const/16 v4, 0xa

    if-eq v0, v4, :cond_c

    .line 244
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->manager:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    if-eqz v4, :cond_c

    const/16 v5, 0x215

    .line 245
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->showGestureAnimation(ILjava/lang/String;)V

    .line 249
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gesture after = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->pre:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->next:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->ok:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->no:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->back:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->onGesture(I)Z

    move-result p1

    goto :goto_4

    .line 254
    :cond_d
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v5, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 p1, 0x0

    goto :goto_4

    .line 158
    :cond_f
    :goto_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 159
    iget-object v5, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    if-eqz v5, :cond_14

    .line 161
    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_5

    .line 169
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    if-ne v0, v4, :cond_11

    .line 170
    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_12

    .line 171
    iput-object v6, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    goto :goto_3

    .line 174
    :cond_11
    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->unlinkToDeath()V

    .line 175
    iput-object v6, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    .line 177
    :cond_12
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trigger inner stop, type  = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", info = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_4
    if-eqz p1, :cond_13

    .line 259
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->check(Z)V

    :cond_13
    return v3

    .line 162
    :cond_14
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trigger inner stop , but no execute, = clientId "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", clientInfo = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_15

    .line 163
    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_15
    const-string v0, ""

    :goto_6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    const-string v0, "d"

    const-string v1, "t"

    .line 516
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "e"

    const-string v4, "GestureSvr"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_3

    const-string p1, "b"

    .line 521
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v7, 0x0

    if-eqz p1, :cond_2

    .line 523
    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_2

    .line 528
    :cond_0
    :try_start_0
    new-instance v8, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, p1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    .line 529
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 531
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v8, p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->setType(I)V

    const-string p1, "c"

    .line 533
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->setClientId(Ljava/lang/String;)V

    const-string p1, "id"

    .line 534
    invoke-virtual {p2, p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->setClientKey(Ljava/lang/String;)V

    .line 536
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 538
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 539
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 540
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p2, :cond_1

    .line 543
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 544
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {v8, p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->setTips(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 550
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trigger start = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mHandler:Landroid/os/Handler;

    invoke-static {p2, v5, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const/4 v5, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 554
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 524
    :cond_2
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gesture client binder is null or alive = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_3
    if-ne p1, v6, :cond_4

    .line 557
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 559
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trigger stop = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mHandler:Landroid/os/Handler;

    invoke-static {p2, v6, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    const/4 v5, 0x1

    :cond_4
    :goto_4
    const-string p1, "r"

    .line 565
    invoke-virtual {v2, p1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2
.end method

.method public onDied(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;)V
    .locals 2

    .line 573
    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDied  clientInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureSvr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopGesture()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;

    if-nez v0, :cond_0

    const-string v0, "GestureSvr"

    const-string v1, "clientInfo is NULL"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
