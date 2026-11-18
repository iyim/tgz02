.class public final Lcom/taobao/android/dinamic/tempate/db/EntrySchema;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;
    }
.end annotation


# static fields
.field private static final FULL_TEXT_INDEX_SUFFIX:Ljava/lang/String; = "_fulltext"

.field private static final SQLITE_TYPES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EntrySchema"

.field public static final TYPE_BLOB:I = 0x7

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_DOUBLE:I = 0x6

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_LONG:I = 0x4

.field public static final TYPE_SHORT:I = 0x2

.field public static final TYPE_STRING:I


# instance fields
.field private final mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

.field private final mHasFullTextIndex:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "TEXT"

    const-string v1, "INTEGER"

    const-string v2, "INTEGER"

    const-string v3, "INTEGER"

    const-string v4, "INTEGER"

    const-string v5, "REAL"

    const-string v6, "REAL"

    const-string v7, "NONE"

    .line 36
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/android/dinamic/tempate/db/Entry;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->parseColumnInfo(Ljava/lang/Class;)[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    move-result-object v0

    .line 52
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mTableName:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    const/4 p1, 0x0

    .line 56
    new-array v1, p1, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 59
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 60
    :goto_0
    array-length v3, v0

    if-eq p1, v3, :cond_1

    .line 61
    aget-object v3, v0, p1

    .line 62
    iget-object v4, v3, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    aput-object v4, v1, p1

    .line 63
    iget-boolean v3, v3, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 69
    :cond_2
    iput-object v1, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mProjection:[Ljava/lang/String;

    .line 70
    iput-boolean p1, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mHasFullTextIndex:Z

    return-void
.end method

.method private insertWithOnConflict(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 318
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT"

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR REPLACE "

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTO "

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x28

    .line 323
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 326
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x29

    if-lez v2, :cond_4

    .line 329
    new-array p2, v2, [Ljava/lang/Object;

    .line 331
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-lez v4, :cond_1

    const-string v6, ","

    goto :goto_2

    :cond_1
    const-string v6, ""

    .line 332
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    .line 334
    invoke-virtual {p4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p2, v4

    move v4, v6

    goto :goto_1

    .line 336
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " VALUES ("

    .line 337
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    :goto_3
    if-ge p3, v2, :cond_5

    if-lez p3, :cond_3

    const-string p4, ",?"

    goto :goto_4

    :cond_3
    const-string p4, "?"

    .line 339
    :goto_4
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 342
    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") VALUES (NULL"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p3

    if-lez v2, :cond_8

    .line 350
    array-length p4, p2

    :goto_5
    if-ge v1, p4, :cond_8

    .line 352
    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    .line 353
    aget-object v2, p2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_6

    .line 354
    :cond_6
    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    add-int/lit8 v0, v1, 0x1

    .line 355
    aget-object v2, p2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_7
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 361
    :cond_8
    :try_start_1
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :try_start_2
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 366
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception p2

    .line 363
    :try_start_3
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 366
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    goto :goto_8

    :goto_7
    throw p2

    :goto_8
    goto :goto_7
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;",
            ">;)V"
        }
    .end annotation

    .line 540
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 541
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_9

    .line 543
    aget-object v9, p1, v1

    .line 545
    const-class v2, Lcom/taobao/android/dinamic/tempate/db/Entry$Column;

    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dinamic/tempate/db/Entry$Column;

    if-nez v2, :cond_0

    goto :goto_2

    .line 550
    :cond_0
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 551
    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 553
    :cond_1
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    const/4 v5, 0x1

    goto :goto_1

    .line 555
    :cond_2
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    const/4 v5, 0x2

    goto :goto_1

    .line 557
    :cond_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    const/4 v3, 0x3

    const/4 v5, 0x3

    goto :goto_1

    .line 559
    :cond_4
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x4

    const/4 v5, 0x4

    goto :goto_1

    .line 561
    :cond_5
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x5

    const/4 v5, 0x5

    goto :goto_1

    .line 563
    :cond_6
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_7

    const/4 v3, 0x6

    const/4 v5, 0x6

    goto :goto_1

    .line 565
    :cond_7
    const-class v4, [B

    if-ne v3, v4, :cond_8

    const/4 v3, 0x7

    const/4 v5, 0x7

    .line 573
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 574
    new-instance v11, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    invoke-interface {v2}, Lcom/taobao/android/dinamic/tempate/db/Entry$Column;->value()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/taobao/android/dinamic/tempate/db/Entry$Column;->indexed()Z

    move-result v6

    .line 575
    invoke-interface {v2}, Lcom/taobao/android/dinamic/tempate/db/Entry$Column;->fullText()Z

    move-result v7

    invoke-interface {v2}, Lcom/taobao/android/dinamic/tempate/db/Entry$Column;->defaultValue()Ljava/lang/String;

    move-result-object v8

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;-><init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/reflect/Field;I)V

    .line 574
    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported field type for column: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;)[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    .line 527
    invoke-direct {p0, p1, v0}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 528
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    .line 533
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private parseTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 515
    const-class v0, Lcom/taobao/android/dinamic/tempate/db/Entry$Table;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamic/tempate/db/Entry$Table;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 521
    :cond_0
    invoke-interface {p1}, Lcom/taobao/android/dinamic/tempate/db/Entry$Table;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 146
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .line 376
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mTableName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 377
    :goto_0
    invoke-static {v2}, Lcom/taobao/android/dinamic/tempate/db/Utils;->assertTrue(Z)V

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CREATE TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (_id INTEGER PRIMARY KEY AUTOINCREMENT"

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-object v3, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x2c

    if-ge v5, v4, :cond_2

    aget-object v7, v3, v5

    .line 384
    invoke-virtual {v7}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->isId()Z

    move-result v8

    if-nez v8, :cond_1

    .line 385
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    iget-object v6, v7, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    .line 387
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    sget-object v6, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    iget v8, v7, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->type:I

    aget-object v6, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v6, v7, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, " DEFAULT "

    .line 390
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v6, v7, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v3, ");"

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 400
    iget-object v4, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_4

    aget-object v8, v4, v7

    .line 402
    iget-boolean v9, v8, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->indexed:Z

    if-eqz v9, :cond_3

    const-string v9, "CREATE INDEX "

    .line 403
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_index_"

    .line 405
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget-object v9, v8, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ON "

    .line 407
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    .line 409
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-object v8, v8, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 417
    :cond_4
    iget-boolean v4, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v4, :cond_b

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_fulltext"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CREATE VIRTUAL TABLE "

    .line 420
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " USING FTS3 (_id INTEGER PRIMARY KEY"

    .line 422
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget-object v5, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    array-length v7, v5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_6

    aget-object v9, v5, v8

    .line 424
    iget-boolean v10, v9, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_5

    .line 426
    iget-object v9, v9, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 427
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " TEXT"

    .line 429
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 432
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 438
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "INSERT OR REPLACE INTO "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (_id"

    .line 440
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v7, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 442
    iget-boolean v11, v10, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v11, :cond_7

    .line 443
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    iget-object v10, v10, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    const-string v6, ") VALUES (new._id"

    .line 447
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v6, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_a

    aget-object v9, v6, v8

    .line 449
    iget-boolean v10, v9, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_9

    const-string v10, ",new."

    .line 450
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-object v9, v9, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 454
    :cond_a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CREATE TRIGGER "

    .line 458
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_insert_trigger AFTER INSERT ON "

    .line 460
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " FOR EACH ROW BEGIN "

    .line 462
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "END;"

    .line 464
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 469
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_update_trigger AFTER UPDATE ON "

    .line 471
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 480
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_delete_trigger AFTER DELETE ON "

    .line 482
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FOR EACH ROW BEGIN DELETE FROM "

    .line 484
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE _id = old._id; END;"

    .line 486
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_b
    return-void
.end method

.method public cursorToObject(Landroid/database/Cursor;Lcom/taobao/android/dinamic/tempate/db/Entry;)Lcom/taobao/android/dinamic/tempate/db/Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/android/dinamic/tempate/db/Entry;",
            ">(",
            "Landroid/database/Cursor;",
            "TT;)TT;"
        }
    .end annotation

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 106
    iget v5, v4, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 107
    iget-object v6, v4, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 108
    iget v4, v4, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->type:I

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_4

    .line 132
    :pswitch_0
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 132
    :goto_1
    invoke-virtual {v6, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 129
    :pswitch_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v6, p2, v4, v5}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_4

    .line 126
    :pswitch_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v6, p2, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_4

    .line 123
    :pswitch_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v6, p2, v4, v5}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_4

    .line 120
    :pswitch_4
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v6, p2, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_4

    .line 117
    :pswitch_5
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    invoke-virtual {v6, p2, v4}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_4

    .line 114
    :pswitch_6
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6, p2, v5}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_4

    .line 110
    :pswitch_7
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 111
    :cond_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 110
    :goto_3
    invoke-virtual {v6, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object p2

    :catch_0
    move-exception p1

    .line 140
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deleteAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mTableName:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v2, p3

    const-string p2, "_id=?"

    invoke-virtual {p1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 p3, 0x1

    :cond_0
    return p3
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 493
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mTableName:Ljava/lang/String;

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    .line 496
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 498
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 500
    iget-boolean v4, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v4, :cond_0

    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_fulltext"

    .line 503
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getColumn(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;
    .locals 1

    .line 95
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    iget-object v4, v3, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    iget p1, v3, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->projectionIndex:I

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getColumnInfo()[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/taobao/android/dinamic/tempate/db/Entry;)J
    .locals 9

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x0

    const-string v3, "_id"

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_2

    .line 282
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 284
    iget-object v4, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 285
    iget-object v8, v7, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 286
    iget-object v7, v7, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 287
    invoke-virtual {v7, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 290
    :cond_0
    iget-wide v4, p2, Lcom/taobao/android/dinamic/tempate/db/Entry;->id:J

    cmp-long v6, v4, v1

    if-nez v6, :cond_1

    .line 291
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mTableName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->insertWithOnConflict(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)J

    move-result-wide v0

    .line 295
    iput-wide v0, p2, Lcom/taobao/android/dinamic/tempate/db/Entry;->id:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    const-string p2, "EntrySchema"

    const-string/jumbo v0, "sdk int 29 insertOrReplace db exception"

    .line 298
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p1, -0x1

    return-wide p1

    .line 302
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 303
    invoke-virtual {p0, p2, v0}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->objectToValues(Lcom/taobao/android/dinamic/tempate/db/Entry;Landroid/content/ContentValues;)V

    .line 304
    iget-wide v4, p2, Lcom/taobao/android/dinamic/tempate/db/Entry;->id:J

    cmp-long v6, v4, v1

    if-nez v6, :cond_3

    .line 305
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mTableName:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 308
    iput-wide v0, p2, Lcom/taobao/android/dinamic/tempate/db/Entry;->id:J

    return-wide v0
.end method

.method public objectToValues(Lcom/taobao/android/dinamic/tempate/db/Entry;Landroid/content/ContentValues;)V
    .locals 7

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 194
    iget-object v4, v3, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 195
    iget-object v5, v3, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 196
    iget v3, v3, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 219
    :pswitch_0
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    nop

    nop

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 216
    :pswitch_1
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 213
    :pswitch_2
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 210
    :pswitch_3
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 207
    :pswitch_4
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 204
    :pswitch_5
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 201
    :pswitch_6
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 198
    :pswitch_7
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 224
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public queryAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8

    .line 263
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/taobao/android/dinamic/tempate/db/Entry;)Z
    .locals 9

    .line 267
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mProjection:[Ljava/lang/String;

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    .line 268
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v4, p3

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 267
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 270
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 271
    invoke-virtual {p0, p1, p4}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/taobao/android/dinamic/tempate/db/Entry;)Lcom/taobao/android/dinamic/tempate/db/Entry;

    const/4 p3, 0x1

    .line 274
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p3
.end method

.method public toDebugString(Lcom/taobao/android/dinamic/tempate/db/Entry;)Ljava/lang/String;
    .locals 7

    .line 230
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID="

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/taobao/android/dinamic/tempate/db/Entry;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 233
    iget-object v5, v4, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 234
    iget-object v4, v4, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 235
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, " "

    .line 236
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_0

    const-string v4, "null"

    goto :goto_1

    .line 237
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public varargs toDebugString(Lcom/taobao/android/dinamic/tempate/db/Entry;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 247
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID="

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/taobao/android/dinamic/tempate/db/Entry;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 249
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 250
    invoke-virtual {p0, v3}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    move-result-object v4

    .line 251
    iget-object v4, v4, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 252
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, " "

    .line 253
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_0

    const-string v3, "null"

    goto :goto_1

    .line 254
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 258
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public valuesToObject(Landroid/content/ContentValues;Lcom/taobao/android/dinamic/tempate/db/Entry;)Lcom/taobao/android/dinamic/tempate/db/Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/android/dinamic/tempate/db/Entry;",
            ">(",
            "Landroid/content/ContentValues;",
            "TT;)TT;"
        }
    .end annotation

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 156
    iget-object v4, v3, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 157
    iget-object v5, v3, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 158
    iget v3, v3, Lcom/taobao/android/dinamic/tempate/db/EntrySchema$ColumnInfo;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 181
    :pswitch_0
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 178
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 175
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 172
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 169
    :pswitch_4
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 166
    :pswitch_5
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 163
    :pswitch_6
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 160
    :pswitch_7
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, p2, v3}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 187
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
