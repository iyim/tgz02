.class public Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;
.super Ljava/lang/Object;
.source "WakeupWordsController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeupWordsController"

.field public static final WAKEUP_WORD_NAME_BOFANG:I = 0x11

.field public static final WAKEUP_WORD_NAME_DAKAI:I = 0x17

.field public static final WAKEUP_WORD_NAME_DAKAIDI:I = 0x1b

.field public static final WAKEUP_WORD_NAME_FANHUI:I = 0xe

.field public static final WAKEUP_WORD_NAME_HUANYIPI:I = 0xd

.field public static final WAKEUP_WORD_NAME_INVALID:I = 0x0

.field public static final WAKEUP_WORD_NAME_JINGLINGFANHUI:I = 0x1a

.field public static final WAKEUP_WORD_NAME_JINGLINGTUICHU:I = 0x3

.field public static final WAKEUP_WORD_NAME_JINGLINGZANTING:I = 0x4

.field public static final WAKEUP_WORD_NAME_JIXUBOFANG:I = 0x1c

.field public static final WAKEUP_WORD_NAME_KANZHENGPIAN:I = 0xf

.field public static final WAKEUP_WORD_NAME_KUAIJIN:I = 0x13

.field public static final WAKEUP_WORD_NAME_KUAITUI:I = 0x14

.field public static final WAKEUP_WORD_NAME_NIHAOTIANMAO:I = 0x2

.field public static final WAKEUP_WORD_NAME_QUANPINBOFANG:I = 0x1d

.field public static final WAKEUP_WORD_NAME_QUANPING:I = 0x12

.field public static final WAKEUP_WORD_NAME_SHANGYIGE:I = 0x19

.field public static final WAKEUP_WORD_NAME_SHANGYIJI:I = 0x15

.field public static final WAKEUP_WORD_NAME_SHANGYISHOU:I = 0x18

.field public static final WAKEUP_WORD_NAME_SHANGYIYE:I = 0xb

.field public static final WAKEUP_WORD_NAME_SHENGYINDAYIDIAN:I = 0x5

.field public static final WAKEUP_WORD_NAME_SHENGYINXIAOYIDIAN:I = 0x6

.field public static final WAKEUP_WORD_NAME_TIANMAOJINGLING:I = 0x1

.field public static final WAKEUP_WORD_NAME_WOYAOKAN:I = 0x8

.field public static final WAKEUP_WORD_NAME_WOYAOTING:I = 0x9

.field public static final WAKEUP_WORD_NAME_XIAYIGE:I = 0xa

.field public static final WAKEUP_WORD_NAME_XIAYIJI:I = 0x16

.field public static final WAKEUP_WORD_NAME_XIAYISHOU:I = 0x7

.field public static final WAKEUP_WORD_NAME_XIAYIYE:I = 0xc

.field public static final WAKEUP_WORD_NAME_ZANTING:I = 0x10

.field public static final WAKEUP_WORD_TYPE_GLOBAL:I = 0x1

.field public static final WAKEUP_WORD_TYPE_LOCAL:I = 0x3

.field public static final WAKEUP_WORD_TYPE_SCREENON:I = 0x2

.field private static mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

.field private static wakeup:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{\n    \"wakeupWords\":[\n        {\n            \"key\":\"com.youku.iot/com.youku.tv.playerFullscreen.PlayerActivity\",\n            \"words\":[\n                25,\n                28,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.youku.iot/com.youku.tv.detail.activity.DetailActivity\",\n            \"words\":[\n                25,\n                28,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.youku.iot/com.youku.iot.player.CommonPlayerActivity\",\n            \"words\":[\n                25,\n                28,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.ailabs.youku.iot/com.youku.iot.player.CommonPlayerActivity\",\n            \"words\":[\n                25,\n                28,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.youku.iot/com.youku.news.player.NewsPlayerActivity\",\n            \"words\":[\n                25,\n                28,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.ailabs.youku.iot/com.youku.news.player.NewsPlayerActivity\",\n            \"words\":[\n                25,\n                28,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.youku.iot/com.youku.shortvideo.player.ShortVideoPlayerActivity\",\n            \"words\":[\n                25,\n                28,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.ailabs.youku.iot/com.youku.shortvideo.player.ShortVideoPlayerActivity\",\n            \"words\":[\n                25,\n                28,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.youku.iot/com.yunos.tv.yingshi.boutique.bundle.detail.activity.PlayerActivity\",\n            \"words\":[\n                25,\n                28,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.youku.iot/com.yunos.tv.yingshi.boutique.bundle.detail.activity.YingshiDetailActivity\",\n            \"words\":[\n                25,\n                28,\n                29,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.youkuchild.android/com.youkuchild.android.playback.ChildPlayerActivity\",\n            \"words\":[\n                25,\n                28,\n                29,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.smile.gifmaker/com.yxcorp.gifshow.HomeActivity\",\n            \"words\":[\n                24,\n                25,\n                7,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.ss.android.ugc.aweme/com.ss.android.ugc.aweme.carplay.main.CarPlayMainActivity\",\n            \"words\":[\n                24,\n                25,\n                7,\n                10\n            ]\n        },\n        {\n            \"key\":\"com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.genie.musicplayer.activity.MainActivity\",\n            \"words\":[\n                28,\n                24\n            ]\n        }\n    ]\n}\n\n"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->wakeup:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;
    .locals 2

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->mWakeupWordsController:Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;

    return-object v0
.end method


# virtual methods
.method public handleWakeupWords(ILjava/lang/String;)V
    .locals 8

    const-string v0, "persist.sys.is.shortcut"

    .line 204
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWakeupWords. key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; prop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WakeupWordsController"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "handleWakeupWords. wakeupCodes = "

    const/4 v4, 0x0

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/word/WakeupWordsController;->wakeup:Lorg/json/JSONObject;

    const-string v1, "wakeupWords"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/JSONUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "get wakeup words"

    .line 208
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 211
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    .line 213
    invoke-static {v0, v5}, Lcom/alibaba/ailabs/genie/assistant/Utils/JSONUtils;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "key"

    .line 215
    invoke-static {v6, v7}, Lcom/alibaba/ailabs/genie/assistant/Utils/JSONUtils;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 216
    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "words"

    .line 217
    invoke-static {v6, v7}, Lcom/alibaba/ailabs/genie/assistant/Utils/JSONUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 219
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result p2

    .line 220
    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_0

    .line 222
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 223
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->updatePageWakeupWord(I[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 233
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p2, 0x1

    .line 239
    new-array p2, p2, [I

    aput v4, p2, v4

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->updatePageWakeupWord(I[I)V

    return-void
.end method
