.class public Lcom/alibaba/ailabs/genie/datacenter/DateCenterDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DateCenterDBHelper.java"


# static fields
.field public static final CREATE_NEW_TABLE_DEVICE_INFO:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS device_info(id INTEGER PRIMARY KEY AUTOINCREMENT, dev_name TEXT, position TEXT, address TEXT, uuid TEXT, wakeup_feedback_type TEXT)"

.field public static final CREATE_NEW_TABLE_DND_MODE_INFO:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS dnd_mode_info(id INTEGER PRIMARY KEY AUTOINCREMENT, enable INTEGER)"

.field public static final CREATE_TABLE_CHILD_TTS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS child_tts_info (id INTEGER PRIMARY KEY AUTOINCREMENT, voiceTypeId INTEGER, speaker TEXT , currentVoice INTEGER , classicName TEXT , description TEXT ,productTemplateId INTEGER ,image TEXT ,url TEXT ,voiceTemplateId TEXT ,style TEXT)"

.field public static final CREATE_TABLE_GESTURE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS gesturerecognize (id INTEGER PRIMARY KEY AUTOINCREMENT, isopen  INTEGER , isauthed INTEGER  )"

.field public static final CREATE_TABLE_TTS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS tts_info (id INTEGER PRIMARY KEY AUTOINCREMENT, voiceTypeId INTEGER, speaker TEXT , currentVoice INTEGER , classicName TEXT , description TEXT ,productTemplateId INTEGER ,image TEXT ,url TEXT ,voiceTemplateId TEXT ,style TEXT)"

.field public static final CREATE_UPDATE_TABLE_DND_MODE_INFO:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS dnd_mode_info(id INTEGER PRIMARY KEY AUTOINCREMENT, enable INTEGER, time_cycle_mode_enable INTEGER,start_hour INTEGER, start_minute INTEGER, end_hour INTEGER, end_minute INTEGER,screen_off INTEGER, message_quiet INTEGER, phone_call_quiet INTEGER,low_wakeup_sensitivity INTEGER, wakeup_feedback TEXT, dnd_mode_version INTEGER,dnd_manual_btn_click INTEGER, dnd_or_tcm_btn_click_date TEXT)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "datacenter.db"

.field private static final DATABASE_VERSION:I = 0x8

.field public static final TABLE_NAME_CHILD_TTS_INFO:Ljava/lang/String; = "child_tts_info"

.field public static final TABLE_NAME_DEVICE_INFO:Ljava/lang/String; = "device_info"

.field public static final TABLE_NAME_DND_MODE_INFO:Ljava/lang/String; = "dnd_mode_info"

.field public static final TABLE_NAME_GESTUR_RECO:Ljava/lang/String; = "gesturerecognize"

.field public static final TABLE_NAME_SWITCH_INFO:Ljava/lang/String; = "switch_info"

.field public static final TABLE_NAME_TTS_INFO:Ljava/lang/String; = "tts_info"

