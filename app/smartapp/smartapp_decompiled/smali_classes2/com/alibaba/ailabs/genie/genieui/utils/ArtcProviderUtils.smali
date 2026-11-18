.class public Lcom/alibaba/ailabs/genie/genieui/utils/ArtcProviderUtils;
.super Ljava/lang/Object;
.source "ArtcProviderUtils.java"


# static fields
.field public static COLUMN_NAME:Ljava/lang/String; = "SPCOLUMNNAME"

.field public static final SP_KEY:Ljava/lang/String; = "tips"

.field public static final SP_NAME:Ljava/lang/String; = "cmcc_user"

.field public static final STRING_CONTENT_URI_CODE:I = 0x64

.field public static final authorities:Ljava/lang/String; = "com.alibaba.ailabs.genie.custom.rtc.preferenceProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static buildUri(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://com.alibaba.ailabs.genie.custom.rtc.preferenceProvider/string/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 54
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/genieui/utils/ArtcProviderUtils;->buildUri(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v3

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 56
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p3

    .line 58
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 59
    sget-object p0, Lcom/alibaba/ailabs/genie/genieui/utils/ArtcProviderUtils;->COLUMN_NAME:Ljava/lang/String;

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v1, :cond_3

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p3

    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0
.end method

.method public static getTips(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "cmcc_user"

    const-string v1, "tips"

    const-string v2, ""

    .line 32
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/genieui/utils/ArtcProviderUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x64

    .line 36
    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/genieui/utils/ArtcProviderUtils;->buildUri(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 39
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static putTips(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "cmcc_user"

    const-string v1, "tips"

    .line 28
    invoke-static {p0, v0, v1, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/ArtcProviderUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
