.class public Lcom/alibaba/ailabs/genie/time/db/AppEventDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "AppEventDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/time/db/AppEventDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "APP_EVENT"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/alibaba/ailabs/genie/time/db/DaoSession;)V
    .locals 0

    .line 41
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

    .line 47
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"APP_EVENT\" ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"TIME_STAMP\" INTEGER,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"EVENT_TYPE\" INTEGER NOT NULL ,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"PACKAGE_NAME\" TEXT,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"TIME\" TEXT,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"CHILD_MODEL\" INTEGER);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 58
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

    const-string p1, "\"APP_EVENT\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;)V
    .locals 4

    .line 95
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 97
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 102
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 104
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_1
    const/4 v0, 0x3

    .line 106
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 113
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 115
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 118
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getChildModel()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 v0, 0x6

    .line 120
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_5
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;)V
    .locals 4

    .line 64
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 66
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 73
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_1
    const/4 v0, 0x3

    .line 75
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 77
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 79
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 82
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 84
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 87
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getChildModel()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 v0, 0x6

    .line 89
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_5
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;)V

    return-void
.end method

.method public getKey(Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;->getKey(Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;)Z
    .locals 0

    .line 169
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;->hasKey(Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;
    .locals 8

    .line 131
    new-instance v7, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    add-int/lit8 v0, p2, 0x0

    .line 132
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 133
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, v0

    :goto_1
    add-int/lit8 v0, p2, 0x2

    .line 134
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v0, p2, 0x3

    .line 135
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_2
    add-int/lit8 v0, p2, 0x4

    .line 136
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_3
    add-int/lit8 p2, p2, 0x5

    .line 137
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p1, v2

    goto :goto_5

    :cond_4
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_5
    move-object v0, v7

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;-><init>(Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v7
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;->readEntity(Landroid/database/Cursor;I)Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 144
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
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 145
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setTimeStamp(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x2

    .line 146
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setEventType(I)V

    add-int/lit8 v0, p3, 0x3

    .line 147
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setPackageName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 148
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setTime(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x5

    .line 149
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_5
    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setChildModel(Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;->readEntity(Landroid/database/Cursor;Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 126
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
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;J)Ljava/lang/Long;
    .locals 1

    .line 154
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setId(Ljava/lang/Long;)V

    .line 155
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;->updateKeyAfterInsert(Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
