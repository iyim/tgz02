.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;
.super Ljava/lang/Object;
.source "UserDataProvider.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.provider"

.field private static final AVATAR_KEY:Ljava/lang/String; = "avatar_key"

.field private static final ISVIP_KEY:Ljava/lang/String; = "isVip"

.field private static final LOCATION_KEY:Ljava/lang/String; = "location_key"

.field private static final LOGINTIME_KEY:Ljava/lang/String; = "login_time_key"

.field private static final MOBILE_KEY:Ljava/lang/String; = "mobile_key"

.field private static final NICKNAME_KEY:Ljava/lang/String; = "nick_name_key"

.field private static final QRCODE_TYPE:Ljava/lang/String; = "qrcode"

.field public static final TABLE_USERDATA_NAME:Ljava/lang/String; = "user_data"

.field private static final TAG:Ljava/lang/String; = "UserDataProvider"

.field private static final TB_USER_ID_KEY:Ljava/lang/String; = "tb_user_id_key"

.field private static final TOKEN_KEY:Ljava/lang/String; = "token_key"

.field private static final USERID_KEY:Ljava/lang/String; = "userid_key"

.field private static final USER_TYPE:Ljava/lang/String; = "userType"

.field private static final UUID_KEY:Ljava/lang/String; = "uuid_key"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;
    .locals 9

    .line 44
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "UserDataProvider"

    const-string v3, "getInfo provider"

    .line 64
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/user_data"

    .line 66
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 67
    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 68
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "uuid_key"

    .line 71
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;->uuid:Ljava/lang/String;

    const-string/jumbo v3, "userid_key"

    .line 72
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;->userId:Ljava/lang/String;

    const-string/jumbo v3, "token_key"

    .line 73
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;->mtopToken:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v1

    .line 77
    :goto_0
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0

    :catch_0
    move-object p0, v1

    .line 77
    :catch_1
    :goto_1
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v0
.end method

.method public static getMtopToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;->mtopToken:Ljava/lang/String;

    return-object p0
.end method

.method public static getQrCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "UserDataProvider"

    const-string v1, "getQrCode provider"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.alibaba.ailabs.genie.assistant.provider/user_data"

    .line 149
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 150
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x0

    :try_start_1
    const-string/jumbo v5, "qrcode"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 151
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "qrcode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :catch_0
    :goto_0
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 157
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v8, v1

    move-object v1, p0

    move-object p0, v0

    move-object v0, v8

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object p0, v8

    goto :goto_1

    :catch_1
    move-object v1, v0

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v1, v0

    .line 156
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 157
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p0

    :catch_2
    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    :goto_2
    return-object v0
.end method

.method public static getTBUserData(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;
    .locals 9

    .line 99
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;-><init>()V

    const-string v1, "UserDataProvider"

    const-string v2, "getUserData provider"

    .line 102
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/user_data"

    .line 107
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 108
    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 109
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "avatar_key"

    .line 111
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->avatar:Ljava/lang/String;

    const-string v3, "location_key"

    .line 112
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->location:Ljava/lang/String;

    const-string v3, "login_time_key"

    .line 113
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->loginTime:Ljava/lang/String;

    const-string v3, "mobile_key"

    .line 114
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->mobile:Ljava/lang/String;

    const-string v3, "nick_name_key"

    .line 115
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->tbNickName:Ljava/lang/String;

    const-string/jumbo v3, "tb_user_id_key"

    .line 116
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->tbUserId:Ljava/lang/String;

    const-string v3, "isVip"

    .line 117
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->isVip:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v1

    .line 121
    :goto_0
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0

    :catch_0
    move-object p0, v1

    .line 121
    :catch_1
    :goto_1
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public static getUserID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public static isMemberType(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "UserDataProvider"

    const-string v1, "getMemberType provider"

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/user_data"

    .line 172
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 173
    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 174
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "userType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 179
    :catch_0
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 180
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object p0, v0

    .line 179
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 180
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1

    :catch_1
    move-object p0, v0

    goto :goto_0

    :goto_2
    return v1
.end method
