.class public Lcom/alibaba/ailabs/childmode/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_REBOOT_CHECK:I = 0x2

.field private static final MSG_SHOW_LISTEN_MODE:I = 0x4

.field private static final MSG_UPDATE_LISTEN_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CacheManager"

.field private static gAutoSessionId:I = 0x1

.field private static gCacheManager:Lcom/alibaba/ailabs/childmode/CacheManager;


# instance fields
.field private final Youku_Child_ACTION:Ljava/lang/String;

.field private mActivityChangeListener:Lcom/alibaba/ailabs/childmode/PreventAdditionMgrListener;

.field private mActivityName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurReqListenModeId:I

.field private mHandler:Landroid/os/Handler;

.field private mIsListening:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReqListenModeId:I

.field private mRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.youkuchild.android.turando"

    .line 31
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->Youku_Child_ACTION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mIsListening:Z

    .line 140
    new-instance v0, Lcom/alibaba/ailabs/childmode/CacheManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/CacheManager$1;-><init>(Lcom/alibaba/ailabs/childmode/CacheManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    .line 160
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mHandler:Landroid/os/Handler;

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/database/DbManager;->getConfigInfoTable(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getUpdateListenFlag()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 164
    iput p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mReqListenModeId:I

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/CacheManager;->registerBroadcast()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/childmode/CacheManager;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mIsListening:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/childmode/CacheManager;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mIsListening:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/childmode/CacheManager;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->check(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private check(I)V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "CacheManager"

    if-nez v0, :cond_0

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no network mReqListenModeId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mReqListenModeId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check request ,  mReqListenModeId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mReqListenModeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurReqListenModeId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mCurReqListenModeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timeout = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mReqListenModeId:I

    iget v1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mCurReqListenModeId:I

    if-eq v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mReqListenModeId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public static generateSessionId()I
    .locals 3

    .line 108
    const-class v0, Lcom/alibaba/ailabs/childmode/CacheManager;

    monitor-enter v0

    .line 109
    :try_start_0
    sget v1, Lcom/alibaba/ailabs/childmode/CacheManager;->gAutoSessionId:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/alibaba/ailabs/childmode/CacheManager;->gAutoSessionId:I

    .line 110
    sget v1, Lcom/alibaba/ailabs/childmode/CacheManager;->gAutoSessionId:I

    if-ge v1, v2, :cond_0

    .line 111
    sput v2, Lcom/alibaba/ailabs/childmode/CacheManager;->gAutoSessionId:I

    .line 113
    :cond_0
    sget v1, Lcom/alibaba/ailabs/childmode/CacheManager;->gAutoSessionId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/alibaba/ailabs/childmode/CacheManager;
    .locals 1

    .line 182
    sget-object v0, Lcom/alibaba/ailabs/childmode/CacheManager;->gCacheManager:Lcom/alibaba/ailabs/childmode/CacheManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;
    .locals 2

    .line 171
    sget-object v0, Lcom/alibaba/ailabs/childmode/CacheManager;->gCacheManager:Lcom/alibaba/ailabs/childmode/CacheManager;

    if-nez v0, :cond_1

    .line 172
    const-class v0, Lcom/alibaba/ailabs/childmode/CacheManager;

    monitor-enter v0

    .line 173
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/childmode/CacheManager;->gCacheManager:Lcom/alibaba/ailabs/childmode/CacheManager;

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Lcom/alibaba/ailabs/childmode/CacheManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/CacheManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/childmode/CacheManager;->gCacheManager:Lcom/alibaba/ailabs/childmode/CacheManager;

    .line 176
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 178
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/childmode/CacheManager;->gCacheManager:Lcom/alibaba/ailabs/childmode/CacheManager;

    return-object p0
.end method

.method private getRetryTimeout()I
    .locals 4

    const/16 v0, 0xf

    .line 274
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 275
    iget v1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mRetryCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mRetryCount:I

    const/4 v2, 0x1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 279
    iput v2, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mRetryCount:I

    goto :goto_0

    .line 280
    :cond_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 281
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 284
    :cond_1
    :goto_0
    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :array_0
    .array-data 4
        0x2
        0x5
        0xf
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x78
        0x12c
        0x258
        0x1770
    .end array-data
.end method

.method private openReadingMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 206
    invoke-static {p1}, Lcom/mediatek/pq/PictureQuality;->enableBlueLight(Z)Z

    const/16 p1, 0xc0

    .line 207
    invoke-static {p1}, Lcom/mediatek/pq/PictureQuality;->setBlueLightStrength(I)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 209
    invoke-static {p1}, Lcom/mediatek/pq/PictureQuality;->enableBlueLight(Z)Z

    .line 210
    invoke-static {p1}, Lcom/mediatek/pq/PictureQuality;->setBlueLightStrength(I)Z

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private openReadingModeIn818(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 216
    invoke-static {p1}, Lcom/softwinner/AWDisplay;->setReadingMode(Z)V

    const/16 p1, 0x2d

    .line 217
    invoke-static {p1}, Lcom/softwinner/AWDisplay;->setColorTemperature(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 219
    invoke-static {p1}, Lcom/softwinner/AWDisplay;->setReadingMode(Z)V

    const/16 p1, 0x1b

    .line 220
    invoke-static {p1}, Lcom/softwinner/AWDisplay;->setColorTemperature(I)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private registerBroadcast()V
    .locals 3

    .line 119
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.youkuchild.android.turando"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private resetRetryTimeout()V
    .locals 1

    const/4 v0, 0x0

    .line 270
    iput v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mRetryCount:I

    return-void
.end method

.method private updateListenMode(Z)V
    .locals 3

    .line 86
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/Global;->setListenMode(Z)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isListenMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoNotDisturb"

    const-string v2, "updateListenMode"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;Z)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/ListenModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->show(Z)V

    .line 102
    invoke-static {}, Lcom/alibaba/ailabs/childmode/CacheManager;->generateSessionId()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mReqListenModeId:I

    .line 103
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mReqListenModeId:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPreventAdditionMgrListener()Lcom/alibaba/ailabs/childmode/PreventAdditionMgrListener;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mActivityChangeListener:Lcom/alibaba/ailabs/childmode/PreventAdditionMgrListener;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request what =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getRetryTimeout()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->check(I)V

    const-string p1, "read authInfo error "

    .line 56
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 60
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateListenMode(Z)V

    goto :goto_0

    .line 62
    :cond_2
    iget p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mReqListenModeId:I

    iput p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mCurReqListenModeId:I

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mReqListenModeId:I

    invoke-static {p1, p0, v0, v1}, Lcom/alibaba/ailabs/childmode/mtop/NetApi;->updateListenModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ZI)V

    :goto_0
    return v2
.end method

.method public isListening()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mIsListening:Z

    return v0
.end method

.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 257
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onResponseFailed]  userFlag = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errorCode = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", errorMessage = "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;)V

    const/4 p2, 0x7

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 263
    iput p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mCurReqListenModeId:I

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getRetryTimeout()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->check(I)V

    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 1

    .line 243
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onResponseSuccess]  userFlag = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,baseOutDo = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/BaseOutDo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p3, 0x7

    if-ne p3, p2, :cond_0

    .line 246
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alibaba/ailabs/childmode/database/DbManager;->getConfigInfoTable(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;

    move-result-object p2

    .line 247
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->setUpdateListenModeFlag(Z)V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/CacheManager;->resetRetryTimeout()V

    .line 252
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->check(I)V

    return-void
.end method

.method public setPreventAdditionMgrListener(Lcom/alibaba/ailabs/childmode/PreventAdditionMgrListener;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mActivityChangeListener:Lcom/alibaba/ailabs/childmode/PreventAdditionMgrListener;

    return-void
.end method

.method public updateEyeModeInfo(Z)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEyeModeInfo isChecked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 191
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/childmode/Global;->setEyeYieldMode(ZZ)V

    .line 193
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Allwinner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->openReadingModeIn818(Z)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->openReadingMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateListenModeInfo(Z)V
    .locals 3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateListenModeInfo :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isChildMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 234
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 236
    iput v1, v0, Landroid/os/Message;->what:I

    .line 237
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public updateShotCutInfo(Z)V
    .locals 0

    .line 186
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/Global;->setShortCutMode(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
