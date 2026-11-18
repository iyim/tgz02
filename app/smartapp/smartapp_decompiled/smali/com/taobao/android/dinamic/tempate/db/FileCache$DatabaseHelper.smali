.class final Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/tempate/db/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# static fields
.field public static final DATABASE_VERSION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamic/tempate/db/FileCache;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamic/tempate/db/FileCache;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 411
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;->this$0:Lcom/taobao/android/dinamic/tempate/db/FileCache;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 412
    invoke-direct {p0, p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 417
    sget-object v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/dinamic/tempate/db/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 420
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;->this$0:Lcom/taobao/android/dinamic/tempate/db/FileCache;

    invoke-static {p1}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->access$300(Lcom/taobao/android/dinamic/tempate/db/FileCache;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 422
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 423
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileCache"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 433
    sget-object p2, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/dinamic/tempate/db/EntrySchema;

    invoke-virtual {p2, p1}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 434
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
