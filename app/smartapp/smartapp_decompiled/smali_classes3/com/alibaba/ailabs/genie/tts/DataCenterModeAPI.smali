.class public Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;
.super Ljava/lang/Object;
.source "DataCenterModeAPI.java"


# static fields
.field public static final AI_CARE_DAY_PUSH_STATUS:Ljava/lang/String; = "ai_care_day_push_status"

.field public static final AI_CARE_INFO_URI:Ljava/lang/String; = "content://com.android.settings.SettingsProvider.voiceprint/smart_care_recognize"

.field public static final AI_CARE_STATUS:Ljava/lang/String; = "ai_care_status"

.field public static final AI_CARE_WEEK_PUSH_STATUS:Ljava/lang/String; = "ai_care_week_push_status"

.field public static final CHILD_MODE_INFO_URI:Ljava/lang/String; = "content://com.android.settings.SettingsProvider.voiceprint/child_mode_recognize"

.field public static final CHILD_MODE_STATUS:Ljava/lang/String; = "child_mode_status"

.field public static final CHILD_TTS_INFO_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/child_tts_info"

.field private static final COL_CLASSIC_NAME:Ljava/lang/String; = "classicName"

.field private static final COL_CURRENT_VOICE:Ljava/lang/String; = "currentVoice"

.field private static final COL_DESC:Ljava/lang/String; = "description "

.field private static final COL_IMAGE:Ljava/lang/String; = "image"

.field private static final COL_PRODUCT_TEMPLATE_ID:Ljava/lang/String; = "productTemplateId"

.field private static final COL_SPEAKER:Ljava/lang/String; = "speaker"

.field private static final COL_STYLE:Ljava/lang/String; = "style"

.field private static final COL_URL:Ljava/lang/String; = "url"

.field private static final COL_VOICE_TEMPLATE_ID:Ljava/lang/String; = "voiceTemplateId"

.field private static final COL_VOICE_TYPE_ID:Ljava/lang/String; = "voiceTypeId"

.field public static final CONVERSATION_INFO_URI:Ljava/lang/String; = "content://com.android.settings.SettingsProvider.voiceprint/conversation_recognize"

.field public static final CONVERSATION_STATUS:Ljava/lang/String; = "conversation_status"

.field public static final DYNAMIC_SETTING_KEY:Ljava/lang/String; = "dynamic_setting_key"

.field public static final DYNAMIC_SETTING_STATUS:Ljava/lang/String; = "dynamic_setting_status"

.field public static final DYNAMIC_SETTING_URI:Ljava/lang/String; = "content://com.android.settings.SettingsProvider.voiceprint/dynamic_recognize"

.field public static final SMART_UI_STATUS:Ljava/lang/String; = "smart_ui_status"

.field private static final TAG:Ljava/lang/String; = "DataCenterModeAPI"

.field public static final TTS_INFO_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/tts_info"

.field public static final ULTRASONIC_INFO_URI:Ljava/lang/String; = "content://com.android.settings.SettingsProvider.voiceprint/ultrasonic_recognize"

.field public static final VISUAL_INFO_URI:Ljava/lang/String; = "content://com.android.settings.SettingsProvider.voiceprint/visual_recognize"

