.class public Ld/a/a/a/a/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ld/a/a/a/a/g;


# direct methods
.method public constructor <init>(Ld/a/a/a/a/g;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "mqttAndroidService.db"

    const/4 v2, 0x1

    invoke-direct {p0, p2, v1, v0, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Ld/a/a/a/a/b$a;->a:Ld/a/a/a/a/g;

    iput-object p1, p0, Ld/a/a/a/a/b$a;->a:Ld/a/a/a/a/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    iget-object v0, p0, Ld/a/a/a/a/b$a;->a:Ld/a/a/a/a/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE MqttArrivedMessageTable(messageId TEXT PRIMARY KEY, clientHandle TEXT, destinationName TEXT, payload BLOB, qos INTEGER, retained TEXT, duplicate TEXT, mtimestamp INTEGER);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MQTTDatabaseHelper"

    invoke-interface {v0, v3, v1}, Ld/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p1, p0, Ld/a/a/a/a/b$a;->a:Ld/a/a/a/a/g;

    const-string v0, "created the table"

    invoke-interface {p1, v3, v0}, Ld/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Ld/a/a/a/a/b$a;->a:Ld/a/a/a/a/g;

    const-string v1, "onCreate"

    invoke-interface {v0, v3, v1, p1}, Ld/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object p2, p0, Ld/a/a/a/a/b$a;->a:Ld/a/a/a/a/g;

    const-string p3, "onUpgrade"

    const-string v0, "MQTTDatabaseHelper"

    invoke-interface {p2, v0, p3}, Ld/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p2, "DROP TABLE IF EXISTS MqttArrivedMessageTable"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Ld/a/a/a/a/b$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object p1, p0, Ld/a/a/a/a/b$a;->a:Ld/a/a/a/a/g;

    const-string p2, "onUpgrade complete"

    invoke-interface {p1, v0, p2}, Ld/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Ld/a/a/a/a/b$a;->a:Ld/a/a/a/a/g;

    invoke-interface {p2, v0, p3, p1}, Ld/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
