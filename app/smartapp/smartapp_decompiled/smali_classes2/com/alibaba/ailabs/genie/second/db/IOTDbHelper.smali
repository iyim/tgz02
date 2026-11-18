.class public Lcom/alibaba/ailabs/genie/second/db/IOTDbHelper;
.super Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;
.source "IOTDbHelper.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "tmall_genie_iot.db"

.field public static final DB_VERSION:I = 0x1

.field public static final TABLESS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static volatile instance:Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/alibaba/ailabs/genie/second/db/IOTDeviceListDAO;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/genie/second/db/IOTDbHelper;->TABLESS:[Ljava/lang/Class;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;
    .locals 5

    const-class v0, Lcom/alibaba/ailabs/genie/second/db/IOTDbHelper;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/second/db/IOTDbHelper;->instance:Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/alibaba/ailabs/genie/second/db/IOTDbHelper;

    const-string v2, "tmall_genie_iot.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/alibaba/ailabs/genie/second/db/IOTDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v1, Lcom/alibaba/ailabs/genie/second/db/IOTDbHelper;->instance:Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;

    .line 32
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/genie/second/db/IOTDbHelper;->instance:Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getDBName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public getDBVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTables()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/alibaba/ailabs/genie/second/db/IOTDbHelper;->TABLESS:[Ljava/lang/Class;

    return-object v0
.end method
