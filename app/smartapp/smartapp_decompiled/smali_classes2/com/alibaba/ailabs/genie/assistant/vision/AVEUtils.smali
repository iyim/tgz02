.class public Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;
.super Ljava/lang/Object;
.source "AVEUtils.java"


# static fields
.field public static final CHILD_FACE_DETECT_CONTENT_PROVIDER_URI:Ljava/lang/String; = "content://com.android.settings.SettingsProvider.voiceprint/child_mode_recognize"

.field public static final GENIE_ALINN_FACE_DETECT_ENGINE:Ljava/lang/String; = "GenieAliNNFaceDetectVEngine"

.field public static final GENIE_CHILD_FACE_ENGINE:Ljava/lang/String; = "GenieChildFaceVEngine"

.field public static final GENIE_FACE_DISTANCE_ENGINE:Ljava/lang/String; = "GenieFaceDistanceVEngine"

.field public static final GENIE_FACE_ENGINE:Ljava/lang/String; = "GenieFaceVEngine"

.field public static final GENIE_FALL_DETECT_ENGINE:Ljava/lang/String; = "GenieFallDetectVEngine"

.field public static final GENIE_FIRE_EYE_BOOK_ENGINE:Ljava/lang/String; = "GenieFireEyeBookVEngine"

.field public static final GENIE_GESTURE_ENGINE:Ljava/lang/String; = "GenieGestureVEngine"

.field public static final GENIE_MOTION_DETECT_ENGINE:Ljava/lang/String; = "GenieMotionDetectVEngine"

.field public static final GENIE_PEOPLE_DETECT_ENGINE:Ljava/lang/String; = "GeniePeopleDetectVEngine"

.field public static final GENIE_PEOPLE_TRACK_ENGINE:Ljava/lang/String; = "GeniePeopleTrackVEngine"

.field public static final GENIE_PET_DETECT_ENGINE:Ljava/lang/String; = "GeniePetDetectVEngine"

.field public static final GENIE_WAKE_UP_ENGINE:Ljava/lang/String; = "GenieWakeUpVEngine"

.field public static final GESTURE_DETECT_CONTENT_PROVIDER_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

.field private static final GESTURE_STATE_KEY:Ljava/lang/String; = "isopen"

.field private static final TAG:Ljava/lang/String; = "AVEUtils"

.field public static final VISION_WAKE_UP_SETTING_CONTENT_PROVIDER_URI:Ljava/lang/String; = "content://com.android.settings.SettingsProvider.voiceprint/visual_recognize"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkAveSettingStatus(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "GenieChildFaceVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "GenieGestureVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "GenieWakeUpVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "GenieFaceDistanceVEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    return v3

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->isEyeCareModeOpen(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 46
    :cond_2
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->isGestureDetectOpen(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 44
    :cond_3
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->isChildFaceDetectOpen(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 42
    :cond_4
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->isVisionWakeUpOpen(Landroid/content/Context;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79651b66 -> :sswitch_3
        -0x4060baf3 -> :sswitch_2
        -0x32f5f3c5 -> :sswitch_1
        0x5c4872eb -> :sswitch_0
    .end sparse-switch
.end method

.method public static isChildFaceDetectOpen(Landroid/content/Context;)Z
    .locals 2

    .line 95
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    move-result-object p0

    const-string v0, "childFaceRecognize"

    .line 97
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "childFaceRecognize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    :try_start_0
    const-string v0, "enable"

    .line 103
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEyeCareModeOpen(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "persist.sys.is.eyeshield.mode"

    .line 141
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result p0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IS_EYE_YIELD_MODE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    return p0
.end method

.method public static isGestureDetectOpen(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

    .line 116
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 119
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "isopen"

    .line 121
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    .line 127
    :goto_0
    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 128
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object p0, v1

    .line 125
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 128
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    const/4 v2, -0x1

    :goto_2
    if-eq v2, v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_3
    const-string p0, "checkGestureDetectSettingStatus: setting open: false"

    .line 133
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception v0

    .line 127
    :goto_4
    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 128
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0
.end method

.method public static isVisionWakeUpOpen(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "isVisionWakeUpOpen:"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p0, "content://com.android.settings.SettingsProvider.voiceprint/visual_recognize"

    .line 58
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "visual_status"

    .line 61
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 64
    :goto_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 69
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v9, v3

    move v3, p0

    move-object p0, v9

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    const/4 v3, 0x0

    .line 66
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVisionWakeUpOpen: error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 69
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move p0, v3

    .line 72
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :goto_3
    if-eqz v2, :cond_4

    .line 69
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method
