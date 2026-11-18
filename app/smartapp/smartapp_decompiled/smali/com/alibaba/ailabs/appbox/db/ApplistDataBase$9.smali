.class final Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$9;
.super Landroidx/room/migration/Migration;
.source "ApplistDataBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIGRATION_10_11 version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplistDataBase"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `child_app_list` (`id` INTEGER NOT NULL, `appid` TEXT NOT NULL, `actionValue` TEXT,`appName` TEXT,`businessType` TEXT,`appVersionCode` INTEGER NOT NULL,`appVersionName` TEXT,`downloadUrl` TEXT,`downloadSize` INTEGER NOT NULL,`installSize` INTEGER NOT NULL,`packageName` TEXT,`icon` TEXT,`deleteType` INTEGER NOT NULL,`isOffline` TEXT,`fromType` TEXT,PRIMARY KEY(`appid`))"

    .line 149
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `child_app_list_sort` (`sortIndex` INTEGER NOT NULL, `appid` TEXT NOT NULL, PRIMARY KEY(`appid`))"

    .line 152
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
