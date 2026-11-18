.class public Lcom/alibaba/ailabs/genie/assistant/Utils/DoNotDisturbModeAPI;
.super Ljava/lang/Object;
.source "DoNotDisturbModeAPI.java"


# static fields
.field private static final COL_DND_MANUAL_BTN_CLICK:Ljava/lang/String; = "dnd_manual_btn_click"

.field private static final COL_DND_MANUAL_MODE_ENABLE:Ljava/lang/String; = "enable"

.field private static final COL_DND_MODE_VERSION:Ljava/lang/String; = "dnd_mode_version"

.field private static final COL_DND_OR_TCM_BTN_CLICK_DATE:Ljava/lang/String; = "dnd_or_tcm_btn_click_date"

.field private static final COL_END_HOUR:Ljava/lang/String; = "end_hour"

.field private static final COL_END_MIN:Ljava/lang/String; = "end_minute"

.field private static final COL_LOW_WAKEUP_SENSITIVITY:Ljava/lang/String; = "low_wakeup_sensitivity"

.field private static final COL_MSG_QUIET:Ljava/lang/String; = "message_quiet"

.field private static final COL_PHONE_CALL_QUIET:Ljava/lang/String; = "phone_call_quiet"

.field private static final COL_SCREEN_OFF:Ljava/lang/String; = "screen_off"

.field private static final COL_START_HOUR:Ljava/lang/String; = "start_hour"

.field private static final COL_START_MIN:Ljava/lang/String; = "start_minute"

.field private static final COL_TCM_ENABLE:Ljava/lang/String; = "time_cycle_mode_enable"

.field private static final COL_WAKEUP_FEEDBACK:Ljava/lang/String; = "wakeup_feedback"

.field public static final DEVICE_INFO_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/device_info"

.field public static final DND_MODE_INFO_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

.field public static final PROP_ALIGENIE_UUID:Ljava/lang/String; = "ro.genie.uuid"

.field private static final TAG:Ljava/lang/String; = "DoNotDisturbModeAPI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static enableDoNotDisturbMode(Landroid/content/Context;Z)V
    .locals 11

    const-string v0, "enable"

    const-string v1, "DoNotDisturbModeAPI"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    .line 73
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 75
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 79
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 80
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableDoNotDisturbMode: try to update DND mode enable status in datacenter, enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "enableDoNotDisturbMode: Found dnd mode enable info in DB, update it"

    .line 82
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0, v3, v10, v2, v2}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "enableDoNotDisturbMode: NO dnd mode enable info found in datacenter! insert a new one"

    .line 86
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, v3, v10}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :goto_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v2

    move-object v0, p0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p0, v2

    .line 90
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 92
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    :goto_2
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-void

    :catchall_2
    move-exception p1

    move-object v0, v2

    .line 92
    :goto_3
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p1
.end method

.method public static getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;
    .locals 10

    .line 158
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    .line 163
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 167
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "DoNotDisturbModeAPI"

    if-nez v2, :cond_0

    :try_start_2
    const-string v4, "getDoNoDisturbModeInfo, cursor is null, should not happen!"

    .line 169
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 205
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 206
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    .line 172
    :cond_0
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoNoDisturbModeInfo: try to get DND mode info from datacenter, count="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; column="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/16 v4, 0xf

    if-ne v1, v4, :cond_8

    const-string v1, "getDoNoDisturbModeInfo: Found dnd mode info in DB"

    .line 174
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    .line 176
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndModeManualEnable:Z

    const/4 v4, 0x2

    .line 177
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mTimeCycleModeEnable:Z

    const/4 v4, 0x3

    .line 178
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mStartHour:I

    const/4 v4, 0x4

    .line 179
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mStartMin:I

    const/4 v4, 0x5

    .line 180
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mEndHour:I

    const/4 v4, 0x6

    .line 181
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mEndMin:I

    const/4 v4, 0x7

    .line 182
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mScreenOff1Min:Z

    const/16 v4, 0x8

    .line 183
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mMsgQuiet:Z

    const/16 v4, 0x9

    .line 184
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mPhoneCallQuiet:Z

    const/16 v4, 0xa

    .line 185
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mLowWakeupSensitivity:Z

    const/16 v4, 0xb

    .line 186
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    const/16 v4, 0xc

    .line 187
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndModeVersion:I

    const/16 v4, 0xd

    .line 188
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_7

    const/4 v1, 0x0

    :cond_7
    iput-boolean v1, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndManualModeBtnClick:Z

    const/16 v1, 0xe

    .line 189
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndOrTcmBtnClickDate:Ljava/lang/String;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoNoDisturbModeInfo: List DND mode info, DND manual mode enable="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndModeManualEnable:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; TCM enable="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mTimeCycleModeEnable:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; start hour="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mStartHour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; start min="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mStartMin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; end hour="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mEndHour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; end min="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mEndMin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; screen off="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mScreenOff1Min:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; msg quiet="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mMsgQuiet:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; phonecall quiet="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mPhoneCallQuiet:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; low wakeup sensitivity="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mLowWakeupSensitivity:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; wakeup feedback="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; ndn mode version="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndModeVersion:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    const-string v1, "getDoNoDisturbModeInfo: NO dnd mode info found in datacenter! Maybe first boot up and not connect to network"

    .line 200
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catch_0
    move-exception v1

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catch_1
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    goto :goto_8

    :catch_2
    move-exception p0

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    .line 203
    :goto_6
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 205
    :cond_9
    :goto_7
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 206
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v0

    :catchall_2
    move-exception v0

    .line 205
    :goto_8
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 206
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0
.end method

