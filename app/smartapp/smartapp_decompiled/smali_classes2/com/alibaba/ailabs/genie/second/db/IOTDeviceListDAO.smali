.class public Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;
.super Ljava/lang/Object;
.source "IOTDeviceListDAO.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;


# static fields
.field public static final COL_ALG_ID:Ljava/lang/String; = "alg_id"

.field public static final COL_CC_BEGIN_TIME:Ljava/lang/String; = "cc_valid_begin_time"

.field public static final COL_CC_DATA:Ljava/lang/String; = "cc_data"

.field public static final COL_CC_END_TIME:Ljava/lang/String; = "cc_valid_end_time"

.field public static final COL_CC_MAC_KEY:Ljava/lang/String; = "cc_mac_key"

.field public static final COL_CC_NO:Ljava/lang/String; = "cc_no"

.field public static final COL_CC_PAY_TYPE:Ljava/lang/String; = "cc_pay_type"

.field public static final COL_CC_PREUPDATE_COUNT:Ljava/lang/String; = "cc_preupdate_count"

.field public static final COL_CC_PREUPDATE_TIME:Ljava/lang/String; = "cc_preupdate_time"

.field public static final COL_CC_TRANS_KEY:Ljava/lang/String; = "cc_trans_key"

.field public static final COL_CC_TYPE:Ljava/lang/String; = "cc_type"

.field public static final COL_CC_USER_LIMIT:Ljava/lang/String; = "cc_use_limit"

.field public static final COL_CC_USE_COUNT:Ljava/lang/String; = "cc_use_count"

.field public static final COL_SIGN:Ljava/lang/String; = "sign"

.field public static final COL_TIMEOFFSET:Ljava/lang/String; = "time_offset"

.field public static final COL_YKT_ID:Ljava/lang/String; = "ykt_id"

.field public static final SQL_CREATE:Ljava/lang/String; = "CREATE TABLE if not exists IOT_device_info(_id INTEGER PRIMARY KEY AUTOINCREMENT,cc_no TEXT NOT NULL,cc_type INTEGER NOT NULL,ykt_id TEXT NOT NULL,cc_data TEXT NOT NULL,cc_pay_type INTEGER,cc_use_limit INTEGER NOT NULL,cc_use_count INTEGER NOT NULL,cc_valid_begin_time INTEGER NOT NULL,cc_valid_end_time INTEGER NOT NULL,cc_preupdate_time INTEGER NOT NULL,cc_preupdate_count INTEGER NOT NULL,alg_id INTEGER,cc_mac_key TEXT,cc_trans_key TEXT NOT NULL,time_offset INTEGER,sign TEXT NOT NULL)"

.field public static final TABLE_NAME:Ljava/lang/String; = "IOT_device_info"

.field private static gInstance:Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;->gInstance:Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;->gInstance:Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;

    .line 62
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;->gInstance:Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public afterTableAlter(IILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeTableAlter(IILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public createTableSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE if not exists IOT_device_info(_id INTEGER PRIMARY KEY AUTOINCREMENT,cc_no TEXT NOT NULL,cc_type INTEGER NOT NULL,ykt_id TEXT NOT NULL,cc_data TEXT NOT NULL,cc_pay_type INTEGER,cc_use_limit INTEGER NOT NULL,cc_use_count INTEGER NOT NULL,cc_valid_begin_time INTEGER NOT NULL,cc_valid_end_time INTEGER NOT NULL,cc_preupdate_time INTEGER NOT NULL,cc_preupdate_count INTEGER NOT NULL,alg_id INTEGER,cc_mac_key TEXT,cc_trans_key TEXT NOT NULL,time_offset INTEGER,sign TEXT NOT NULL)"

    return-object v0
.end method

.method public getAlterSQL(II)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHelper(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;
    .locals 0

    .line 272
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/db/IOTDbHelper;->get(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    const-string v0, "IOT_device_info"

    return-object v0
.end method

.method public tableVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
