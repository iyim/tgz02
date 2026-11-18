.class public Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;
.super Ljava/lang/Object;
.source "ELEvaluator.java"


# static fields
.field private static volatile sELEvaluator:Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/alibaba/analytics/core/db/SqliteHelper;

    const/4 v1, 0x0

    nop

    nop

    invoke-direct {v0, p1, v1}, Lcom/alibaba/analytics/core/db/SqliteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/db/SqliteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;
    .locals 2

    if-nez p0, :cond_1

    .line 18
    sget-object v0, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;->sELEvaluator:Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context and evaluator cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;->sELEvaluator:Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;

    if-nez v0, :cond_3

    .line 23
    const-class v0, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;->sELEvaluator:Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;

    if-nez v1, :cond_2

    .line 25
    new-instance v1, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;->sELEvaluator:Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;

    .line 27
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 30
    :cond_3
    :goto_1
    sget-object p0, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;->sELEvaluator:Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;

    return-object p0
.end method


# virtual methods
.method public isConditionMeet(Ljava/lang/String;)Z
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/utils/ELEvaluator;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    nop

    nop

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    .line 44
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const-string p1, "0"

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    return p1

    :catch_0
    return v0
.end method
