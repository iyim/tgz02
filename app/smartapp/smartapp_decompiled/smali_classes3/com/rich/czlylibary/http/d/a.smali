.class public Lcom/rich/czlylibary/http/d/a;
.super Lcom/rich/czlylibary/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rich/czlylibary/http/d/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rich/czlylibary/a/a<",
        "Lcom/rich/czlylibary/http/cache/CacheEntity<",
        "*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    new-instance v0, Lcom/rich/czlylibary/a/c;

    invoke-direct {v0}, Lcom/rich/czlylibary/a/c;-><init>()V

    invoke-direct {p0, v0}, Lcom/rich/czlylibary/a/a;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/rich/czlylibary/http/d/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/http/d/a;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static c()Lcom/rich/czlylibary/http/d/a;
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/http/d/a$a;->a()Lcom/rich/czlylibary/http/d/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/rich/czlylibary/http/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/cache/CacheEntity<",
            "*>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    invoke-static {p1}, Lcom/rich/czlylibary/http/cache/CacheEntity;->getContentValues(Lcom/rich/czlylibary/http/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/rich/czlylibary/http/cache/CacheEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/rich/czlylibary/http/cache/CacheEntity<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "key=?"

    invoke-virtual {p0, p1, v1}, Lcom/rich/czlylibary/http/d/a;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/rich/czlylibary/http/cache/CacheEntity;

    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/rich/czlylibary/http/cache/CacheEntity;)Lcom/rich/czlylibary/http/cache/CacheEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/rich/czlylibary/http/cache/CacheEntity<",
            "TT;>;)",
            "Lcom/rich/czlylibary/http/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/rich/czlylibary/http/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/rich/czlylibary/http/d/a;->a(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/http/d/a;->b(Landroid/database/Cursor;)Lcom/rich/czlylibary/http/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    check-cast p1, Lcom/rich/czlylibary/http/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/http/d/a;->a(Lcom/rich/czlylibary/http/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/database/Cursor;)Lcom/rich/czlylibary/http/cache/CacheEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/rich/czlylibary/http/cache/CacheEntity<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/rich/czlylibary/http/cache/CacheEntity;->parseCursorToBean(Landroid/database/Cursor;)Lcom/rich/czlylibary/http/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "cache"

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    const-string p1, "key=?"

    invoke-virtual {p0, p1, v1}, Lcom/rich/czlylibary/http/d/a;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
