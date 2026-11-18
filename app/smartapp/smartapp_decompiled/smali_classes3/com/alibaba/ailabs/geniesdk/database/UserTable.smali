.class public Lcom/alibaba/ailabs/geniesdk/database/UserTable;
.super Ljava/lang/Object;
.source "UserTable.java"


# static fields
.field private static final AVATAR_KEY:Ljava/lang/String; = "avatar_key"

.field private static final ISVIP_KEY:Ljava/lang/String; = "isVip"

.field private static final LOCATION_KEY:Ljava/lang/String; = "location_key"

.field private static final LOGINTIME_KEY:Ljava/lang/String; = "login_time_key"

.field private static final MOBILE_KEY:Ljava/lang/String; = "mobile_key"

.field private static final NICKNAME_KEY:Ljava/lang/String; = "nick_name_key"

.field private static final QRCODE_TYPE:Ljava/lang/String; = "qrcode"

.field public static final TABLE_NAME:Ljava/lang/String; = "user_data"

.field private static final TB_USER_ID_KEY:Ljava/lang/String; = "tb_user_id_key"

.field private static final TOKEN_KEY:Ljava/lang/String; = "token_key"

.field private static final USERID_KEY:Ljava/lang/String; = "userid_key"

.field private static final USER_TYPE:Ljava/lang/String; = "userType"

.field private static final UUID_KEY:Ljava/lang/String; = "uuid_key"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/database/UserTable;->mCursor:Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/database/UserTable;->mContext:Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/database/UserTable;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static notifyUserStatusChanged(Landroid/content/Context;Z)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.alibaba.ailabs.genie.assistant.provider"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user_data"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/userStatus?isLogin="

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string p0, "UserTable"

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public query(Ljava/lang/String;)Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;
    .locals 4

    .line 40
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/database/UserTable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getUserData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 45
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "userid_key"

    .line 46
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->USERID_KEY:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uuid_key"

    .line 47
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->UUID_KEY:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "token_key"

    .line 48
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->MTOPTOKEN_KEY:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "userType"

    .line 49
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->USER_TYPE:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "location_key"

    .line 50
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->LOCATION_KEY:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "avatar_key"

    .line 51
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->AVATAR_KEY:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "login_time_key"

    .line 52
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->LOGINTIME_KEY:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mobile_key"

    .line 53
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->MOBILE_KEY:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nick_name_key"

    .line 54
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NICKNAME_KEY:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tb_user_id_key"

    .line 55
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->TB_USER_ID_KEY:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isVip"

    .line 56
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ISVIP_KEY:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "qrcode"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getQrcode()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/database/UserTable;->mCursor:Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;->setExtras(Landroid/os/Bundle;)V

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/database/UserTable;->mCursor:Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;

    return-object p1
.end method
