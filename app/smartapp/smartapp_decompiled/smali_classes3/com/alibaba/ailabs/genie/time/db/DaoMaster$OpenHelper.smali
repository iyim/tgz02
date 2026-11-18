.class public abstract Lcom/alibaba/ailabs/genie/time/db/DaoMaster$OpenHelper;
.super Lorg/greenrobot/greendao/database/DatabaseOpenHelper;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/time/db/DaoMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 1

    const/4 v0, 0x4

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCreate(Lorg/greenrobot/greendao/database/Database;)V
    .locals 2

    const-string v0, "greenDAO"

    const-string v1, "Creating tables for schema version 4"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 77
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/time/db/DaoMaster;->createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
