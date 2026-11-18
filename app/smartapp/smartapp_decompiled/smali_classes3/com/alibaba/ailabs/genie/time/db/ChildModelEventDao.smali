.class public Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "ChildModelEventDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "CHILD_MODEL_EVENT"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/alibaba/ailabs/genie/time/db/DaoSession;)V
    .locals 0

    .line 38
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

    .line 44
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"CHILD_MODEL_EVENT\" ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"TIME_STAMP\" INTEGER,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"EVENT_TYPE\" INTEGER NOT NULL );"

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

    const-string p1, "\"CHILD_MODEL_EVENT\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;)V
    .locals 4

    .line 74
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 76
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 81
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 83
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_1
    const/4 v0, 0x3

    .line 85
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->getEventType()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;)V
    .locals 4

    .line 58
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 60
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 65
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 67
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_1
    const/4 v0, 0x3

    .line 69
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->getEventType()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;)V

    return-void
.end method

.method public getKey(Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;->getKey(Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;)Z
    .locals 0

    .line 127
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->getId()Ljava/lang/Long;

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

    .line 18
    check-cast p1, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;->hasKey(Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;
    .locals 5

    .line 95
    new-instance v0, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;

    add-int/lit8 v1, p2, 0x0

    .line 96
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

    .line 97
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    add-int/lit8 p2, p2, 0x2

    .line 98
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-direct {v0, v1, v3, p1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;-><init>(Ljava/lang/Long;Ljava/lang/Long;I)V

    return-object v0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;->readEntity(Landroid/database/Cursor;I)Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 105
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
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 106
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->setTimeStamp(Ljava/lang/Long;)V

    add-int/lit8 p3, p3, 0x2

    .line 107
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->setEventType(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;->readEntity(Landroid/database/Cursor;Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 90
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

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;J)Ljava/lang/Long;
    .locals 1

    .line 112
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->setId(Ljava/lang/Long;)V

    .line 113
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;->updateKeyAfterInsert(Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
