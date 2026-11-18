.class final Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$5;
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

    .line 107
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS applist_recomend (appVersion TEXT, subscript TEXT, author TEXT, icon TEXT, downloadUrl TEXT, actionUrl TEXT, description TEXT, updateTime TEXT, title TEXT, voiceDisposition TEXT, bgPic TEXT, apkVersion TEXT, subTitle TEXT, appId TEXT NOT NULL, screenShot TEXT, apkVersionCode TEXT, packageName TEXT, uninstallable TEXT, isCollected TEXT, businessType TEXT, ttsGuide TEXT, installSize INTEGER NOT NULL, isOffline TEXT, PRIMARY KEY(appId))"

    .line 111
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
