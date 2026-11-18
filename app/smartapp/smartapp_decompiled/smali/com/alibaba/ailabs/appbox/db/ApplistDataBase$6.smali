.class final Lcom/alibaba/ailabs/appbox/db/ApplistDataBase$6;
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

    .line 115
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `applist_recent` (`name` TEXT, `actionUrl` TEXT NOT NULL, `packageName` TEXT, `icon` TEXT, `appid` TEXT, `busniessType` TEXT, PRIMARY KEY(`actionUrl`))"

    .line 119
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
