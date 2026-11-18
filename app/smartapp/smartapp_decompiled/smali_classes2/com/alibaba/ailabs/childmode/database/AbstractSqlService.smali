.class public abstract Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;
.super Ljava/lang/Object;
.source "AbstractSqlService.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDb:Lcom/alibaba/ailabs/childmode/database/AbstractManager;

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/childmode/database/AbstractManager;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/childmode/database/AbstractManager;

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/childmode/database/AbstractManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/database/AbstractManager;->close()V

    return-void
.end method

.method protected getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/childmode/database/AbstractManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/database/AbstractManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSqlCommand(Ljava/lang/String;)Ljava/lang/StringBuilder;
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/childmode/database/AbstractManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/database/AbstractManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 60
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;->getSqlCommand(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no database table command to execute"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDowngrade(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DROP TABLE IF EXISTS "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;->onCreate(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method protected abstract onUpgrade(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/database/AbstractSqlService;->mTableName:Ljava/lang/String;

    return-void
.end method
