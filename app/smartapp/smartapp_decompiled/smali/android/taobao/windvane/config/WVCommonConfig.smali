.class public Landroid/taobao/windvane/config/WVCommonConfig;
.super Ljava/lang/Object;
.source "WVCommonConfig.java"

# interfaces
.implements Landroid/taobao/windvane/config/IConfig;


# static fields
.field private static final TAG:Ljava/lang/String; = "WVCommonConfig"

.field public static final commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

.field private static volatile instance:Landroid/taobao/windvane/config/WVCommonConfig;


# instance fields
.field public commonCfg:Ljava/lang/String;

.field private inited:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Landroid/taobao/windvane/config/WVCommonConfigData;

    invoke-direct {v0}, Landroid/taobao/windvane/config/WVCommonConfigData;-><init>()V

    sput-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const/4 v0, 0x0

    .line 25
    sput-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->instance:Landroid/taobao/windvane/config/WVCommonConfig;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "{}"

    .line 26
    iput-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfig;->commonCfg:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/config/WVCommonConfig;Ljava/lang/String;)I
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVCommonConfig;->parseConfig(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInstance()Landroid/taobao/windvane/config/WVCommonConfig;
    .locals 2

    .line 30
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->instance:Landroid/taobao/windvane/config/WVCommonConfig;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Landroid/taobao/windvane/config/WVCommonConfig;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->instance:Landroid/taobao/windvane/config/WVCommonConfig;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Landroid/taobao/windvane/config/WVCommonConfig;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVCommonConfig;-><init>()V

    sput-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->instance:Landroid/taobao/windvane/config/WVCommonConfig;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->instance:Landroid/taobao/windvane/config/WVCommonConfig;

    return-object v0
.end method

.method private parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 336
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "[]"

    .line 338
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    .line 341
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    goto :goto_2

    .line 344
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 345
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 347
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 349
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, p2

    const-string v3, "WVCommonConfig"

    const-string v5, "obtain array error ==>"

    invoke-static {v3, v5, v4}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object p1
.end method

.method private parseConfig(Ljava/lang/String;)I
    .locals 9

    const-string v0, "WVCommonConfig"

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 117
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_c

    const-string p1, ""

    const-string/jumbo v4, "v"

    .line 126
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    .line 130
    :cond_1
    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object v4, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->v:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-string v6, "configUpdateInterval"

    .line 131
    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-ltz v8, :cond_2

    .line 134
    sget-object v4, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-wide v6, v4, Landroid/taobao/windvane/config/WVCommonConfigData;->updateInterval:J

    .line 135
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/taobao/windvane/config/WVConfigManager;->setUpdateInterval(J)V

    .line 137
    :cond_2
    sget-object v4, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-wide v5, 0x3fb999999999999aL    # 0.1

    const-string v7, "packagePriorityWeight"

    invoke-virtual {v3, v7, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, v4, Landroid/taobao/windvane/config/WVCommonConfigData;->packagePriorityWeight:D

    const/4 v4, 0x2

    const-string v5, "packageAppStatus"

    .line 138
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 139
    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput v5, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->packageAppStatus:I

    const-string v5, "monitorStatus"

    .line 140
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 141
    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput v5, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    const-string/jumbo v5, "urlRuleStatus"

    .line 142
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 143
    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput v5, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->urlRuleStatus:I

    const/16 v5, 0x64

    const-string v6, "packageMaxAppCount"

    .line 144
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 145
    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput v5, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->packageMaxAppCount:I

    const-string/jumbo v5, "urlScheme"

    const-string v6, "http"

    .line 146
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v7, ":"

    invoke-virtual {v5, v7, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->urlScheme:Ljava/lang/String;

    const-string/jumbo v5, "verifySampleRate"

    .line 149
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 151
    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->verifySampleRate:Ljava/lang/String;

    :cond_3
    :try_start_1
    const-string v5, "monitoredApps"

    .line 156
    invoke-direct {p0, v3, v5}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 158
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "parseConfig: monitoredApps parseArray occur some error!"

    .line 159
    invoke-static {v0, v5}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    :goto_1
    if-eqz v5, :cond_4

    .line 162
    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object v5, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->monitoredApps:[Ljava/lang/String;

    :cond_4
    :try_start_2
    const-string/jumbo v5, "systemBlacks"

    .line 167
    invoke-direct {p0, v3, v5}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    .line 169
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, "parseConfig: systemBlacks parseArray occur some error!"

    .line 170
    invoke-static {v0, v5}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_5

    .line 173
    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object v5, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->systemBlacks:[Ljava/lang/String;

    :cond_5
    :try_start_3
    const-string v6, "brandBlacks"

    .line 178
    invoke-direct {p0, v3, v6}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v6

    .line 180
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v6, "parseConfig: brandBlacks parseArray occur some error!"

    .line 181
    invoke-static {v0, v6}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    :goto_3
    if-eqz v5, :cond_6

    .line 184
    sget-object v7, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object v6, v7, Landroid/taobao/windvane/config/WVCommonConfigData;->brandBlacks:[Ljava/lang/String;

    :cond_6
    :try_start_4
    const-string v6, "modelBlacks"

    .line 189
    invoke-direct {p0, v3, v6}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v6

    .line 191
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v6, "parseConfig: modelBlacks parseArray occur some error!"

    .line 192
    invoke-static {v0, v6}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    :goto_4
    if-eqz v5, :cond_7

    .line 195
    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object v6, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->modelBlacks:[Ljava/lang/String;

    :cond_7
    :try_start_5
    const-string v5, "aliNetworkDegradeDomains"

    .line 200
    invoke-direct {p0, v3, v5}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v5

    .line 202
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, "parseConfig: aliNetworkDegradeDomains parseArray occur some error!"

    .line 203
    invoke-static {v0, v5}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    :goto_5
    if-eqz v5, :cond_8

    .line 206
    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object v5, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->aliNetworkDegradeDomains:[Ljava/lang/String;

    :cond_8
    :try_start_6
    const-string v5, "disableMixViews"

    .line 211
    invoke-direct {p0, v3, v5}, Landroid/taobao/windvane/config/WVCommonConfig;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v5

    .line 213
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, "parseConfig: disableMixViews parseArray occur some error!"

    .line 214
    invoke-static {v0, v5}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_6
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput-object v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->disableMixViews:[Ljava/lang/String;

    const-string v0, "disableInstallPeriod"

    .line 218
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_a

    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 221
    array-length v1, v0

    if-ne v1, v4, :cond_a

    .line 222
    aget-object v1, v0, v2

    const-string v4, "^[0-9]*$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 223
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->disableInstallPeriod_start:J

    .line 225
    :cond_9
    aget-object v1, v0, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 226
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->disableInstallPeriod_end:J

    :cond_a
    const-string/jumbo v0, "ucParam"

    .line 231
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    if-eqz v1, :cond_b

    .line 233
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/config/UCParamData;->parse(Ljava/lang/String;)V

    .line 235
    :cond_b
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "enableUCShareCore"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUcShareCore:Z

    .line 236
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v1, "useSystemWebView"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->useSystemWebView:Z

    .line 237
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v1, "ucsdk_alinetwork_rate"

    invoke-virtual {v3, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucsdk_alinetwork_rate:D

    .line 238
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v1, "ucsdk_image_strategy_rate"

    invoke-virtual {v3, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucsdk_image_strategy_rate:D

    .line 239
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "cookieUrlRule"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->cookieUrlRule:Ljava/lang/String;

    .line 241
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v1, "ucCoreUrl"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    .line 243
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v1, "shareBlankList"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->shareBlankList:Ljava/lang/String;

    .line 245
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "excludeUCVersions"

    const-string v4, "1.12.11.0, 1.15.15.0, 1.14.13.0, 1.13.12.0"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->excludeUCVersions:Ljava/lang/String;

    .line 247
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "isOpenCombo"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->isOpenCombo:Z

    .line 248
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "isCheckCleanup"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->isCheckCleanup:Z

    .line 249
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "isAutoRegisterApp"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->isAutoRegisterApp:Z

    .line 250
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "isUseTBDownloader"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->isUseTBDownloader:Z

    .line 251
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "isUseAliNetworkDelegate"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->isUseAliNetworkDelegate:Z

    .line 252
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const/16 v1, 0x1e

    const-string v4, "packageDownloadLimit"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageDownloadLimit:I

    .line 253
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const/16 v1, 0xbb8

    const-string v4, "packageAccessInterval"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageAccessInterval:I

    .line 254
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const v1, 0x19bfcc00

    const-string v4, "packageRemoveInterval"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageRemoveInterval:I

    .line 255
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const v1, 0x19bfcc00

    const-string/jumbo v4, "recoveryInterval"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->recoveryInterval:I

    .line 256
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "customsComboLimit"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->customsComboLimit:I

    .line 257
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const/16 v1, 0xa

    const-string v4, "customsDirectQueryLimit"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->customsDirectQueryLimit:I

    .line 258
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "packageZipPrefix"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageZipPrefix:Ljava/lang/String;

    .line 259
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "packageZipPreviewPrefix"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->packageZipPreviewPrefix:Ljava/lang/String;

    .line 260
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v1, "ucSkipOldKernel"

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucSkipOldKernel:Z

    .line 261
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v1, "useUCPlayer"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->useUCPlayer:Z

    .line 262
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "enableUCPrecache"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCPrecache:Z

    .line 263
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v1, "precachePackageName"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->precachePackageName:Ljava/lang/String;

    .line 264
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v0, "enableUCPrecacheDoc"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUCPrecacheDoc:Z

    .line 265
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    const-string v1, "initUCCorePolicy"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    .line 266
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const/16 v0, 0x13

    const-string v1, "initWebPolicy"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->initWebPolicy:I

    .line 267
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v0, "initOldCoreVersions"

    const-string v1, "3.*"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->initOldCoreVersions:Ljava/lang/String;

    .line 268
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openExperiment:Z

    const-string v1, "openExperiment"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openExperiment:Z

    .line 269
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openUCExperiment:Z

    const-string v1, "openUCExperiment"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openUCExperiment:Z

    .line 270
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openUCImageExperiment:Z

    const-string v1, "openUCImageExperiment"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openUCImageExperiment:Z

    .line 271
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->discardableFreeIfHasGpuDecode:Z

    const-string v1, "discardableFreeIfHasGpuDecode"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->discardableFreeIfHasGpuDecode:Z

    .line 272
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiRetryTimes:I

    const-string/jumbo v1, "ucMultiRetryTimes"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiRetryTimes:I

    .line 273
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    const-string/jumbo v1, "webMultiPolicy"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    .line 274
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->gpuMultiPolicy:I

    const-string v1, "gpuMultiPolicy"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->gpuMultiPolicy:I

    .line 275
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const/16 v0, 0x1f40

    const-string/jumbo v1, "ucMultiTimeOut"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiTimeOut:I

    .line 276
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiStartTime:I

    const-string/jumbo v1, "ucMultiStartTime"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiStartTime:I

    .line 277
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->recoverMultiInterval:I

    const-string/jumbo v1, "recoverMultiInterval"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->recoverMultiInterval:I

    .line 278
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v0, "ucMultiServiceSpeedUp"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiServiceSpeedUp:Z

    .line 279
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->downloadCoreType:I

    const-string v1, "downloadCoreType"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->downloadCoreType:I

    .line 280
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v0, "openLog"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openLog:Z

    .line 281
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v0, "openTLog"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->openTLog:Z

    .line 282
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v0, "useOldBridge"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->useOldBridge:Z

    .line 283
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ffmegSoPath:Ljava/lang/String;

    const-string v1, "ffmegSoPath"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->ffmegSoPath:Ljava/lang/String;

    .line 284
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableSgRequestCheck:Z

    const-string v1, "enableSgRequestCheck"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableSgRequestCheck:Z

    .line 285
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->filterSgRequestCheck:Z

    const-string v1, "filterSgRequestCheck"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->filterSgRequestCheck:Z

    .line 286
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v0, "enableExtImgDecoder"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableExtImgDecoder:Z

    .line 288
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v0, "skipPreRenderBackgroundWhitePage"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->skipPreRenderBackgroundWhitePage:Z

    .line 289
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v0, "fixWhitePageBug"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->fixWhitePageBug:Z

    .line 290
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string v0, "enablePreStartup"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enablePreStartup:Z

    .line 291
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v0, "useNewThreadPool"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->useNewThreadPool:Z

    .line 292
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableGpuGoneReload:Z

    const-string v1, "enableGpuGoneReload"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableGpuGoneReload:Z

    .line 293
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v0, "useURLConfig"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->useURLConfig:Z

    .line 295
    invoke-direct {p0, v3}, Landroid/taobao/windvane/config/WVCommonConfig;->parseUnzipDegradeConfig(Lorg/json/JSONObject;)V

    .line 297
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object p1

    const/16 v0, 0x177c

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 299
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p1

    return p1

    :cond_c
    return v2
.end method

.method private parseUnzipDegradeConfig(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "WVCommonConfig"

    .line 306
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v2, "zipDegradeMode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->zipDegradeMode:I

    .line 307
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const-string/jumbo v2, "zipDegradeList"

    const-string v4, ""

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->zipDegradeList:Ljava/lang/String;

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 310
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->zipDegradeList:Ljava/lang/String;

    .line 311
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ","

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 314
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 315
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Degrade unzip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->needZipDegrade:Z

    .line 318
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->zipDegradeMode:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 320
    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iput v3, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->packageAppStatus:I

    const-string p1, "Disable package app"

    .line 321
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public hasInited()Z
    .locals 1

    .line 367
    iget-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 3

    .line 44
    iget-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfig;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wv_main_config"

    const-string v1, "commonwv-data"

    .line 45
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iput-object v0, p0, Landroid/taobao/windvane/config/WVCommonConfig;->commonCfg:Ljava/lang/String;

    .line 49
    :cond_0
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/WVCommonConfig;->parseConfig(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 2

    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iput-object p1, p0, Landroid/taobao/windvane/config/WVCommonConfig;->commonCfg:Ljava/lang/String;

    .line 361
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVCommonConfig;->parseConfig(Ljava/lang/String;)I

    const-string/jumbo v0, "wv_main_config"

    const-string v1, "commonwv-data"

    .line 362
    invoke-static {v0, v1, p1}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCommonRule(Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object p2

    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->v:Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->getTargetValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {p2, v2, v0, v1, p3}, Landroid/taobao/windvane/config/WVConfigManager;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->zType:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigManager;->getInstance()Landroid/taobao/windvane/config/WVConfigManager;

    move-result-object p2

    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->getTargetValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p2, v2, v1, v0, p3}, Landroid/taobao/windvane/config/WVConfigManager;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 68
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/connect/ConnectManager;->getInstance()Landroid/taobao/windvane/connect/ConnectManager;

    move-result-object p3

    new-instance v0, Landroid/taobao/windvane/config/WVCommonConfig$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/taobao/windvane/config/WVCommonConfig$1;-><init>(Landroid/taobao/windvane/config/WVCommonConfig;Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Landroid/taobao/windvane/connect/ConnectManager;->connectSync(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;

    return-void
.end method
