.class public Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;
.super Ljava/lang/Object;
.source "DataCenterModeAPI.java"


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

.field private static final TAG:Ljava/lang/String; = "DataCenterModeAPI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static enableDoNotDisturbMode(Landroid/content/Context;Z)V
    .locals 11

    const-string v0, "DataCenterModeAPI"

    const-string v1, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    .line 77
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 79
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v10, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_1

    :try_start_1
    const-string p1, "enableDoNotDisturbMode, cursor is null, should not happen!"

    .line 85
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 103
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 88
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDoNotDisturbMode: try to update DND mode enable status in datacenter, enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "enableDoNotDisturbMode: Found dnd mode enable info in DB, update it"

    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v8, v1, v9, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "enableDoNotDisturbMode: NO dnd mode enable info found in datacenter! insert a new one"

    .line 94
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v8, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz p0, :cond_3

    .line 103
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v10, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v10

    goto :goto_3

    :catch_1
    move-exception p1

    .line 99
    :goto_1
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableDoNotDisturbMode: Exception caught! "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_3

    .line 103
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    return-void

    :goto_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method public static getDeviceInfoDataCenter(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;
    .locals 11

    .line 225
    new-instance v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;-><init>()V

    const-string v1, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/device_info"

    .line 226
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "ro.genie.uuid"

    .line 228
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceInfoDataCenter:Get ro.genie.uuid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "DataCenterModeAPI"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "uuid=?"

    const/4 v9, 0x1

    .line 234
    new-array v6, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p0, v6, v10

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    :try_start_1
    const-string p0, "getDeviceInfoDataCenter:datacenter may not be initialized, cursor is NULL, please try it later."

    .line 236
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    .line 239
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceInfoDataCenter:Found device in DB, uuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; number="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 242
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    .line 243
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 244
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    .line 245
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceInfoDataCenter:Query device info, id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; address="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; uuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; wakeup feedback="

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 250
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevName:Ljava/lang/String;

    :cond_2
    if-eqz v3, :cond_3

    .line 252
    iput-object v3, v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevPosition:Ljava/lang/String;

    :cond_3
    if-eqz v4, :cond_4

    .line 255
    iput-object v4, v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevAddress:Ljava/lang/String;

    :cond_4
    if-eqz v5, :cond_6

    .line 257
    iput-object v5, v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mWakeupFeedback:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceInfoDataCenter:NO device info found in datacenter! Should not happend! uuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_0
    if-eqz v2, :cond_7

    .line 268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 264
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceInfoDataCenter: Exception caught! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_7

    .line 268
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_2
    return-object v0

    :goto_3
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p0
.end method

.method public static getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;
    .locals 9

    const-string v0, "DataCenterModeAPI"

    .line 168
    new-instance v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;-><init>()V

    const-string v2, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    .line 169
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v2, 0x0

    .line 173
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 174
    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 177
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_7

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const-string v3, "getDoNoDisturbModeInfo, cursor is null, should not happen!"

    .line 180
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    .line 183
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoNoDisturbModeInfo: try to get DND mode info from datacenter, count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; column="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_9

    const-string v3, "getDoNoDisturbModeInfo: Found dnd mode info in DB"

    .line 185
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    .line 187
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    const/4 v4, 0x2

    .line 188
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    const/4 v4, 0x3

    .line 189
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    const/4 v4, 0x4

    .line 190
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    const/4 v4, 0x5

    .line 191
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    const/4 v4, 0x6

    .line 192
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    const/4 v4, 0x7

    .line 193
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    const/16 v4, 0x8

    .line 194
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    const/16 v4, 0x9

    .line 195
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    const/16 v4, 0xa

    .line 196
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    const/4 v4, 0x1

    :goto_6
    iput-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    const/16 v4, 0xb

    .line 197
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    const/16 v4, 0xc

    .line 198
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeVersion:I

    const/16 v4, 0xd

    .line 199
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_8

    const/4 v3, 0x0

    :cond_8
    iput-boolean v3, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndManualModeBtnClick:Z

    const/16 v3, 0xe

    .line 200
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndOrTcmBtnClickDate:Ljava/lang/String;

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoNoDisturbModeInfo: List DND mode info, DND manual mode enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; TCM enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; start hour="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; start min="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; end hour="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; end min="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; screen off="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; msg quiet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; phonecall quiet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; low wakeup sensitivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; wakeup feedback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; ndn mode version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_9
    const-string v3, "getDoNoDisturbModeInfo: NO dnd mode info found in datacenter! Maybe first boot up and not connect to network"

    .line 211
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object p0, v2

    goto :goto_9

    :catch_1
    move-exception v3

    move-object p0, v2

    .line 214
    :goto_7
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDoNoDisturbModeInfo: Exception caught! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    :cond_a
    :goto_8
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v1

    :catchall_1
    move-exception v0

    .line 217
    :goto_9
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0
.end method

.method public static getDoNotDisturbModeStatus(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "DataCenterModeAPI"

    const-string v1, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    .line 41
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 46
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :try_start_1
    const-string v2, "enable"

    .line 48
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v2, "getDoNotDisturbModeStatus, cursor is null, should not happen!"

    .line 51
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v8

    .line 54
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDoNotDisturbModeStatus: Found dnd mode enable info in DB, number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoNotDisturbModeStatus: query DND mode enable status, enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "getDoNotDisturbModeStatus: NO dnd mode info found in datacenter! return false"

    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object p0, v1

    .line 66
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoNotDisturbModeStatus: Exception caught! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_2
    return v8

    :catchall_1
    move-exception v0

    .line 69
    :goto_3
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public static updateDeviceInfoToDB(Landroid/content/Context;Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;Z)I
    .locals 12

    const-string v0, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/device_info"

    .line 277
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "ro.genie.uuid"

    .line 279
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDeviceInfoToDB:Get ro.genie.uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "DataCenterModeAPI"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v9, -0x1

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevUuid:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateDeviceInfoToDB:UUID not match, skip update!Device uuid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; target uuid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevUuid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    const/4 p2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    :try_start_0
    const-string v4, "uuid=?"

    const/4 v11, 0x1

    .line 288
    new-array v5, v11, [Ljava/lang/String;

    aput-object v7, v5, v10

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "updateDeviceInfoToDB:datacenter may not be initialized, cursor is NULL, please try it later."

    .line 290
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 322
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return v9

    .line 293
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 295
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevName:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "dev_name"

    .line 296
    iget-object v3, p1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_3
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevPosition:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "position"

    .line 299
    iget-object v3, p1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevPosition:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_4
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevAddress:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "address"

    .line 302
    iget-object v3, p1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_5
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mWakeupFeedback:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, "wakeup_feedback_type"

    .line 305
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mWakeupFeedback:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "updateDeviceInfoToDB: Device info with given uuid="

    if-lez p1, :cond_7

    .line 309
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists, just update it."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "uuid = ?"

    .line 310
    new-array v2, v11, [Ljava/lang/String;

    aput-object v7, v2, v10

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not exists, create a new one."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "uuid"

    .line 314
    invoke-virtual {v1, p1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz p2, :cond_8

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 318
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDeviceInfoToDB: Exception caught! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_8

    .line 322
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_8
    return v10

    :goto_2
    if-eqz p2, :cond_9

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p0
.end method

.method public static updateDoNoDisturbModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;)I
    .locals 11

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DndModeParameters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataCenterModeAPI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    .line 111
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 113
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 114
    iget-boolean v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 115
    iget-boolean v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "time_cycle_mode_enable"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 116
    iget v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "start_hour"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    iget v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "start_minute"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    iget v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "end_hour"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    iget v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "end_minute"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    iget-boolean v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "screen_off"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    iget-boolean v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "message_quiet"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 122
    iget-boolean v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "phone_call_quiet"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 123
    iget-boolean v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "low_wakeup_sensitivity"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 124
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    const-string v4, "wakeup_feedback"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeVersion:I

    if-ltz v2, :cond_0

    .line 126
    iget v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "dnd_mode_version"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    :cond_0
    iget-boolean v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndManualModeBtnClick:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "dnd_manual_btn_click"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 129
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndOrTcmBtnClickDate:Ljava/lang/String;

    const-string v4, "dnd_or_tcm_btn_click_date"

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to update DND mode info, DND manual mode enable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; TCM enable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; DND btn click="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndManualModeBtnClick:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; DND or TCM btn click date="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndOrTcmBtnClickDate:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; start hour="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; start min="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; end hour="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; end min="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; screen off="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; msg quiet="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; phonecall quiet="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; low wakeup sensitivity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; wakeup feedback="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; ndn mode version="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeVersion:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    :try_start_1
    const-string p1, "updateDoNoDisturbModeInfo, cursor is null, should not happen!"

    .line 143
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 160
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    :try_start_2
    const-string v2, "updateDoNoDisturbModeInfo:try to update DND mode info in datacenter"

    .line 146
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "Found dnd mode info in DB, update it"

    .line 148
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v8, v0, v9, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "updateDoNoDisturbModeInfo:NO dnd mode info found in datacenter! insert a new one"

    .line 151
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v8, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz p0, :cond_4

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    .line 156
    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDoNoDisturbModeInfo: Exception caught! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_4

    .line 160
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method