.method public static getDoNotDisturbModeStatus(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    .line 41
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 43
    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "enable"

    .line 45
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v2, "DoNotDisturbModeAPI"

    if-eqz v0, :cond_1

    .line 46
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoNotDisturbModeStatus: Found dnd mode enable info in DB, number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDoNotDisturbModeStatus: query DND mode enable status, enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "getDoNotDisturbModeStatus: NO dnd mode info found in datacenter! return false"

    .line 55
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object p0, v0

    .line 58
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 61
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v1

    :catchall_1
    move-exception v1

    .line 60
    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 61
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static updateDoNoDisturbModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;)I
    .locals 12

    const-string v0, "enable"

    const-string v1, "DoNotDisturbModeAPI"

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    .line 105
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 107
    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 110
    iget-boolean v5, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndModeManualEnable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "time_cycle_mode_enable"

    .line 111
    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mTimeCycleModeEnable:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "start_hour"

    .line 112
    iget v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mStartHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "start_minute"

    .line 113
    iget v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mStartMin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "end_hour"

    .line 114
    iget v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mEndHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "end_minute"

    .line 115
    iget v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mEndMin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "screen_off"

    .line 116
    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mScreenOff1Min:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "message_quiet"

    .line 117
    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mMsgQuiet:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "phone_call_quiet"

    .line 118
    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mPhoneCallQuiet:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "low_wakeup_sensitivity"

    .line 119
    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mLowWakeupSensitivity:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "wakeup_feedback"

    .line 120
    iget-object v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget v5, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndModeVersion:I

    if-eqz v5, :cond_0

    const-string v5, "dnd_mode_version"

    .line 122
    iget v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndModeVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v5, "dnd_manual_btn_click"

    .line 123
    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndManualModeBtnClick:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "dnd_or_tcm_btn_click_date"

    .line 124
    iget-object v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndOrTcmBtnClickDate:Ljava/lang/String;

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try to update DND mode info, DND manual mode enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndModeManualEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; TCM enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mTimeCycleModeEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; DND btn click="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndManualModeBtnClick:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; DND or TCM btn click date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndOrTcmBtnClickDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; start hour="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mStartHour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; start min="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mStartMin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; end hour="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mEndHour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; end min="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mEndMin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; screen off="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mScreenOff1Min:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; msg quiet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mMsgQuiet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; phonecall quiet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mPhoneCallQuiet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; low wakeup sensitivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mLowWakeupSensitivity:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; wakeup feedback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; ndn mode version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndModeVersion:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p1, :cond_1

    :try_start_2
    const-string v0, "updateDoNoDisturbModeInfo, cursor is null, should not happen!"

    .line 136
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v2

    :cond_1
    :try_start_3
    const-string v0, "updateDoNoDisturbModeInfo:try to update DND mode info in datacenter"

    .line 139
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "Found dnd mode info in DB, update it"

    .line 141
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0, v4, v11, v3, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "updateDoNoDisturbModeInfo:NO dnd mode info found in datacenter! insert a new one"

    .line 144
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0, v4, v11}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :goto_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v3

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p0, v3

    .line 148
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 150
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    :goto_2
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    const/4 p0, 0x0

    return p0

    :catchall_2
    move-exception p1

    .line 150
    :goto_3
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p1
.end method
