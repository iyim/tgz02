.class public Lcom/alibaba/ailabs/childmode/provider/ChildModeProvider;
.super Landroid/content/ContentProvider;
.source "ChildModeProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.alibaba.ailabs.childmode.provider"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/"

.field public static final NOTIFY_PASSWORD_URI:Landroid/net/Uri;

.field public static final TYPE_CONFIG_INFO_TABLE:I

.field private static final sMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.alibaba.ailabs.childmode.provider/childpassword"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/childmode/provider/ChildModeProvider;->NOTIFY_PASSWORD_URI:Landroid/net/Uri;

    .line 26
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/alibaba/ailabs/childmode/provider/ChildModeProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/childmode/provider/ChildModeProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.alibaba.ailabs.childmode.provider"

    const-string v2, "childMode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 67
    sget-object v0, Lcom/alibaba/ailabs/childmode/provider/ChildModeProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "vnd.android.cursor.item/childMode"

    return-object p1

    .line 73
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
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 82
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/childmode/provider/ChildModeProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/provider/ChildModeProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/database/DbManager;->getConfigInfoTable(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;

    move-result-object p1

    .line 86
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->insert(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/provider/ChildModeProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/database/DbManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/database/DbManager;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p2, 0x0

    .line 46
    :try_start_0
    sget-object p4, Lcom/alibaba/ailabs/childmode/provider/ChildModeProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/provider/ChildModeProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/database/DbManager;->getConfigInfoTable(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;

    move-result-object p1

    .line 52
    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
