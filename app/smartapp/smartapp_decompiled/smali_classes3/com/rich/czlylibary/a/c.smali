.class public Lcom/rich/czlylibary/a/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field static final a:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private b:Lcom/rich/czlylibary/http/d/b;

.field private c:Lcom/rich/czlylibary/http/d/b;

.field private d:Lcom/rich/czlylibary/http/d/b;

.field private e:Lcom/rich/czlylibary/http/d/b;

.field private f:Lcom/rich/czlylibary/http/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/rich/czlylibary/a/c;->a:Ljava/util/concurrent/locks/Lock;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rich/czlylibary/a/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    const/4 v0, 0x1

    const-string v1, "czly.db"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-instance p1, Lcom/rich/czlylibary/http/d/b;

    const-string v1, "cache"

    invoke-direct {p1, v1}, Lcom/rich/czlylibary/http/d/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rich/czlylibary/a/c;->b:Lcom/rich/czlylibary/http/d/b;

    new-instance p1, Lcom/rich/czlylibary/http/d/b;

    const-string v1, "cookie"

    invoke-direct {p1, v1}, Lcom/rich/czlylibary/http/d/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rich/czlylibary/a/c;->c:Lcom/rich/czlylibary/http/d/b;

    new-instance p1, Lcom/rich/czlylibary/http/d/b;

    const-string v2, "download"

    invoke-direct {p1, v2}, Lcom/rich/czlylibary/http/d/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rich/czlylibary/a/c;->d:Lcom/rich/czlylibary/http/d/b;

    new-instance p1, Lcom/rich/czlylibary/http/d/b;

    const-string v2, "Httpupload"

    invoke-direct {p1, v2}, Lcom/rich/czlylibary/http/d/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rich/czlylibary/a/c;->e:Lcom/rich/czlylibary/http/d/b;

    new-instance p1, Lcom/rich/czlylibary/http/d/b;

    const-string v2, "Czlyupload"

    invoke-direct {p1, v2}, Lcom/rich/czlylibary/http/d/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rich/czlylibary/a/c;->f:Lcom/rich/czlylibary/http/d/b;

    iget-object p1, p0, Lcom/rich/czlylibary/a/c;->b:Lcom/rich/czlylibary/http/d/b;

    new-instance v2, Lcom/rich/czlylibary/a/b;

    const-string v3, "VARCHAR"

    const-string v4, "key"

    invoke-direct {v2, v4, v3, v0, v0}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p1, v2}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v2, Lcom/rich/czlylibary/a/b;

    const-string v4, "INTEGER"

    const-string v5, "localExpire"

    invoke-direct {v2, v5, v4}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v2, Lcom/rich/czlylibary/a/b;

    const-string v5, "BLOB"

    const-string v6, "head"

    invoke-direct {v2, v6, v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v2, Lcom/rich/czlylibary/a/b;

    const-string v6, "data"

    invoke-direct {v2, v6, v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    iget-object p1, p0, Lcom/rich/czlylibary/a/c;->c:Lcom/rich/czlylibary/http/d/b;

    new-instance v2, Lcom/rich/czlylibary/a/b;

    const-string v6, "host"

    invoke-direct {v2, v6, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v2, Lcom/rich/czlylibary/a/b;

    const-string v7, "name"

    invoke-direct {v2, v7, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v2, Lcom/rich/czlylibary/a/b;

    const-string v8, "domain"

    invoke-direct {v2, v8, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v2, Lcom/rich/czlylibary/a/b;

    invoke-direct {v2, v1, v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/rich/czlylibary/a/b;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    iget-object p1, p0, Lcom/rich/czlylibary/a/c;->d:Lcom/rich/czlylibary/http/d/b;

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v2, "tag"

    invoke-direct {v1, v2, v3, v0, v0}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v6, "url"

    invoke-direct {v1, v6, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v7, "folder"

    invoke-direct {v1, v7, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v8, "filePath"

    invoke-direct {v1, v8, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v9, "fileName"

    invoke-direct {v1, v9, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v10, "fraction"

    invoke-direct {v1, v10, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v11, "totalSize"

    invoke-direct {v1, v11, v4}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v12, "currentSize"

    invoke-direct {v1, v12, v4}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v12, "status"

    invoke-direct {v1, v12, v4}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v12, "priority"

    invoke-direct {v1, v12, v4}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v12, "date"

    invoke-direct {v1, v12, v4}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v12, "request"

    invoke-direct {v1, v12, v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v12, "extra1"

    invoke-direct {v1, v12, v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v12, "extra2"

    invoke-direct {v1, v12, v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v12, "extra3"

    invoke-direct {v1, v12, v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    iget-object p1, p0, Lcom/rich/czlylibary/a/c;->e:Lcom/rich/czlylibary/http/d/b;

    new-instance v1, Lcom/rich/czlylibary/a/b;

    invoke-direct {v1, v2, v3, v0, v0}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    invoke-direct {v1, v6, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    invoke-direct {v1, v7, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    invoke-direct {v1, v8, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    invoke-direct {v1, v9, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    invoke-direct {v1, v10, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    invoke-direct {v1, v11, v4}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v2, "currentSize"

    invoke-direct {v1, v2, v4}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v2, "status"

    invoke-direct {v1, v2, v4}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v2, "priority"

    invoke-direct {v1, v2, v4}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v2, "date"

    invoke-direct {v1, v2, v4}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v2, "request"

    invoke-direct {v1, v2, v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v2, "extra1"

    invoke-direct {v1, v2, v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v2, "extra2"

    invoke-direct {v1, v2, v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v1, Lcom/rich/czlylibary/a/b;

    const-string v2, "extra3"

    invoke-direct {v1, v2, v5}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    iget-object p1, p0, Lcom/rich/czlylibary/a/c;->f:Lcom/rich/czlylibary/http/d/b;

    new-instance v1, Lcom/rich/czlylibary/a/b;

    sget-object v2, Lcom/rich/czlylibary/bean/CzlyUpload;->ID:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v0, v0}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p1, v1}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->RESOURCETYPE:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->ITEMID:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->MUSICLISTID:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->COPYRIGHTID:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->SONGID:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->SONGNAME:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->LISTENSTARTTIME:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->PERIOD:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->PLAYTYPE:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->NEXTCONTENTID:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->OFFSET:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->PAGESIZE:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/a/b;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->ISONLINE:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/rich/czlylibary/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/d/b;->a(Lcom/rich/czlylibary/a/b;)Lcom/rich/czlylibary/http/d/b;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/a/c;->b:Lcom/rich/czlylibary/http/d/b;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rich/czlylibary/a/c;->c:Lcom/rich/czlylibary/http/d/b;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rich/czlylibary/a/c;->d:Lcom/rich/czlylibary/http/d/b;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rich/czlylibary/a/c;->e:Lcom/rich/czlylibary/http/d/b;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rich/czlylibary/a/c;->f:Lcom/rich/czlylibary/http/d/b;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/rich/czlylibary/a/c;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iget-object p2, p0, Lcom/rich/czlylibary/a/c;->b:Lcom/rich/czlylibary/http/d/b;

    invoke-static {p1, p2}, Lcom/rich/czlylibary/a/d;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/rich/czlylibary/http/d/b;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/rich/czlylibary/a/c;->c:Lcom/rich/czlylibary/http/d/b;

    invoke-static {p1, p2}, Lcom/rich/czlylibary/a/d;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/rich/czlylibary/http/d/b;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "DROP TABLE IF EXISTS cookie"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/rich/czlylibary/a/c;->d:Lcom/rich/czlylibary/http/d/b;

    invoke-static {p1, p2}, Lcom/rich/czlylibary/a/d;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/rich/czlylibary/http/d/b;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DROP TABLE IF EXISTS download"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/rich/czlylibary/a/c;->e:Lcom/rich/czlylibary/http/d/b;

    invoke-static {p1, p2}, Lcom/rich/czlylibary/a/d;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/rich/czlylibary/http/d/b;)Z

    move-result p2

    const-string p3, "DROP TABLE IF EXISTS Httpupload"

    if-eqz p2, :cond_3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lcom/rich/czlylibary/a/c;->f:Lcom/rich/czlylibary/http/d/b;

    invoke-static {p1, p2}, Lcom/rich/czlylibary/a/d;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/rich/czlylibary/http/d/b;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/a/c;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
