.class public Lcom/alibaba/genie/dataprovider/db/IntValueDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "IntValueDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/dataprovider/db/IntValueDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/alibaba/genie/dataprovider/db/IntValue;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "INT_VALUE"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/alibaba/genie/dataprovider/db/DaoSession;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 43
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"INT_VALUE\" ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"HASH_CODE_OF_KEY\" INTEGER UNIQUE ,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"KEY\" TEXT,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"VALUE\" INTEGER);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"INT_VALUE\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/alibaba/genie/dataprovider/db/IntValue;)V
    .locals 4

    .line 83
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 85
    invoke-virtual {p2}, Lcom/alibaba/genie/dataprovider/db/IntValue;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 90
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/genie/dataprovider/db/IntValue;->getHashCodeOfKey()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 95
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/genie/dataprovider/db/IntValue;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 97
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 100
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/genie/dataprovider/db/IntValue;->getValue()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v0, 0x4

    .line 102
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_3
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/alibaba/genie/dataprovider/db/IntValue;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/dataprovider/db/IntValueDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/alibaba/genie/dataprovider/db/IntValue;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/alibaba/genie/dataprovider/db/IntValue;)V
    .locals 4

    .line 58
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 60
    invoke-virtual {p2}, Lcom/alibaba/genie/dataprovider/db/IntValue;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 65
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/genie/dataprovider/db/IntValue;->getHashCodeOfKey()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 70
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/genie/dataprovider/db/IntValue;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 72
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 75
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/genie/dataprovider/db/IntValue;->getValue()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v0, 0x4

    .line 77
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_3
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/alibaba/genie/dataprovider/db/IntValue;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/dataprovider/db/IntValueDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/alibaba/genie/dataprovider/db/IntValue;)V

    return-void
.end method

.method public getKey(Lcom/alibaba/genie/dataprovider/db/IntValue;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/alibaba/genie/dataprovider/db/IntValue;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/alibaba/genie/dataprovider/db/IntValue;

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/dataprovider/db/IntValueDao;->getKey(Lcom/alibaba/genie/dataprovider/db/IntValue;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/alibaba/genie/dataprovider/db/IntValue;)Z
    .locals 0

    .line 147
    invoke-virtual {p1}, Lcom/alibaba/genie/dataprovider/db/IntValue;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Lcom/alibaba/genie/dataprovider/db/IntValue;

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/dataprovider/db/IntValueDao;->hasKey(Lcom/alibaba/genie/dataprovider/db/IntValue;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/alibaba/genie/dataprovider/db/IntValue;
    .locals 6

    .line 113
    new-instance v0, Lcom/alibaba/genie/dataprovider/db/IntValue;

    add-int/lit8 v1, p2, 0x0

    .line 114
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 115
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    add-int/lit8 v4, p2, 0x2

    .line 116
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    add-int/lit8 p2, p2, 0x3

    .line 117
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/genie/dataprovider/db/IntValue;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/dataprovider/db/IntValueDao;->readEntity(Landroid/database/Cursor;I)Lcom/alibaba/genie/dataprovider/db/IntValue;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/alibaba/genie/dataprovider/db/IntValue;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 124
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/alibaba/genie/dataprovider/db/IntValue;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 125
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/alibaba/genie/dataprovider/db/IntValue;->setHashCodeOfKey(Ljava/lang/Integer;)V

    add-int/lit8 v0, p3, 0x2

    .line 126
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/alibaba/genie/dataprovider/db/IntValue;->setKey(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x3

    .line 127
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {p2, v2}, Lcom/alibaba/genie/dataprovider/db/IntValue;->setValue(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    check-cast p2, Lcom/alibaba/genie/dataprovider/db/IntValue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/genie/dataprovider/db/IntValueDao;->readEntity(Landroid/database/Cursor;Lcom/alibaba/genie/dataprovider/db/IntValue;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 108
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/dataprovider/db/IntValueDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/alibaba/genie/dataprovider/db/IntValue;J)Ljava/lang/Long;
    .locals 1

    .line 132
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/dataprovider/db/IntValue;->setId(Ljava/lang/Long;)V

    .line 133
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/alibaba/genie/dataprovider/db/IntValue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/genie/dataprovider/db/IntValueDao;->updateKeyAfterInsert(Lcom/alibaba/genie/dataprovider/db/IntValue;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
