.class public Lcom/alibaba/ailabs/genie/tts/NetApi;
.super Ljava/lang/Object;
.source "NetApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Landroid/content/Context;ZI)V
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/tts/NetApi;->notifyDataChange(Landroid/content/Context;ZI)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAuthInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 48
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "userId"

    .line 52
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uuid"

    .line 53
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 54
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSettingInfo(Landroid/content/Context;)V
    .locals 4

    .line 79
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.device.setting.getdevicesetting"

    .line 80
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 81
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 85
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uuid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 90
    new-instance v1, Lcom/alibaba/ailabs/genie/tts/NetApi$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/tts/NetApi$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/tts/NetApi;->sendAsyn(Lmtopsdk/mtop/domain/MtopRequest;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static getTtsInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    new-instance v1, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailRequest;-><init>()V

    .line 64
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, p3}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailRequest;->setDeviceMode(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponse;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method private static notifyDataChange(Landroid/content/Context;ZI)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    const-string p2, ""

    move-object v3, p2

    move-object p2, v2

    goto :goto_0

    :cond_0
    const-string p2, "content://com.android.settings.SettingsProvider.voiceprint/smart_care_recognize"

    .line 268
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v3, "ai_care_status"

    goto :goto_0

    :cond_1
    const-string p2, "content://com.android.settings.SettingsProvider.voiceprint/conversation_recognize"

    .line 263
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v3, "conversation_status"

    goto :goto_0

    :cond_2
    const-string p2, "content://com.android.settings.SettingsProvider.voiceprint/child_mode_recognize"

    .line 258
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v3, "child_mode_status"

    goto :goto_0

    :cond_3
    const-string p2, "content://com.android.settings.SettingsProvider.voiceprint/visual_recognize"

    .line 254
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v3, "visual_status"

    goto :goto_0

    :cond_4
    const-string p2, "content://com.android.settings.SettingsProvider.voiceprint/ultrasonic_recognize"

    .line 250
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v3, "smart_ui_status"

    :goto_0
    if-eqz p2, :cond_5

    .line 277
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v2

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_5
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_9

    .line 279
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 280
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 281
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_6

    const/4 v7, 0x2

    goto :goto_2

    :cond_6
    const/4 v7, 0x1

    .line 282
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-ne v5, v1, :cond_7

    if-eqz p1, :cond_7

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2, v6, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_5

    :cond_7
    if-ne v5, v0, :cond_9

    if-nez p1, :cond_9

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2, v6, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v2, v4

    .line 292
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_a

    .line 295
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :goto_4
    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p0

    :cond_9
    :goto_5
    if-eqz v4, :cond_a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_6
    return-void
.end method

.method public static sendAsyn(Lmtopsdk/mtop/domain/MtopRequest;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lmtopsdk/mtop/common/ApiID;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/MtopRequest;",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;",
            ">;)",
            "Lmtopsdk/mtop/common/ApiID;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/tts/NetApi$3;-><init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 241
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getPreStaging()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    move-result-object p0

    return-object p0
.end method

.method public static updateContentProvider(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 9

    const-string v0, "content://com.android.settings.SettingsProvider.voiceprint/smart_care_recognize"

    .line 303
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v7, "NetApi"

    const-string v1, "updateContentProvider"

    .line 304
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    .line 306
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 308
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 310
    invoke-virtual {p0, v0, p1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p0, "updateContentProvider update"

    .line 311
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string p0, "updateContentProvider insert"

    .line 315
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 322
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v8, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v8

    goto :goto_3

    :catch_1
    move-exception p0

    .line 318
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "updateContentProvider err"

    .line 319
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_1

    .line 322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public static uploadSettingInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "content://com.android.settings.SettingsProvider.voiceprint/smart_care_recognize"

    const-string v1, "value"

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadSettingInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetApi"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v2, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v4, "mtop.alibaba.aicloud.t.deviceInfo.setDeviceSetting"

    .line 171
    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v4, "1.0"

    .line 172
    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 173
    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 174
    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 176
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 177
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "authInfo"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    const-string v6, "uuid"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "key"

    .line 179
    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "fullDuplexDialog"

    .line 183
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    invoke-virtual {v5, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string p3, "enable"

    :cond_1
    invoke-virtual {v5, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_0
    const-string p1, "smartCare"

    .line 189
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ai_care_week_push_status"

    .line 190
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->getContentProviderValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const-string p2, "pushPerWeek"

    .line 191
    invoke-virtual {v5, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "ai_care_day_push_status"

    .line 192
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->getContentProviderValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const-string p1, "pushPerDay"

    .line 193
    invoke-virtual {v5, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 196
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 198
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "param="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/util/Map;)V

    .line 202
    new-instance p0, Lcom/alibaba/ailabs/genie/tts/NetApi$2;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/tts/NetApi$2;-><init>()V

    invoke-static {v2, p0}, Lcom/alibaba/ailabs/genie/tts/NetApi;->sendAsyn(Lmtopsdk/mtop/domain/MtopRequest;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static uploadTtsInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    new-instance v1, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;-><init>()V

    .line 71
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, p3, p4}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->setCharacterId(J)V

    .line 73
    invoke-virtual {v1, p5}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->setDeviceMode(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingResponse;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method
