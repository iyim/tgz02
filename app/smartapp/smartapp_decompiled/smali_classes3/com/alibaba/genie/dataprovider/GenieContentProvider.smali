.class public Lcom/alibaba/genie/dataprovider/GenieContentProvider;
.super Landroid/content/ContentProvider;
.source "GenieContentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieContentProvider"

.field private static final TYPE_INT:I = 0x1

.field private static final TYPE_STRING:I = 0x2

.field public static authority:Ljava/lang/String;

.field private static matcher:Landroid/content/UriMatcher;


# instance fields
.field private daoSession:Lcom/alibaba/genie/dataprovider/db/DaoSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initGreenDao()V
    .locals 3

    .line 40
    new-instance v0, Lcom/alibaba/genie/dataprovider/db/DaoMaster$DevOpenHelper;

    invoke-virtual {p0}, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "genieProvider.db"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/genie/dataprovider/db/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/genie/dataprovider/db/DaoMaster$DevOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/alibaba/genie/dataprovider/db/DaoMaster;

    invoke-direct {v1, v0}, Lcom/alibaba/genie/dataprovider/db/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    invoke-virtual {v1}, Lcom/alibaba/genie/dataprovider/db/DaoMaster;->newSession()Lcom/alibaba/genie/dataprovider/db/DaoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->daoSession:Lcom/alibaba/genie/dataprovider/db/DaoSession;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->daoSession:Lcom/alibaba/genie/dataprovider/db/DaoSession;

    const/4 v1, 0x0

    const-string v2, "GenieContentProvider"

    if-nez v0, :cond_0

    const-string p1, "uri is null, return"

    .line 68
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert, uri:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "key"

    .line 72
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v2, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    .line 75
    :cond_1
    new-instance v2, Lcom/alibaba/genie/dataprovider/db/IntValue;

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v2, v0, p2}, Lcom/alibaba/genie/dataprovider/db/IntValue;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    iget-object p2, p0, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->daoSession:Lcom/alibaba/genie/dataprovider/db/DaoSession;

    invoke-virtual {p2}, Lcom/alibaba/genie/dataprovider/db/DaoSession;->getIntValueDao()Lcom/alibaba/genie/dataprovider/db/IntValueDao;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/alibaba/genie/dataprovider/db/IntValueDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 79
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method public onCreate()Z
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".data.provider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->authority:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authority:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->authority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GenieContentProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->matcher:Landroid/content/UriMatcher;

    .line 52
    sget-object v0, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->matcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->authority:Ljava/lang/String;

    const-string v3, "int"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->matcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->authority:Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "string"

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->initGreenDao()V

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 p2, 0x0

    const-string p3, "GenieContentProvider"

    if-nez p1, :cond_0

    const-string p1, "uri is null, return"

    .line 96
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 100
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "query, uri:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p4, p0, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->daoSession:Lcom/alibaba/genie/dataprovider/db/DaoSession;

    if-nez p4, :cond_1

    const-string p1, "daoSession is null, return"

    .line 102
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    const-string p4, "key"

    .line 105
    invoke-virtual {p1, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 106
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object p3, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    goto :goto_0

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/alibaba/genie/dataprovider/GenieContentProvider;->daoSession:Lcom/alibaba/genie/dataprovider/db/DaoSession;

    invoke-virtual {p1}, Lcom/alibaba/genie/dataprovider/db/DaoSession;->getIntValueDao()Lcom/alibaba/genie/dataprovider/db/IntValueDao;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/alibaba/genie/dataprovider/db/IntValueDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object p5, Lcom/alibaba/genie/dataprovider/db/IntValueDao$Properties;->Key:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p5, p4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p4

    const/4 p5, 0x0

    new-array v0, p5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, p4, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_3

    .line 113
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/dataprovider/db/IntValue;

    .line 114
    new-array p2, p3, [Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/genie/dataprovider/db/IntValue;->getValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p5

    .line 116
    new-instance p1, Landroid/database/MatrixCursor;

    array-length p3, p2

    invoke-direct {p1, p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p1

    :cond_3
    :goto_0
    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 141
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
