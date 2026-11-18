.class public Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# static fields
.field public static final AUTOHORITY:Ljava/lang/String; = "com.android.settings"

.field public static final CODE_DEVICE_INFO:I = 0x1

.field public static final COUNT:Ljava/lang/String; = "voiceprint_count"

.field private static final TAG:Ljava/lang/String; = "SettingsProvider"

.field private static final mMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field mDb:Landroid/database/sqlite/SQLiteDatabase;

.field mDbHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 31
    sget-object v0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings"

    const-string v2, "voiceprint_info"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mDbHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/DBHelper;

    .line 16
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 149
    sget-object v0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "voiceprint_info"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete,current thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p2

    .line 129
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupport URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getType,current thread:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 72
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v0, "SettingsProvider"

    const-string v1, "create db for SettingsProvider"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/utils/DBHelper;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/utils/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mDbHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/DBHelper;

    .line 47
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mDbHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/DBHelper;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/utils/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 89
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported URI:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update,current thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/utils/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p2

    .line 112
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupport URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
