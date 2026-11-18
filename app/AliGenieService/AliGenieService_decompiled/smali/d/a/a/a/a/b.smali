.class public Ld/a/a/a/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/a/a/a/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/a/a/a/b$a;
    }
.end annotation


# instance fields
.field public a:Landroid/database/sqlite/SQLiteDatabase;

.field public b:Ld/a/a/a/a/b$a;

.field public c:Ld/a/a/a/a/g;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/android/service/MqttService;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/a/a/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Ld/a/a/a/a/b;->b:Ld/a/a/a/a/b$a;

    iput-object v0, p0, Ld/a/a/a/a/b;->c:Ld/a/a/a/a/g;

    iput-object p1, p0, Ld/a/a/a/a/b;->c:Ld/a/a/a/a/g;

    new-instance p1, Ld/a/a/a/a/b$a;

    iget-object v0, p0, Ld/a/a/a/a/b;->c:Ld/a/a/a/a/g;

    invoke-direct {p1, v0, p2}, Ld/a/a/a/a/b$a;-><init>(Ld/a/a/a/a/g;Landroid/content/Context;)V

    iput-object p1, p0, Ld/a/a/a/a/b;->b:Ld/a/a/a/a/b$a;

    iget-object p1, p0, Ld/a/a/a/a/b;->c:Ld/a/a/a/a/g;

    const-string p2, "DatabaseMessageStore"

    const-string v0, "DatabaseMessageStore<init> complete"

    invoke-interface {p1, p2, v0}, Ld/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Ld/a/a/a/a/b;->b:Ld/a/a/a/a/b$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Ld/a/a/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "MqttArrivedMessageTable"

    const-string v2, "DatabaseMessageStore"

    if-nez p1, :cond_0

    iget-object p1, p0, Ld/a/a/a/a/b;->c:Ld/a/a/a/a/g;

    const-string v0, "clearArrivedMessages: clearing the table"

    invoke-interface {p1, v2, v0}, Ld/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ld/a/a/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ld/a/a/a/a/b;->c:Ld/a/a/a/a/g;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearArrivedMessages: clearing the table of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " messages"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v2, p1}, Ld/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ld/a/a/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "clientHandle=?"

    invoke-virtual {p1, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_0
    iget-object v0, p0, Ld/a/a/a/a/b;->c:Ld/a/a/a/a/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearArrivedMessages: rows affected = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ld/a/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
