.class public Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;
.super Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
.source "ChildFaceDetectService.java"


# static fields
.field public static final Child_Mode_Persist:Ljava/lang/String; = "persist.sys.is.child.mode"

.field private static final TAG:Ljava/lang/String; = "ChildFaceDetectService"

.field private static final Url_Open_Child_Mode:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/childmode?type=open&pkg=com.alibaba.ailabs.genie.datacenter&from=childface"


# instance fields
.field private lastChildFaceHitTime:J

.field private mAsrSessionId:I

.field private mBlackSceneModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChildFaceDetectCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private mCommonClient:Lcom/alibaba/ailabs/avesdk/AVEClient;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 21
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mCommonClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "video"

    const-string v2, "screen_off"

    const-string v3, "screen_saver"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mBlackSceneModeList:Ljava/util/List;

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mAsrSessionId:I

    const-wide/16 v0, 0x0

    .line 153
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->lastChildFaceHitTime:J

    .line 154
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mChildFaceDetectCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->lastChildFaceHitTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;J)J
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->lastChildFaceHitTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mAsrSessionId:I

    return p1
.end method

.method private checkChildFaceDetectSettingStatus()Z
    .locals 1

    .line 115
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->isChildFaceDetectOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "checkChildFaceDetectSettingStatus: setting open: false"

    .line 116
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "checkChildFaceDetectSettingStatus: setting open: true"

    .line 120
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 229
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 230
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 231
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    const-string p0, ""

    aput-object p0, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static isChildMode()Z
    .locals 2

    const-string v0, "persist.sys.is.child.mode"

    .line 242
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 243
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "in child mode"

    .line 244
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "not in child mode"

    .line 247
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private isInSceneModeBlackList()Z
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mBlackSceneModeList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->getCurrentSceneMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->getCurrentSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in scene mode black list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->getCurrentSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not in scene mode black list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return v0
.end method


# virtual methods
.method public getServiceTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ChildFaceDetectService"

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 87
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " args = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string v0, "muteState"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "true"

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->stopChildFaceDetect()V

    goto :goto_1

    :cond_0
    const-string p1, "false"

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->startChildFaceDetectService()V

    goto :goto_1

    :cond_1
    const-string p2, "activityChange"

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->isInBlackList()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "in black list"

    .line 97
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->stopChildFaceDetect()V

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->startChildFaceDetectService()V

    .line 108
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->isChildMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->stopChildFaceDetect()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCreate()V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->startChildFaceDetectService()V

    const-string v0, "onCreate"

    .line 75
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onDestroy()V

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->stopChildFaceDetect()V

    const-string v0, "onDestroy"

    .line 82
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onSceneModeChanged(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 46
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mBlackSceneModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onSceneModeChanged hit black list"

    .line 47
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->stopChildFaceDetect()V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->startChildFaceDetectService()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScreenChanged(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onWepAppVideoPlayChanged(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "start_play"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->stopChildFaceDetect()V

    goto :goto_0

    :cond_0
    const-string v0, "stop_play"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->startChildFaceDetectService()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public startChildFaceDetect()V
    .locals 3

    const-string v0, "startChildFaceDetect"

    .line 140
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mCommonClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz v0, :cond_0

    const-string v1, "enable"

    const-string v2, "GenieChildFaceInVEngine"

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string v0, "startChildFaceDetect:mCommonClient = null"

    .line 144
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    const-string v0, "startChildFaceDetect end"

    .line 146
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public startChildFaceDetectService()V
    .locals 2

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startChildFaceDetectService : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mCommonClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->isChildMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->getMuteState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->isInBlackList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->checkChildFaceDetectSettingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->getWebAppPlayStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mCommonClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->isInSceneModeBlackList()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "startChildFaceDetectService impl"

    .line 217
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string v0, "genieallinone"

    .line 218
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mChildFaceDetectCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mCommonClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 220
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mCommonClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "not run startChildFaceDetectService"

    .line 222
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 224
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopChildFaceDetect()V
    .locals 3

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mCommonClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-nez v0, :cond_0

    .line 128
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "stopChildFaceDetect"

    .line 131
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mCommonClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v1, "disable"

    const-string v2, "GenieChildFaceInVEngine"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mCommonClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService;->mCommonClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "stopChildFaceDetect ... end"

    .line 135
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
