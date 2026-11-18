.class final Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;
.super Ljava/lang/Object;
.source "DXDataBaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataBaseHelperManager"
.end annotation


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private helper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DatabaseHelper;

.field final synthetic this$0:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 296
    iput-object p1, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->this$0:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 297
    new-instance v0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DatabaseHelper;

    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DatabaseHelper;-><init>(Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->helper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DatabaseHelper;

    .line 299
    :try_start_0
    iget-object p2, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->helper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DatabaseHelper;

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const p3, 0xea6b

    const-string v0, "DinamicX_db"

    const-string v1, "DB_Open"

    .line 301
    invoke-static {p1, v0, v1, p3, p2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->access$000(Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method closeDatabase()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method closeDatabaseByEnd()V
    .locals 6

    const/4 v0, 0x0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 346
    :try_start_1
    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->this$0:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    const-string v3, "DinamicX_db"

    const-string v4, "DB_Close"

    const v5, 0xea6a

    invoke-static {v2, v3, v4, v5, v1}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->access$000(Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 349
    :goto_2
    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .line 317
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->helper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DatabaseHelper;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 321
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->this$0:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    const v2, 0xea6b

    const-string v3, "DinamicX_db"

    const-string v4, "DB_Open"

    invoke-static {v1, v3, v4, v2, v0}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->access$000(Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 324
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->helper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DatabaseHelper;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 310
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->this$0:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    const v2, 0xea6b

    const-string v3, "DinamicX_db"

    const-string v4, "DB_Open"

    invoke-static {v1, v3, v4, v2, v0}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->access$000(Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 313
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper$DataBaseHelperManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
