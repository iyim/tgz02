.class public interface abstract Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;
.super Ljava/lang/Object;
.source "IBaseTable.java"


# virtual methods
.method public abstract afterTableAlter(IILandroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract beforeTableAlter(IILandroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract createTableSQL()Ljava/lang/String;
.end method

.method public abstract getAlterSQL(II)[Ljava/lang/String;
.end method

.method public abstract getHelper(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;
.end method

.method public abstract tableName()Ljava/lang/String;
.end method

.method public abstract tableVersion()I
.end method
