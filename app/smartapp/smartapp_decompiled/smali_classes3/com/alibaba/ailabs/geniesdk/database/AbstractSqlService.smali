.class public abstract Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;
.super Ljava/lang/Object;
.source "AbstractSqlService.java"


# instance fields
.field protected mDb:Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;

.field private mIsClosed:Z

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;->mIsClosed:Z

    return-void
.end method

.method protected close()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;->close()V

    return-void
.end method

.method protected getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;->mIsClosed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected abstract getSqlCommand(Ljava/lang/String;)Ljava/lang/StringBuilder;
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;->mIsClosed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected onCreate(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 63
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;->getSqlCommand(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no database table command to execute"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDowngrade(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 82
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DROP TABLE IF EXISTS "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;->onCreate(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method protected abstract onUpgrade(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;->mTableName:Ljava/lang/String;

    return-void
.end method
