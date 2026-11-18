.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;
.super Ljava/lang/Object;
.source "GenieApi.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;,
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;,
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;,
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$MediaStatusObserver;,
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;
    }
.end annotation


# static fields
.field public static final ACTIVE:I = 0x0

.field public static final AGIS_SERVER:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.server"

.field public static final ALARM_BACKGROUND_STATUS:I = 0x3ef

.field public static final ALARM_DATA_SYNC:I = 0x3f0

.field public static final ALARM_FINISH_STATUS:I = 0x3ed

.field public static final ALARM_FOREGROUND_STATUS:I = 0x3ee

.field public static final ALARM_SATRT_STATUS:I = 0x3ec

.field public static final AUTHORITY:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.provider"

.field public static final CALL_STAUS_CALLING:I = 0x1

.field public static final CALL_STAUS_ESTABLISHED:I = 0x3

.field public static final CALL_STAUS_IDLE:I = 0x0

.field public static final CALL_STAUS_INCOMING:I = 0x2

.field public static final CLOUD:I = 0x2

.field public static final CONTIUNITY:I = 0x1

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final DESTINATION:Ljava/lang/String; = "destination"

.field public static final DOMAINDIRECT:I = 0x6

.field private static final FEEDBACK:Ljava/lang/String; = "feedback"

.field public static final GENIE_SINGLE_TEXT_TYPE_MESSAGE:I = 0x2714

.field public static final GENIE_TEXT_TYPE_MAX:I = 0x4e20

.field public static final GENIE_TEXT_TYPE_MESSAGE:I = 0x2713
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GENIE_TEXT_TYPE_NORMAL:I = 0x2711
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GENIE_TEXT_TYPE_TIPS:I = 0x2712
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final IGNORE_MUTE:Ljava/lang/String; = "ignoreMute"

.field private static final IS_OPEN_MIC:Ljava/lang/String; = "isOpenMic"

.field private static final IS_SHOW:Ljava/lang/String; = "isShow"

.field private static final KEY_ATTACHCNT:Ljava/lang/String; = "attachmentCnt"

.field private static final KEY_EVENTNAME:Ljava/lang/String; = "eventName"

.field private static final KEY_EVENTNS:Ljava/lang/String; = "eventNs"

.field private static final KEY_PAYLOAD:Ljava/lang/String; = "payload"

.field public static final LAN_COMMON_MSG:I = 0x1

.field public static final LAN_CONTROL_MSG:I = 0x0

.field private static final METHOD:Ljava/lang/String; = "method"

.field private static final METHOD_ALARM_STATUS_SYNC:I = 0x7

.field private static final METHOD_SENDTOGW:I = 0x11

.field private static final METHOD_STANBY:I = 0x1a

.field private static final METHOD_callStatus:I = 0x10

.field private static final METHOD_cancelMultiDialog:I = 0x13

.field private static final METHOD_exitSession:I = 0xb

.field private static final METHOD_getLanConnectinfo:I = 0x18

.field private static final METHOD_getMediaPolicy:I = 0xe

.field private static final METHOD_getOrangeConfig:I = 0x16

.field private static final METHOD_getServerSessionId:I = 0x8

.field private static final METHOD_getWakeupType:I = 0xd

.field private static final METHOD_informJump:I = 0x17

.field private static final METHOD_isONLINE:I = 0xc

.field private static final METHOD_isShown:I = 0x2

.field private static final METHOD_playTTS:I = 0x4

.field private static final METHOD_sendLanPacket:I = 0x19

.field private static final METHOD_setGenieText:I = 0x3

.field private static final METHOD_setGenieTextEx:I = 0x9

.field private static final METHOD_showUi:I = 0x1

.field private static final METHOD_skillAttempt:I = 0xf

.field private static final METHOD_skillAttemptByButton:I = 0x12

.field private static final METHOD_stopTTS:I = 0x5

.field private static final METHOD_updateCorpusData:I = 0xa

.field private static final METHOD_updatePageWakeupWordType:I = 0x6

.field private static final METHOD_userHistoryReport:I = 0x14

.field private static final METHOD_wakeupLcMoudle:I = 0x15

.field public static final NO_WAKEUP:I = -0x1

.field private static final PARAM:Ljava/lang/String; = "param"

.field private static final PKG:Ljava/lang/String; = "pkg"

.field public static final PRESS:I = 0x7

.field private static final RET:Ljava/lang/String; = "ret"

.field private static final SECRET_KEY:Ljava/lang/String; = "secretKey"

.field private static final SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final SHORTCUT:I = 0x4

