.class public abstract Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;
.super Landroidx/room/RoomDatabase;
.source "ApplistDataBase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;,
        Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;,
        Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;,
        Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;,
        Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;,
        Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;
    }
    exportSchema = false
    version = 0xb
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/alibaba/ailabs/appbox/db/dao/AliJSONArrayConverter;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "ApplistDb.db"

.field static final MIGRATION_10_11:Landroidx/room/migration/Migration;

.field static final MIGRATION_2_3:Landroidx/room/migration/Migration;

.field static final MIGRATION_3_4:Landroidx/room/migration/Migration;

.field static final MIGRATION_4_5:Landroidx/room/migration/Migration;

.field static final MIGRATION_5_6:Landroidx/room/migration/Migration;

.field static final MIGRATION_6_7:Landroidx/room/migration/Migration;

.field static final MIGRATION_7_8:Landroidx/room/migration/Migration;

.field static final MIGRATION_8_9:Landroidx/room/migration/Migration;

.field static final MIGRATION_9_10:Landroidx/room/migration/Migration;

.field private static final TAG:Ljava/lang/String; = "ApplistDataBase"

.field private static volatile instance:Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$1;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$1;-><init>(II)V

    sput-object v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    .line 78
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$2;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$2;-><init>(II)V

    sput-object v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    .line 87
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$3;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$3;-><init>(II)V

    sput-object v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    .line 97
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$4;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$4;-><init>(II)V

    sput-object v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_5_6:Landroidx/room/migration/Migration;

    .line 107
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$5;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$5;-><init>(II)V

    sput-object v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_6_7:Landroidx/room/migration/Migration;

    .line 115
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$6;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$6;-><init>(II)V

    sput-object v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_7_8:Landroidx/room/migration/Migration;

    .line 123
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$7;

    const/16 v1, 0x9

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$7;-><init>(II)V

    sput-object v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_8_9:Landroidx/room/migration/Migration;

    .line 135
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$8;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$8;-><init>(II)V

    sput-object v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_9_10:Landroidx/room/migration/Migration;

    .line 144
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$9;

    const/16 v1, 0xb

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$9;-><init>(II)V

    sput-object v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_10_11:Landroidx/room/migration/Migration;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static create(Landroid/content/Context;)Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;
    .locals 3

    .line 54
    const-class v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    const-string v1, "ApplistDb.db"

    invoke-static {p0, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    const/16 v0, 0x9

    new-array v0, v0, [Landroidx/room/migration/Migration;

    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_5_6:Landroidx/room/migration/Migration;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_6_7:Landroidx/room/migration/Migration;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_7_8:Landroidx/room/migration/Migration;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_8_9:Landroidx/room/migration/Migration;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_9_10:Landroidx/room/migration/Migration;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->MIGRATION_10_11:Landroidx/room/migration/Migration;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 56
    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->instance:Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    if-nez v1, :cond_0

    .line 41
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->create(Landroid/content/Context;)Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object v1

    sput-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->instance:Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    .line 43
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->instance:Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->instance:Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->create(Landroid/content/Context;)Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->instance:Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;

    .line 50
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->instance:Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract getChildAppListDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;
.end method

.method public abstract getChildSortDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;
.end method

.method public abstract getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;
.end method

.method public abstract getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;
.end method
