.class public Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# static fields
.field private static final EVENT_NAME_ERROR:Ljava/lang/String; = "musicPlayerUiError"

.field private static final EVENT_TYPE:Ljava/lang/String; = "musicPlayerUiLog"

.field private static final TAG:Ljava/lang/String; = "MusicPlayer"

.field public static final THINK_HWA:Ljava/lang/String; = "thinkhwa"

.field private static authorDebug:Z = true

.field private static debugLog:Z = false

.field private static isInit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static authorThinkHwaDebug(Ljava/lang/String;)V
    .locals 2

    .line 139
    sget-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/BuildConfig;->DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->isAuthorDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->AUTHOR_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    const-string v1, "thinkhwa"

    invoke-static {v0, v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->log(Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 135
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->DEBUG_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    invoke-static {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->log(Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 165
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->ERROR_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    invoke-static {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->printLog(Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 149
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->INFO_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    invoke-static {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->log(Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isAuthorDebug()Z
    .locals 1

    .line 173
    sget-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorDebug:Z

    return v0
.end method

.method private static log(Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 35
    sget-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->isInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 36
    sput-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->isInit:Z

    .line 38
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->printLog(Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static printLog(Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "MusicPlayer"

    .line 48
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper$1;->$SwitchMap$com$alibaba$ailabs$genie$musicplayer$log$LogType:[I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 74
    :pswitch_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->isAuthorDebug()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 75
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    :pswitch_1
    sget-boolean p0, Lcom/alibaba/ailabs/genie/musicplayer/BuildConfig;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 70
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    :pswitch_2
    sget-boolean p0, Lcom/alibaba/ailabs/genie/musicplayer/BuildConfig;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 65
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 59
    :pswitch_3
    sget-boolean p0, Lcom/alibaba/ailabs/genie/musicplayer/BuildConfig;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 60
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 54
    :pswitch_4
    sget-boolean p0, Lcom/alibaba/ailabs/genie/musicplayer/BuildConfig;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 50
    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MusicError"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendErrorToWebGate(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sendErrorToWebGate(Ljava/lang/String;)V
    .locals 7

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendLogToWebGate"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "traceId"

    .line 91
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getCurrentTraceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asrLogId"

    .line 92
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sAsrLogId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "commandId"

    .line 93
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sCommandId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    const-string v2, "466666"

    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorMsg"

    .line 95
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "pkg"

    const-string v1, "com.alibaba.ailabs.genie.musicplayer"

    .line 96
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 100
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v2, "musicPlayerUiLog"

    const-string v3, "musicPlayerUiError"

    const-string v4, "APP"

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",log:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MUSIC-sendLogToWebGate"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->debugLog:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "traceId"

    .line 114
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getCurrentTraceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asrLogId"

    .line 115
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sAsrLogId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "commandId"

    .line 116
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sCommandId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "logMsg"

    .line 117
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pkg"

    const-string v1, "com.alibaba.ailabs.genie.musicplayer"

    .line 118
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MusicPlayer"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v2, "musicPlayerUiLog"

    const-string v4, "APP"

    const-string v6, ""

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 131
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->VERBOSE_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    invoke-static {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->log(Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 157
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->WARNING_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    invoke-static {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->log(Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