.field private static final TAG:Ljava/lang/String; = "DataCenterDBHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "datacenter.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 72
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS device_info(id INTEGER PRIMARY KEY AUTOINCREMENT, dev_name TEXT, position TEXT, address TEXT, uuid TEXT, wakeup_feedback_type TEXT)"

    .line 78
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS dnd_mode_info(id INTEGER PRIMARY KEY AUTOINCREMENT, enable INTEGER, time_cycle_mode_enable INTEGER,start_hour INTEGER, start_minute INTEGER, end_hour INTEGER, end_minute INTEGER,screen_off INTEGER, message_quiet INTEGER, phone_call_quiet INTEGER,low_wakeup_sensitivity INTEGER, wakeup_feedback TEXT, dnd_mode_version INTEGER,dnd_manual_btn_click INTEGER, dnd_or_tcm_btn_click_date TEXT)"

    .line 79
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS gesturerecognize (id INTEGER PRIMARY KEY AUTOINCREMENT, isopen  INTEGER , isauthed INTEGER  )"

    .line 80
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS tts_info (id INTEGER PRIMARY KEY AUTOINCREMENT, voiceTypeId INTEGER, speaker TEXT , currentVoice INTEGER , classicName TEXT , description TEXT ,productTemplateId INTEGER ,image TEXT ,url TEXT ,voiceTemplateId TEXT ,style TEXT)"

    .line 81
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS child_tts_info (id INTEGER PRIMARY KEY AUTOINCREMENT, voiceTypeId INTEGER, speaker TEXT , currentVoice INTEGER , classicName TEXT , description TEXT ,productTemplateId INTEGER ,image TEXT ,url TEXT ,voiceTemplateId TEXT ,style TEXT)"

    .line 82
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "DataCenterDBHelper"

    const-string v0, "Create DataCenter DB table in DateCenterDBHelper."

    .line 83
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    const-string p1, "DataCenterDBHelper"

    const-string p2, "onDowngrade in DateCenterDBHelper."

    .line 123
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    const-string v0, "CREATE TABLE IF NOT EXISTS gesturerecognize (id INTEGER PRIMARY KEY AUTOINCREMENT, isopen  INTEGER , isauthed INTEGER  )"

    const-string v1, "DROP TABLE IF EXISTS gesturerecognize"

    const-string v2, "DataCenterDBHelper"

    const/4 v3, 0x4

    if-ge p2, v3, :cond_0

    const-string v3, "Update DataCenter DB table in DateCenterDBHelper. old less than 4"

    .line 89
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DROP TABLE IF EXISTS device_info"

    .line 90
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DROP TABLE IF EXISTS dnd_mode_info"

    .line 91
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "CREATE TABLE IF NOT EXISTS device_info(id INTEGER PRIMARY KEY AUTOINCREMENT, dev_name TEXT, position TEXT, address TEXT, uuid TEXT, wakeup_feedback_type TEXT)"

    .line 94
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "CREATE TABLE IF NOT EXISTS dnd_mode_info(id INTEGER PRIMARY KEY AUTOINCREMENT, enable INTEGER, time_cycle_mode_enable INTEGER,start_hour INTEGER, start_minute INTEGER, end_hour INTEGER, end_minute INTEGER,screen_off INTEGER, message_quiet INTEGER, phone_call_quiet INTEGER,low_wakeup_sensitivity INTEGER, wakeup_feedback TEXT, dnd_mode_version INTEGER,dnd_manual_btn_click INTEGER, dnd_or_tcm_btn_click_date TEXT)"

    .line 95
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x5

    const/4 v4, 0x6

    if-gt p2, v3, :cond_1

    if-lt p3, v4, :cond_1

    .line 98
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "Update DataCenter DB table in DateCenterDBHelper. from 4 to 5"

    .line 100
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "CREATE TABLE IF NOT EXISTS tts_info (id INTEGER PRIMARY KEY AUTOINCREMENT, voiceTypeId INTEGER, speaker TEXT , currentVoice INTEGER , classicName TEXT , description TEXT ,productTemplateId INTEGER ,image TEXT ,url TEXT ,voiceTemplateId TEXT ,style TEXT)"

    const-string v1, "DROP TABLE IF EXISTS tts_info"

    const/4 v3, 0x7

    if-gt p2, v4, :cond_2

    if-lt p3, v3, :cond_2

    .line 103
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "Update DataCenter DB table in DateCenterDBHelper. from 6 to 7"

    .line 105
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-gt p2, v3, :cond_5

    const/16 v5, 0x8

    if-lt p3, v5, :cond_5

    if-gt p2, v4, :cond_3

    if-ge p3, v3, :cond_4

    .line 111
    :cond_3
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    const-string p2, "DROP TABLE IF EXISTS child_tts_info"

    .line 114
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE IF NOT EXISTS child_tts_info (id INTEGER PRIMARY KEY AUTOINCREMENT, voiceTypeId INTEGER, speaker TEXT , currentVoice INTEGER , classicName TEXT , description TEXT ,productTemplateId INTEGER ,image TEXT ,url TEXT ,voiceTemplateId TEXT ,style TEXT)"

    .line 115
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "Update DataCenter DB table in DateCenterDBHelper. from 7 to 8"

    .line 116
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