.field public static final VISUAL_STATUS:Ljava/lang/String; = "visual_status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getContentProviderValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "DataCenterModeAPI"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 332
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 334
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    .line 342
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v3

    const/4 p0, 0x0

    .line 338
    :goto_2
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDeviceInfoToDB: Exception caught! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    .line 345
    :cond_1
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentProviderValue uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " key="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    goto :goto_4

    :cond_2
    const/4 p1, 0x0

    :goto_4
    return p1

    :goto_5
    if-eqz v2, :cond_3

    .line 342
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static getCurrentModeSetting(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;
    .locals 11

    const-string v0, "DataCenterModeAPI"

    .line 278
    new-instance v1, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;-><init>()V

    const-string v2, "childFaceRecognize"

    .line 281
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "content://com.android.settings.SettingsProvider.voiceprint/child_mode_recognize"

    .line 282
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "child_mode_status"

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    const-string v2, "ultrasonicControl"

    .line 284
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "content://com.android.settings.SettingsProvider.voiceprint/ultrasonic_recognize"

    .line 285
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "smart_ui_status"

    goto :goto_0

    :cond_1
    const-string v2, "fullDuplexDialog"

    .line 287
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "content://com.android.settings.SettingsProvider.voiceprint/conversation_recognize"

    .line 288
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "conversation_status"

    goto :goto_0

    :cond_2
    const-string v2, "smartCare"

    .line 290
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "content://com.android.settings.SettingsProvider.voiceprint/smart_care_recognize"

    .line 291
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "ai_care_status"

    goto :goto_0

    :cond_3
    const-string v2, "content://com.android.settings.SettingsProvider.voiceprint/visual_recognize"

    .line 294
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "visual_status"

    goto :goto_0

    .line 297
    :goto_1
    iput-object p1, v1, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->name:Ljava/lang/String;

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 p0, 0x0

    .line 301
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_5

    :try_start_1
    const-string v2, "getCurrentModeSetting:datacenter may not be initialized, cursor is NULL, please try it later."

    .line 303
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 318
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p0

    .line 306
    :cond_5
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_7

    .line 307
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 308
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_6

    const/4 p0, 0x1

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    :goto_2
    iput-boolean p0, v1, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z

    goto :goto_3

    :cond_7
    const-string p0, "getCurrentModeSetting:current tts not found!it Should not happend!"

    .line 311
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_3
    if-eqz p1, :cond_9

    .line 318
    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_7

    :catch_1
    move-exception p1

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    .line 314
    :goto_5
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentModeSetting: Exception caught! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    :goto_6
    return-object v1

    :goto_7
    if-eqz p1, :cond_a

    .line 318
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8
.end method

.method public static getCurrentTTS(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;
    .locals 9

    const-string v0, "DataCenterModeAPI"

    .line 166
    new-instance v1, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;-><init>()V

    .line 167
    invoke-static {}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->getTTSUri()Landroid/net/Uri;

    move-result-object v3

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p0, 0x0

    .line 172
    :try_start_0
    move-object v4, p0

    nop

    nop

    const-string v5, "currentVoice=?"

    const-string v6, "1"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    move-object v7, p0

    nop

    nop

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    const-string v3, "getCurrentTTS:datacenter may not be initialized, cursor is NULL, please try it later."

    .line 175
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    .line 178
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_3

    .line 179
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    .line 180
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->voiceTypeId:J

    const/4 v3, 0x3

    .line 182
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v1, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->currentVoice:Z

    const/4 p0, 0x4

    .line 183
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->classicName:Ljava/lang/String;

    const/4 p0, 0x5

    .line 184
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->desc:Ljava/lang/String;

    const/4 p0, 0x7

    .line 186
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->image:Ljava/lang/String;

    const/16 p0, 0x8

    .line 187
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->url:Ljava/lang/String;

    const/16 p0, 0x9

    .line 188
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->voiceTemplateId:Ljava/lang/String;

    const/16 p0, 0xa

    .line 189
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->style:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p0, "getCurrentTTS:current tts not found!it Should not happend!"

    .line 192
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v8, v2

    move-object v2, p0

    move-object p0, v8

    .line 195
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentTTS: Exception caught! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_5

    .line 199
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public static getTTSInfo(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;",
            ">;"
        }
    .end annotation

    const-string v0, "DataCenterModeAPI"

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-static {}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->getTTSUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v8, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 130
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 132
    :try_start_1
    move-object v4, v8

    nop

    nop

    move-object v5, v8

    nop

    nop

    move-object v6, v8

    nop

    nop

    move-object v7, v8

    nop

    nop

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_4

    :cond_0
    :goto_0
    if-eqz v8, :cond_3

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTTSInfo: try to get tts info from datacenter, count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; column="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    new-instance v2, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;-><init>()V

    const/4 v3, 0x1

    .line 138
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->voiceTypeId:J

    const/4 v4, 0x3

    .line 140
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v2, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->currentVoice:Z

    const/4 v3, 0x4

    .line 141
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->classicName:Ljava/lang/String;

    const/4 v3, 0x5

    .line 142
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->desc:Ljava/lang/String;

    const/4 v3, 0x7

    .line 144
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->image:Ljava/lang/String;

    const/16 v3, 0x8

    .line 145
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->url:Ljava/lang/String;

    const/16 v3, 0x9

    .line 146
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->voiceTemplateId:Ljava/lang/String;

    const/16 v3, 0xa

    .line 147
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->style:Ljava/lang/String;

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ttsParameters\'s value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 159
    :cond_2
    :goto_3
    invoke-static {v8}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :cond_3
    :try_start_2
    const-string v2, "getTTSInfo, cursor is null, should not happen!"

    .line 153
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    invoke-static {v8}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v8

    goto :goto_5

    :catch_1
    move-exception v2

    move-object p0, v8

    .line 155
    :goto_4
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTTSInfo: Exception caught! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 159
    :goto_5
    invoke-static {v8}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public static getTTSUri()Landroid/net/Uri;
    .locals 1

    .line 70
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isChildMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/child_tts_info"

    .line 71
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/tts_info"

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static queryDynamicSettingStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "dynamic_setting_status"

    const-string v1, "DataCenterModeAPI"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "content://com.android.settings.SettingsProvider.voiceprint/dynamic_recognize"

    .line 251
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "dynamic_setting_key=?"

    const/4 p0, 0x1

    new-array v8, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v8, p0

    const/4 v9, 0x0

    .line 253
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 258
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :try_start_2
    new-instance v3, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    :try_start_3
    iput-object p1, v3, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->name:Ljava/lang/String;

    const-string v2, "1"

    .line 262
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v10, v2

    move-object v2, p0

    move-object p0, v3

    move-object v3, v10

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v2, p0

    move-object p0, v0

    move-object v0, v3

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz p0, :cond_2

    .line 269
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v0, v2

    move-object v3, v0

    .line 265
    :goto_1
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "querySettingStatus: Exception caught! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    .line 269
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v2, v3

    .line 272
    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryDynamicSettingStatus key: +"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :goto_3
    if-eqz v2, :cond_3

    .line 269
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method public static updateCurrentTTS(Landroid/content/Context;J)I
    .locals 7

    .line 206
    invoke-static {}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->getTTSUri()Landroid/net/Uri;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 208
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "currentVoice"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string v5, "voiceTypeId = ?"

    invoke-virtual {p0, v0, v1, v5, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    const-string p1, "voiceTypeId != ?"

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return v6
.end method

.method public static updateSettingModeInfo(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const-string v0, "DataCenterModeAPI"

    const-string v1, "start updateSettingModeInfo"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 223
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettingMode params size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "visual"

    .line 226
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string p2, "content://com.android.settings.SettingsProvider.voiceprint/visual_recognize"

    .line 227
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 228
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;->getmCurrentStatus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    const-string v1, "ultrasonic"

    .line 229
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "content://com.android.settings.SettingsProvider.voiceprint/ultrasonic_recognize"

    .line 230
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 231
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;->getmCurrentStatus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    const-string p2, "content://com.android.settings.SettingsProvider.voiceprint/child_mode_recognize"

    .line 233
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 234
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;->getmCurrentStatus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 236
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    .line 238
    :try_start_0
    invoke-virtual {p0, v1, v0, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v2
.end method

.method public static updateTTSInfo(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;",
            ">;)I"
        }
    .end annotation

    const-string v0, "DataCenterModeAPI"

    const-string v1, "start updateTTSInfo"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 83
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTTS params size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->getTTSUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 87
    :try_start_0
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 88
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 89
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 90
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;

    const-string v7, "voiceTypeId"

    .line 91
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "currentVoice"

    .line 93
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->isInUse()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "classicName"

    .line 94
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ""

    .line 96
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->getKeywords()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v7, ", "

    .line 97
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->getKeywords()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/ailabs/genie/utils/CommonUtils;->join(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    const-string v8, "description "

    .line 99
    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "image"

    .line 101
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->getAvatarURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "voiceTemplateId"

    .line 102
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->getVoiceTemplateId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->getDialogues()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 104
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 105
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;

    .line 106
    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;->getAnswer()Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v8, "url"

    .line 108
    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;->getMediaURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v7, "style"

    .line 111
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 115
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "com.alibaba.ailabs.genie.datacenter.DataCenterProvider"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTTSInfo error"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return v3
.end method
