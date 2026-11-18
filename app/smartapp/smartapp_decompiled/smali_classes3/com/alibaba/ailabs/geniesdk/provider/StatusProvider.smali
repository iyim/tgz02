.class public Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;
.super Landroid/content/ContentProvider;
.source "StatusProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.provider"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/"

.field private static final STATUS:Ljava/lang/String; = "status"

.field public static final TAG:Ljava/lang/String; = "StatusProvider"

.field public static final TYPE_MEDIA_TABLE:I = 0x0

.field public static final TYPE_OPR_TABLE:I = 0x2

.field public static final TYPE_USER_TABLE:I = 0x1

.field private static final sMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOprTable:Lcom/alibaba/ailabs/geniesdk/database/GenieTable;

.field private mUserTable:Lcom/alibaba/ailabs/geniesdk/database/UserTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.alibaba.ailabs.genie.assistant.provider"

    const-string v2, "media"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v2, "user_data"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v2, "GenieApi"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 33
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/database/GenieTable;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/database/GenieTable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->mOprTable:Lcom/alibaba/ailabs/geniesdk/database/GenieTable;

    return-void
.end method

.method private getMediaTable()Lcom/alibaba/ailabs/geniesdk/database/MediaTable;
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/database/DbManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/database/DbManager;

    move-result-object v0

    const-string v1, "media"

    .line 156
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/database/DbManager;->getSqlService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;

    return-object v0
.end method

.method private getOprTable()Lcom/alibaba/ailabs/geniesdk/database/GenieTable;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->mOprTable:Lcom/alibaba/ailabs/geniesdk/database/GenieTable;

    return-object v0
.end method

.method public static notifyTtsStatusChanged(Landroid/content/Context;II)V
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.alibaba.ailabs.genie.assistant.provider"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GenieApi"

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?"

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "status"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 102
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p1, "vnd.android.cursor.item/GenieApi"

    return-object p1

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "vnd.android.cursor.dir/media"

    return-object p1
.end method

.method public getUserTable()Lcom/alibaba/ailabs/geniesdk/database/UserTable;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->mUserTable:Lcom/alibaba/ailabs/geniesdk/database/UserTable;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/database/UserTable;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/geniesdk/database/UserTable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->mUserTable:Lcom/alibaba/ailabs/geniesdk/database/UserTable;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->mUserTable:Lcom/alibaba/ailabs/geniesdk/database/UserTable;

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    .line 119
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->getOprTable()Lcom/alibaba/ailabs/geniesdk/database/GenieTable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/geniesdk/database/GenieTable;->insert(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->getMediaTable()Lcom/alibaba/ailabs/geniesdk/database/MediaTable;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;->insert(Landroid/content/ContentValues;)I

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/database/DbManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/database/DbManager;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 p2, 0x0

    .line 61
    :try_start_0
    sget-object p4, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->getOprTable()Lcom/alibaba/ailabs/geniesdk/database/GenieTable;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/geniesdk/database/GenieTable;->query(Ljava/lang/String;)Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 65
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    const-string p4, "StatusProvider"

    .line 66
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TYPE_USER_TABLE callingPackage = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "com.alibaba.ailabs.genie.smartapp"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 68
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p4

    .line 70
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "callingPackage"

    .line 71
    invoke-interface {p5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2

    .line 72
    invoke-virtual {p4}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getTraceInterface()Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p4}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getTraceInterface()Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    move-result-object p4

    const-string v0, "whoGetUserInfo"

    invoke-interface {p4, p1, v0, p5}, Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;->send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/provider/StatusProvider;->getUserTable()Lcom/alibaba/ailabs/geniesdk/database/UserTable;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/geniesdk/database/UserTable;->query(Ljava/lang/String;)Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_1
    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