.field private static final SOURCE:Ljava/lang/String; = "source"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TABLE_GENIEAP_NAME:Ljava/lang/String; = "GenieApi"

.field private static final TTS:Ljava/lang/String; = "tts"

.field private static final TYPE:Ljava/lang/String; = "type"

.field public static final UI_POLICY_NORMAL:I = 0x0

.field public static final UI_POLICY_TOAST:I = 0x1

.field public static final VOICEMESSAGE:I = 0x5

.field public static final VOICEPRINT:I = 0x3

.field public static final WAKEUP_CONTIUNITY:I = 0x1

.field public static final WAKEUP_ORAL_EVALUATION:I = 0xf

.field private static final WAKEUP_TYPE:Ljava/lang/String; = "wakeupType"

.field public static final WAKEUP_VOICEPRINT:I = 0x3

.field private static gInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

.field private static final mMediaListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOnTtsInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;

.field private mOrangeinfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusObserver:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$MediaStatusObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMediaListeners:Ljava/util/List;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMainHandler:Landroid/os/Handler;

    .line 1373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOrangeinfos:Ljava/util/HashMap;

    .line 1083
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static AlarmStatusSync(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 161
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$1;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->notifyMediaStatus(IILjava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;ZZ)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->setOnTtsInfo(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;ZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static cancelMultiDialog(Landroid/content/Context;)V
    .locals 2

    .line 540
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$10;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$10;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static exitSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1043
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$12;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$12;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;
    .locals 2

    .line 1072
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->gInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    if-nez v0, :cond_1

    .line 1073
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    monitor-enter v0

    .line 1074
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->gInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    if-nez v1, :cond_0

    .line 1075
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->gInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    .line 1077
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1079
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->gInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    return-object p0
.end method

.method public static getLanConnectinfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 1271
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 1273
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1274
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "method"

    const/16 v4, 0x18

    .line 1278
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 1281
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 1280
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1283
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1287
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1288
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 1285
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1287
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1288
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    const-string v1, ""

    :goto_1
    return-object v1

    :catchall_1
    move-exception v1

    .line 1287
    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1288
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static getMediaPolicy(Landroid/content/Context;I)I
    .locals 9

    const-string v0, "data"

    const/4 v1, 0x0

    .line 1147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 1149
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1150
    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "method"

    const/16 v5, 0xe

    .line 1154
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1155
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v5, 0x0

    .line 1158
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 1157
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1160
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1164
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1165
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p0, v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p0, v1

    .line 1162
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1164
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1165
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    const/4 p1, 0x0

    :goto_1
    return p1

    :catchall_1
    move-exception p1

    .line 1164
    :goto_2
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1165
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p1
.end method

.method public static getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "data"

    const/4 v1, 0x0

    .line 1475
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 1477
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1478
    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1480
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "method"

    const/16 v5, 0x16

    .line 1482
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1484
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x0

    .line 1485
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1486
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p0, v1

    move-object p1, p0

    .line 1488
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1490
    :goto_1
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1491
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :catchall_2
    move-exception v0

    move-object v1, p1

    .line 1490
    :goto_2
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1491
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0
.end method

.method public static getServerSessionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 570
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 572
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 573
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 575
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "method"

    const/16 v4, 0x8

    .line 577
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 581
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 580
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    goto :goto_2

    :catch_2
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    .line 584
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 586
    :goto_1
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 587
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 586
    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 587
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static getWakeupType(Landroid/content/Context;)I
    .locals 8

    const/4 v0, 0x0

    .line 1110
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 1112
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1113
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "method"

    const/16 v4, 0xd

    .line 1117
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 1120
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 1119
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1121
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1125
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1126
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 1123
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1125
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1126
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    const/4 v1, 0x0

    :goto_1
    return v1

    :catchall_1
    move-exception v1

    .line 1125
    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1126
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static hideUi(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 353
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static informJump(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 10

    const-string v0, "data"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 737
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 739
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 740
    invoke-virtual {p0, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "method"

    const/16 v6, 0x17

    .line 744
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 745
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "source"

    .line 746
    invoke-virtual {v4, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "destination"

    .line 747
    invoke-virtual {v4, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "payload"

    .line 748
    invoke-virtual {v4, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "type"

    .line 749
    invoke-virtual {v4, v6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 750
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v6, 0x0

    .line 752
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 754
    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "AliTVASRManager"

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "informJump result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", source:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", destination:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", payload:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", statistics:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 763
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 764
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p0, v2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p0, v2

    .line 761
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 763
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 764
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v1

    :catchall_1
    move-exception p1

    .line 763
    :goto_1
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 764
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p1
.end method

.method public static isOnLine(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    .line 863
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 865
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 866
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "method"

    const/16 v4, 0xc

    .line 870
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 874
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 873
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 875
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 879
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 880
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 877
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 879
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 880
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    const/4 v1, 0x0

    :goto_1
    return v1

    :catchall_1
    move-exception v1

    .line 879
    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 880
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static isUiShowing(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    .line 367
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 369
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 370
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "method"

    const/4 v4, 0x2

    .line 374
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 378
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 377
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 379
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 383
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 384
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 381
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 383
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 384
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    const/4 v1, 0x0

    :goto_1
    return v1

    :catchall_1
    move-exception v1

    .line 383
    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 384
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method private static notifyMediaStatus(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 812
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMediaListeners:Ljava/util/List;

    monitor-enter v0

    .line 813
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMediaListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaListener;

    .line 814
    invoke-interface {v2, p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaListener;->onMediaStatusUpdate(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 816
    :cond_0
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 657
    invoke-static/range {v0 .. v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZZZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    move-result p0

    return p0
.end method

.method public static playTTS(Landroid/content/Context;ILjava/lang/String;ZZZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    const-string v5, "data"

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 684
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 686
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 687
    invoke-virtual {v8, v11}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "method"

    const/4 v12, 0x4

    .line 691
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 692
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v12, "sessionId"

    .line 693
    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v12, "tts"

    .line 694
    invoke-virtual {v10, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "isOpenMic"

    .line 695
    invoke-virtual {v10, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v12, "ignoreMute"

    move/from16 v13, p4

    .line 696
    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v12, "feedback"

    move/from16 v13, p5

    .line 697
    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v12, "secretKey"

    if-eqz v3, :cond_0

    move-object v13, v3

    goto :goto_0

    :cond_0
    const-string v13, ""

    .line 700
    :goto_0
    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "pkg"

    .line 701
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v12, "wakeupType"

    move/from16 v13, p6

    .line 702
    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 704
    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v12, 0x0

    .line 708
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v8

    .line 707
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 711
    invoke-interface {v7}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v9, "AliTVASRManager"

    .line 713
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sessionId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", id = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isOpenMic = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", secretKey = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tts="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v5, :cond_1

    if-eqz v4, :cond_1

    .line 717
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    move-result-object v0

    .line 719
    invoke-direct {v0, v5, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->setOnTtsInfo(ILcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 726
    :cond_1
    invoke-static {v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 727
    invoke-static {v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v5

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v7

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v8, v7

    .line 724
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 726
    invoke-static {v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 727
    invoke-static {v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v6

    :catchall_1
    move-exception v0

    .line 726
    :goto_2
    invoke-static {v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 727
    invoke-static {v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0
.end method

.method public static registerMediaListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaListener;)V
    .locals 4

    .line 770
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMediaListeners:Ljava/util/List;

    monitor-enter v0

    .line 771
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMediaListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "AliTVASRManager"

    .line 772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerMediaListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    sget-object p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMediaListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 774
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    move-result-object p0

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->registerStatusObserver()V

    .line 776
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private registerStatusObserver()V
    .locals 4

    :try_start_0
    const-string v0, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi/mediaStatus"

    .line 793
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 794
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$MediaStatusObserver;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$MediaStatusObserver;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mStatusObserver:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$MediaStatusObserver;

    .line 795
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mStatusObserver:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$MediaStatusObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "AliTVASRManager"

    const-string/jumbo v1, "registerStatusObserver"

    .line 796
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 798
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerTtsCallback(ILcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)V
    .locals 2

    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1032
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;Landroid/os/Handler;ILcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 1034
    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->setOnTtsInfo(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;ZZ)V

    :cond_0
    return-void
.end method

.method public static registerTtsCallback(Landroid/content/Context;ILcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)V
    .locals 1

    if-lez p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 845
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getPreviousEndTts()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 847
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerTtsCallback is end:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AliTVASRManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 848
    invoke-interface {p2, p1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;->onTtsCallback(II)V

    goto :goto_0

    .line 850
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    move-result-object p0

    .line 851
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->registerTtsCallback(ILcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static regsiterOrangeCallback(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;)V
    .locals 0

    .line 1411
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    move-result-object p0

    .line 1412
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->regsiterOrangeCallback(Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private regsiterOrangeCallback(Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;)V
    .locals 5

    .line 1417
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;Landroid/os/Handler;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;)V

    .line 1418
    monitor-enter p0

    .line 1420
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;->orangeKey:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1424
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "AliTVASRManager"

    .line 1426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register observer url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1428
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOrangeinfos:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;

    if-eqz p2, :cond_0

    .line 1430
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1432
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOrangeinfos:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1434
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1436
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static sendLanPacket(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 1305
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 1307
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1308
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "method"

    const/16 v4, 0x19

    .line 1312
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1313
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "msgContent"

    .line 1314
    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "msgType"

    .line 1315
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 1316
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 1320
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 1319
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1325
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p0, v0

    .line 1323
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1325
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1326
    :goto_1
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-void

    :catchall_1
    move-exception p1

    .line 1325
    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1326
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p1
.end method

.method public static sendStanby(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    .line 1340
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 1342
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1343
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "method"

    const/16 v4, 0x1a

    .line 1347
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 1350
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 1349
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 1353
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1355
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1356
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-void

    :catchall_1
    move-exception v1

    .line 1355
    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1356
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static sendTextMsgToGw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 601
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setOnTtsInfo(I)V
    .locals 2

    .line 961
    monitor-enter p0

    .line 962
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOnTtsInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOnTtsInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;

    iget v0, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->sessionId:I

    if-ne v0, p1, :cond_0

    .line 963
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOnTtsInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;

    .line 964
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOnTtsInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 966
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 970
    :try_start_1
    iput-object v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->listener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

    .line 971
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 973
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 966
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private setOnTtsInfo(ILcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)V
    .locals 2

    .line 954
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;Landroid/os/Handler;ILcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 956
    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->setOnTtsInfo(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;ZZ)V

    return-void
.end method

.method private setOnTtsInfo(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;ZZ)V
    .locals 6

    .line 982
    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 985
    :try_start_0
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOnTtsInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;

    if-ne p3, p1, :cond_2

    .line 986
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOnTtsInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;

    goto :goto_1

    .line 989
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOnTtsInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;

    .line 990
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOnTtsInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 994
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi/"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->sessionId:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 998
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "AliTVASRManager"

    .line 1000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "register observer url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1003
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    move-object p1, v1

    .line 1008
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    .line 1013
    :try_start_3
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->listener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

    if-eqz p2, :cond_3

    .line 1015
    iget p3, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->sessionId:I

    const/4 v1, 0x3

    invoke-interface {p2, p3, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;->onTtsCallback(II)V

    .line 1018
    :cond_3
    iput-object v0, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->listener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

    const-string p2, "AliTVASRManager"

    .line 1020
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unregister observer sessionId = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsInfo;->sessionId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1024
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 1008
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public static showUi(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 346
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static showUi(Landroid/content/Context;Z)V
    .locals 2

    .line 319
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$5;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static skillAttempt(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 462
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static skillAttemptByButton(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 502
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$9;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$9;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static stopMultiDialog(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "CancelDialog"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 536
    invoke-static {p0, v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->skillAttemptByButton(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static stopTTS(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    .line 893
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 896
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    move-result-object p0

    .line 897
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->setOnTtsInfo(I)V

    const-string p0, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 900
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 901
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 903
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "sessionId"

    .line 904
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "method"

    const/4 v2, 0x5

    .line 905
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 906
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 910
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    :goto_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p0
.end method

.method public static unRegsiterOrangeCallback(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1459
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    move-result-object p0

    .line 1460
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->unRegsiterOrangeCallback(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private unRegsiterOrangeCallback(Ljava/lang/String;)V
    .locals 1

    .line 1440
    monitor-enter p0

    .line 1442
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mOrangeinfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeObserver;

    if-eqz p1, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1447
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1449
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static unregisterMediaListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaListener;)V
    .locals 4

    .line 780
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMediaListeners:Ljava/util/List;

    monitor-enter v0

    .line 781
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMediaListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "AliTVASRManager"

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterMediaListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    sget-object p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMediaListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 784
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;

    move-result-object p0

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->unregisterStatusObserver()V

    .line 786
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unregisterStatusObserver()V
    .locals 2

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mStatusObserver:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$MediaStatusObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string v0, "AliTVASRManager"

    const-string/jumbo v1, "unregisterStatusObserver"

    .line 805
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 807
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static unregisterTtsCallback(Landroid/content/Context;I)V
    .locals 0

    .line 886
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->stopTTS(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static updateCallStatus(Landroid/content/Context;I)V
    .locals 2

    .line 430
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$7;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$7;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static updateCorpusData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 292
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static updateGenieText(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 250
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$3;

    invoke-direct {v1, p1, p2, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$3;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static updateGenieText(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$2;

    invoke-direct {v1, p1, p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$2;-><init>(ILandroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static updatePageWakeupWordType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 396
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static userHistoryReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8

    .line 1184
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static wakeupLcMoudle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1233
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$14;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$14;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method
