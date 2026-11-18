.class public Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;
.super Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;
.source "ConfigInfoTable.java"


# static fields
.field private static final DATA:Ljava/lang/String; = "data"

.field public static final KEY:Ljava/lang/String; = "key"

.field private static final KEY_CHILD_MODE:Ljava/lang/String; = "is_child_mode"

.field private static final KEY_FORBIDDEN_END_TIME:Ljava/lang/String; = "forbidden_end_time"

.field private static final KEY_FORBIDDEN_START_TIME:Ljava/lang/String; = "forbidden_start_time"

.field private static final KEY_LISTEN_MODE_INFO:Ljava/lang/String; = "update_listen_mode_info"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "pwd"

.field private static final KEY_PASSWORD_STATUS:Ljava/lang/String; = "pwd_status"

.field private static final KEY_PLAY_TIME_PER_EVERYDAY:Ljava/lang/String; = "time_per_every_day"

.field private static final KEY_PLAY_TIME_PER_ONCETIME:Ljava/lang/String; = "time_per_once_time"

.field private static final KEY_PREVENT_ADDICTION:Ljava/lang/String; = "prevent_addiction"

.field private static final KEY_UPDATE_EYE_INFO:Ljava/lang/String; = "update_eye_info"

.field private static final KEY_UPDATE_KID_INFO:Ljava/lang/String; = "update_kid_info"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final MEHTOD_enableEyeYieldMode:I = 0x3

.field private static final MEHTOD_getAvailableTime:I = 0x4

.field private static final MEHTOD_isChildMode:I = 0x1

.field private static final MEHTOD_isEyeYieldMode:I = 0x2

.field private static final MEHTOD_notifyChangeByActivity:I = 0x6

.field private static final MEHTOD_notifyChangeByApp:I = 0x5

.field private static final METHOD:Ljava/lang/String; = "method"

.field private static final METHOD_enableListenMode:I = 0x8

.field private static final METHOD_getChildPasswoard:I = 0x9

.field private static final METHOD_isListenMode:I = 0x7

.field private static final PARAM:Ljava/lang/String; = "param"

.field private static final RET:Ljava/lang/String; = "ret"

.field public static final TABLE_NAME:Ljava/lang/String; = "childMode"

.field private static final TAG:Ljava/lang/String; = "ConfigInfoTable"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/childmode/database/AbstractManager;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/childmode/database/AbstractManager;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getForbiddenEndTime()I
    .locals 2

    const-string v0, "forbidden_end_time"

    const/16 v1, 0x6270

    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getForbiddenStartTime()I
    .locals 2

    const-string v0, "forbidden_start_time"

    const v1, 0x12750

    .line 256
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    const-string v0, "pwd"

    .line 234
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getPlayTimePerEveryday()I
    .locals 2

    const-string v0, "time_per_every_day"

    const/16 v1, 0x1c20

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPlayTimePerOncetime()I
    .locals 2

    const-string v0, "time_per_once_time"

    const/16 v1, 0x708

    .line 248
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getSqlCommand(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, "

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "key TEXT NOT NULL,"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "value TEXT,"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "UNIQUE("

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "key))"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getUpdateEyeModeFlag()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "update_eye_info"

    .line 215
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getUpdateListenFlag()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "update_listen_mode_info"

    .line 225
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getValue(Ljava/lang/String;I)I
    .locals 4

    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "ConfigInfoTable"

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return p2
.end method

.method public getValue(Ljava/lang/String;J)J
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-wide p2
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "key"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    const-string v0, "value"

    .line 153
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 155
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    .line 162
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v1

    .line 159
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    .line 162
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getVersion()I
    .locals 2

    const-string v0, "version"

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "key"

    .line 122
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 123
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getTableName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p1, -0x1

    :goto_0
    return-wide p1
.end method

.method public insert(Landroid/content/ContentValues;)V
    .locals 5

    const-string v0, "method"

    .line 345
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, ", cur = "

    const-string v3, "param"

    const-string v4, "ConfigInfoTable"

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string v0, "MEHTOD_notifyChangeByActivity"

    .line 370
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isListenMode"

    .line 372
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable$1;-><init>(Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->post(Ljava/lang/Runnable;)Z

    .line 380
    :cond_1
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-static {}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance()Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 383
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getPreventAdditionMgrListener()Lcom/alibaba/ailabs/childmode/PreventAdditionMgrListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 384
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getPreventAdditionMgrListener()Lcom/alibaba/ailabs/childmode/PreventAdditionMgrListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/childmode/PreventAdditionMgrListener;->onGenieActivityChange(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "data"

    .line 359
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 360
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/ListenModeManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->updateListenModeInfo(ZZ)V

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableListenMode param = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_3
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 352
    invoke-static {}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance()Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateEyeModeInfo(Z)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEyeYieldMode param = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isEyeYieldMode()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 392
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public isExist(Ljava/lang/String;)Z
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT _id FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "key"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 89
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 92
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p1, 0x0

    return p1

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected onUpgrade(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const-string v0, "ret"

    .line 297
    new-instance v1, Lcom/alibaba/ailabs/childmode/database/CacheCursor;

    invoke-direct {v1}, Lcom/alibaba/ailabs/childmode/database/CacheCursor;-><init>()V

    .line 298
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 302
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "method"

    .line 303
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "ConfigInfoTable"

    const-string v6, "data"

    if-eq p1, v4, :cond_4

    const/4 v7, 0x2

    if-eq p1, v7, :cond_3

    const/4 v7, 0x4

    if-eq p1, v7, :cond_2

    const/4 v7, 0x7

    if-eq p1, v7, :cond_1

    const/16 v7, 0x9

    if-eq p1, v7, :cond_0

    goto/16 :goto_1

    .line 327
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query: child password ="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isListenMode = "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result p1

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 317
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getAvailableTime()I

    move-result p1

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEHTOD_getAvailableTime = "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getAvailableTime()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_3
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isEyeYieldMode()Z

    move-result p1

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEyeYieldMode = "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isEyeYieldMode()Z

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_4
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isChildMode()Z

    move-result p1

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isChildMode = "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isChildMode()Z

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 335
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    :goto_1
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/childmode/database/CacheCursor;->setExtras(Landroid/os/Bundle;)V

    return-object v1

    .line 338
    :goto_2
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    throw p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object p1, v5, v0

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public saveValue(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->remove(Ljava/lang/String;)Z

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->insert(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public setForbiddenEndTime(I)V
    .locals 1

    .line 268
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "forbidden_end_time"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->saveValue(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method public setForbiddenStartTime(I)V
    .locals 1

    .line 260
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "forbidden_start_time"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->saveValue(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method public setPlayTimePerEveryday(I)V
    .locals 1

    .line 244
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "time_per_every_day"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->saveValue(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method public setPlayTimePerOncetime(I)V
    .locals 1

    .line 252
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "time_per_once_time"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->saveValue(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method public setUpdateEyeModeFlag(Z)V
    .locals 1

    .line 221
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "update_eye_info"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->saveValue(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method public setUpdateListenModeFlag(Z)V
    .locals 1

    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "update_listen_mode_info"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->saveValue(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method public setVersion(I)V
    .locals 1

    .line 276
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "version"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->saveValue(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method
