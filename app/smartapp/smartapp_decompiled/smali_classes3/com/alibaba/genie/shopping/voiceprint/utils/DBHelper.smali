.class public Lcom/alibaba/genie/shopping/voiceprint/utils/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "settings.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_NAME_DEVICE_INFO:Ljava/lang/String; = "voiceprint_info"

.field private static final TAG:Ljava/lang/String; = "SettingsDBHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 20
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS voiceprint_info(id INTEGER PRIMARY KEY AUTOINCREMENT, voiceprint_count  INTEGER)"

    .line 28
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
