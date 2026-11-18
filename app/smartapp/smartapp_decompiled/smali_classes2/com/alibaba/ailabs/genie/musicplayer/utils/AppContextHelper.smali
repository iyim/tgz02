.class public Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;
.super Ljava/lang/Object;
.source "AppContextHelper.java"


# static fields
.field public static final OPERATION_AUTO:I = 0x2

.field public static final OPERATION_TOUCH:I = 0x0

.field public static final OPERATION_VOICE:I = 0x1

.field public static currentAPIName:Ljava/lang/String;

.field public static currentPageIndex:I

.field public static currentRequestId:Ljava/lang/String;

.field public static currentTraceId:Ljava/lang/String;

.field private static mApplication:Landroid/app/Application;

.field private static mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

.field private static mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

.field private static mDataFrom:Ljava/lang/String;

.field private static mFrom:Ljava/lang/String;

.field private static mIsFirstRun:Z

.field private static mIsReverse:Z

.field private static mLastTTSSession:Ljava/lang/String;

.field private static mLrcData:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;

.field private static mPosition:I

.field private static final mSongList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private static mTTSIsOver:Z

.field private static operation:I

.field public static playFavoirte:Z

.field public static sAsrLogId:Ljava/lang/String;

.field public static sCommandId:Ljava/lang/String;

.field public static sTraceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mSongList:Ljava/util/List;

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mLrcData:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;

    const/4 v0, 0x0

    .line 53
    sput v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mPosition:I

    .line 63
    sput v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->operation:I

    .line 84
    sput-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mIsFirstRun:Z

    const-string v1, "touchMode"

    .line 93
    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mFrom:Ljava/lang/String;

    const-string v1, ""

    .line 102
    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mDataFrom:Ljava/lang/String;

    const/4 v2, 0x1

    .line 115
    sput-boolean v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mTTSIsOver:Z

    .line 121
    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mLastTTSSession:Ljava/lang/String;

    .line 193
    sput v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentPageIndex:I

    .line 199
    sput-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->playFavoirte:Z

    .line 226
    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentTraceId:Ljava/lang/String;

    .line 227
    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sTraceId:Ljava/lang/String;

    .line 228
    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sAsrLogId:Ljava/lang/String;

    .line 229
    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sCommandId:Ljava/lang/String;

    .line 230
    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentAPIName:Ljava/lang/String;

    .line 240
    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentRequestId:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static appContext()Landroid/content/Context;
    .locals 1

    .line 152
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static application()Landroid/app/Application;
    .locals 1

    .line 156
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;
    .locals 2

    .line 144
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;-><init>()V

    .line 145
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;->setUserId(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;->setUuid(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;->setToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getContentPlay()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;
    .locals 1

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    return-object v0
.end method

.method public static getCurrentAPIName()Ljava/lang/String;
    .locals 1

    .line 206
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentAPIName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentRequestId()Ljava/lang/String;
    .locals 1

    .line 233
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentSong()Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;
    .locals 1

    .line 74
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    return-object v0
.end method

.method public static getCurrentTraceId()Ljava/lang/String;
    .locals 1

    .line 202
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentTraceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDataFrom()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mDataFrom:Ljava/lang/String;

    return-object v0
.end method

.method public static getFrom()Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public static final getGlobalSongList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mSongList:Ljava/util/List;

    return-object v0
.end method

.method public static getOperation()I
    .locals 1

    .line 183
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->operation:I

    return v0
.end method

.method public static getPosition()I
    .locals 1

    .line 140
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mPosition:I

    return v0
.end method

.method public static getTTSSessionId()Ljava/lang/String;
    .locals 1

    .line 128
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mLastTTSSession:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public static isFirstRun()Z
    .locals 1

    .line 175
    sget-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mIsFirstRun:Z

    return v0
.end method

.method public static isReverse()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mIsReverse:Z

    return v0
.end method

.method public static isTTSIsOver()Z
    .locals 1

    .line 132
    sget-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mTTSIsOver:Z

    return v0
.end method

.method public static resetPageParameter()V
    .locals 1

    const/4 v0, 0x1

    .line 196
    sput v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentPageIndex:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static resources()Landroid/content/res/Resources;
    .locals 1

    .line 160
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static setAguiParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 215
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sTraceId:Ljava/lang/String;

    .line 218
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 219
    sput-object p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sAsrLogId:Ljava/lang/String;

    .line 221
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 222
    sput-object p2, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sCommandId:Ljava/lang/String;

    :cond_2
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 0

    .line 43
    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setCurrentRequestId(Ljava/lang/String;)V
    .locals 0

    .line 237
    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentRequestId:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setCurrentSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 0

    .line 78
    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setCurrentTraceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 210
    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentTraceId:Ljava/lang/String;

    .line 211
    sput-object p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentAPIName:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setDataFrom(Ljava/lang/String;)V
    .locals 0

    .line 105
    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mDataFrom:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setFrom(Ljava/lang/String;)V
    .locals 0

    .line 96
    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mFrom:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setIsFirstRun(Z)V
    .locals 0

    .line 87
    sput-boolean p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mIsFirstRun:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setIsReverse(Z)V
    .locals 0

    .line 29
    sput-boolean p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mIsReverse:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized setLrcData(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;)V
    .locals 3

    const-class v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mLrcData:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->getCurrentLrcRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 166
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mLrcData:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->getCurrentLrcRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    if-eqz p0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->getCurrentLrcRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 169
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mLrcData:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->getCurrentLrcRows()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->getCurrentLrcRows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mLrcData:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->getSongId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->setSongId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setOperation(I)V
    .locals 0

    .line 187
    sput p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->operation:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setPosition(I)V
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 67
    sput p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mPosition:I

    goto :goto_0

    .line 69
    :cond_0
    sput p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mPosition:I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTTSIsOver(Z)V
    .locals 0

    .line 118
    sput-boolean p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mTTSIsOver:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTTSSessionId(Ljava/lang/String;)V
    .locals 0

    .line 124
    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->mLastTTSSession:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
