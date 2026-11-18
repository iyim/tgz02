.class public Lcom/ulog/uploader/client/ULogPushProcess;
.super Ljava/lang/Object;
.source "ULogPushProcess.java"


# static fields
.field private static final KEY_LEVEL:Ljava/lang/String; = "level"

.field private static final KEY_LEVEL_AGE:Ljava/lang/String; = "level_max_age"

.field private static final KEY_NET:Ljava/lang/String; = "net"

.field private static final KEY_PROCESS:Ljava/lang/String; = "process"

.field private static final KEY_TIME_END:Ljava/lang/String; = "to_time"

.field private static final KEY_TIME_START:Ljava/lang/String; = "begin_time"

.field private static final NET_ALL:Ljava/lang/String; = "all"

.field private static final NET_WIFI:Ljava/lang/String; = "wifi"

.field private static final PROCESS_ALL:Ljava/lang/String; = "all"

.field private static final PUSH_LEVEL_ACTIVE_TIME:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ULogUpload.ULogPushProcess"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static processPushMsg(Lcom/ulog/uploader/client/UploadClient;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p1

    const-string v1, ""

    .line 43
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/ulog/uploader/ULogUploadSetup;->isInit()Z

    move-result v2

    const-string v3, "ULogUpload.ULogPushProcess"

    if-nez v2, :cond_1

    const-string v0, "processPushMsg receive, but we must init ulog upload first"

    .line 47
    invoke-static {v3, v0}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 50
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v6, "processPushMsg receive, detail: %s"

    invoke-static {v3, v6, v4}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "level"

    .line 62
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    const-string v0, "level_max_age"

    .line 63
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    const-string v0, "net"

    .line 64
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    const-string v0, "process"

    .line 65
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    const-string v0, "begin_time"

    .line 66
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    const-string/jumbo v0, "to_time"

    .line 67
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    const-string/jumbo v0, "w_taskid"

    .line 69
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    const-string/jumbo v0, "w_triggerid"

    .line 70
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v12, v1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v11, v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v10, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v9, v1

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v8, v1

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v7, v1

    goto :goto_0

    :catch_7
    move-exception v0

    move-object v6, v1

    move-object v7, v6

    :goto_0
    move-object v8, v7

    :goto_1
    move-object v9, v8

    :goto_2
    move-object v10, v9

    :goto_3
    move-object v11, v10

    :goto_4
    move-object v12, v11

    .line 72
    :goto_5
    new-array v4, v5, [Ljava/lang/Object;

    const-string v13, "processPushMsg, json error"

    invoke-static {v3, v0, v13, v4}, Lcom/uc/sdk/ulog/ULog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    move-object/from16 v16, v1

    move-object v13, v10

    move-object v14, v11

    move-object v15, v12

    .line 75
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v10, 0x2

    if-nez v0, :cond_9

    const-string v0, "VERBOSE"

    .line 77
    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v8, "ulog_push_level"

    if-nez v0, :cond_2

    .line 78
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    invoke-static {v5}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    .line 79
    invoke-static {v8, v5}, Lcom/ulog/uploader/utils/ULogPreferences;->setIntValue(Ljava/lang/String;I)V

    goto/16 :goto_7

    :cond_2
    const-string v0, "DEBUG"

    .line 80
    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 81
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    invoke-static {v2}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    .line 82
    invoke-static {v8, v2}, Lcom/ulog/uploader/utils/ULogPreferences;->setIntValue(Ljava/lang/String;I)V

    goto :goto_7

    :cond_3
    const-string v0, "INFO"

    .line 83
    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 84
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    invoke-static {v10}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    .line 85
    invoke-static {v8, v10}, Lcom/ulog/uploader/utils/ULogPreferences;->setIntValue(Ljava/lang/String;I)V

    goto :goto_7

    :cond_4
    const-string v0, "WARNING"

    .line 86
    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 87
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    invoke-static {v4}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    .line 88
    invoke-static {v8, v4}, Lcom/ulog/uploader/utils/ULogPreferences;->setIntValue(Ljava/lang/String;I)V

    goto :goto_7

    :cond_5
    const-string v0, "ERROR"

    .line 89
    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 90
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    invoke-static {v1}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    .line 91
    invoke-static {v8, v1}, Lcom/ulog/uploader/utils/ULogPreferences;->setIntValue(Ljava/lang/String;I)V

    goto :goto_7

    :cond_6
    const-string v0, "FATAL"

    .line 92
    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 93
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    .line 94
    invoke-static {v8, v0}, Lcom/ulog/uploader/utils/ULogPreferences;->setIntValue(Ljava/lang/String;I)V

    goto :goto_7

    :cond_7
    const-string v0, "NONE"

    .line 95
    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 96
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    .line 97
    invoke-static {v8, v0}, Lcom/ulog/uploader/utils/ULogPreferences;->setIntValue(Ljava/lang/String;I)V

    :goto_7
    const/4 v0, 0x1

    goto :goto_8

    .line 100
    :cond_8
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v6, v0, v5

    const-string v1, "processPushMsg. unknown level: %s"

    invoke-static {v3, v1, v0}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_c

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    const-string/jumbo v8, "ulog_push_level_tsp"

    invoke-static {v8, v0, v1}, Lcom/ulog/uploader/utils/ULogPreferences;->setLongValue(Ljava/lang/String;J)V

    .line 108
    :try_start_8
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    mul-int/lit8 v4, v4, 0x18

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v0, v4

    const-string/jumbo v4, "ulog_push_level_age"

    .line 112
    invoke-static {v4, v0, v1}, Lcom/ulog/uploader/utils/ULogPreferences;->setLongValue(Ljava/lang/String;J)V

    .line 114
    invoke-static {}, Lcom/ulog/uploader/utils/ULogPreferences;->applySharedPreference()V

    .line 115
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v6, v0, v5

    aput-object v7, v0, v2

    const-string v1, "PUSH received and set level, level=%s, level_max_age=%s"

    invoke-static {v3, v1, v0}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 117
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 118
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v8, "all"

    :cond_a
    move-object v11, v8

    .line 122
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v10, p0

    .line 123
    invoke-static/range {v10 .. v16}, Lcom/ulog/uploader/client/ULogPushProcess;->uploadULog(Lcom/ulog/uploader/client/UploadClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 125
    :cond_b
    new-array v0, v1, [Ljava/lang/Object;

    aput-object v8, v0, v5

    aput-object v9, v0, v2

    aput-object v13, v0, v10

    aput-object v14, v0, v4

    const-string v1, "processName is empty.net=%s, process=%s, startTime=%s, endTime=%s"

    invoke-static {v3, v1, v0}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_9
    return-void
.end method

.method public static uploadULog(Lcom/ulog/uploader/client/UploadClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "ULogUpload.ULogPushProcess"

    const/4 v4, 0x1

    if-nez v0, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 132
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 138
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    .line 139
    invoke-static {p5, v0}, Lcom/ulog/uploader/utils/ULogPreferences;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_1

    .line 141
    new-array p0, v4, [Ljava/lang/Object;

    aput-object p5, p0, v2

    const-string/jumbo p1, "taskId: %s has been processed before, just ignore"

    invoke-static {v3, p1, p0}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 144
    :cond_1
    invoke-static {p5, p6}, Lcom/ulog/uploader/utils/ULogPreferences;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/ulog/uploader/utils/ULogPreferences;->applySharedPreference()V

    :cond_2
    const-string/jumbo v0, "start upload for push!"

    .line 149
    invoke-static {v3, v0}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/sdk/ulog/ULogSetup;->flushToDiskAndWait()V

    .line 151
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_a

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v5, :cond_3

    goto/16 :goto_4

    .line 156
    :cond_3
    invoke-static {p3}, Lcom/ulog/uploader/utils/ULogDateUtils;->dateOf(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const/16 v6, 0x8

    .line 157
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 158
    invoke-virtual {p4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 162
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 163
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo p3, "wifi"

    .line 169
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/ulog/uploader/client/UploadClient;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/ulog/uploader/utils/UploadUtils;->isWifi(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p0, "processPushMsg uploadULog. only with wifi, just return"

    .line 170
    invoke-static {v3, p0}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p3, "all"

    .line 172
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 173
    new-array p0, v4, [Ljava/lang/Object;

    aput-object p1, p0, v2

    const-string p1, "processPushMsg uploadULog. unknown net type: %s, just return"

    invoke-static {v3, p1, p0}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string p1, ","

    .line 177
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 178
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 180
    array-length p4, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p4, :cond_7

    aget-object v7, p1, v6

    .line 181
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 182
    invoke-virtual {p2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 189
    :goto_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo p3, "w_taskid"

    .line 190
    invoke-interface {v6, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p3, "w_triggerid"

    .line 191
    invoke-interface {v6, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 196
    invoke-static {p0, v0}, Lcom/ulog/uploader/utils/UploadUtils;->getAllExistProcessLogFiles(Lcom/ulog/uploader/client/UploadClient;Ljava/util/Date;)Ljava/util/HashSet;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    .line 198
    new-array p0, v4, [Ljava/lang/Object;

    aput-object p1, p0, v2

    const-string p2, "processPushMsg uploadULog. try to upload all process, current: %s"

    invoke-static {v3, p2, p0}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-static {}, Lcom/ulog/uploader/ULogUploadSetup;->with()Lcom/ulog/uploader/ULogUploadSetup;

    move-result-object p0

    const/4 p3, 0x0

    move-object p2, v0

    move p4, v5

    move p5, v1

    move-object p6, v6

    invoke-virtual/range {p0 .. p6}, Lcom/ulog/uploader/ULogUploadSetup;->uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V

    goto :goto_2

    .line 202
    :cond_8
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    .line 203
    new-array p0, v4, [Ljava/lang/Object;

    aput-object p1, p0, v2

    const-string p2, "processPushMsg uploadULog. try to upload single process current: %s"

    invoke-static {v3, p2, p0}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Lcom/ulog/uploader/ULogUploadSetup;->with()Lcom/ulog/uploader/ULogUploadSetup;

    move-result-object p0

    const/4 p3, 0x0

    move-object p2, v0

    move p4, v5

    move p5, v1

    move-object p6, v6

    invoke-virtual/range {p0 .. p6}, Lcom/ulog/uploader/ULogUploadSetup;->uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V

    goto :goto_3

    :cond_9
    return-void

    :catch_0
    move-exception p0

    .line 165
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p3, p1, v2

    aput-object p4, p1, v4

    const-string p2, "processPushMsg uploadULog. hour format is illegal. strHour: %s, endHour"

    invoke-static {v3, p0, p2, p1}, Lcom/uc/sdk/ulog/ULog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 152
    :cond_a
    :goto_4
    new-array p0, v1, [Ljava/lang/Object;

    aput-object p3, p0, v2

    aput-object p4, p0, v4

    const-string/jumbo p1, "time format is illegal, startTime=%s, endTime=%s"

    invoke-static {v3, p1, p0}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b
    :goto_5
    const/4 p0, 0x4

    .line 133
    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v4

    aput-object p3, p0, v1

    const/4 p1, 0x3

    aput-object p4, p0, p1

    const-string p1, "push start upload ulog return. net=%s, process=%s, startTime=%s, endTime=%s"

    invoke-static {v3, p1, p0}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
