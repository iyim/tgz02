.class public Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;
.super Ljava/lang/Object;
.source "UserDataFileUtils.java"


# static fields
.field public static ACCESS_TOKEN:I = 0x4

.field public static ACTIVATENAMES:[Ljava/lang/String; = null

.field public static AVATAR_KEY:I = 0x4

.field public static final BLOCK_CODE:Ljava/lang/String; = "block"

.field public static ISVIP_KEY:I = 0x6

.field public static LOCATION_KEY:I = 0x3

.field public static LOGINTIME_KEY:I = 0x1

.field public static MOBILE_KEY:I = 0x2

.field public static MTOPTOKEN_KEY:I = 0x3

.field public static NAMES:[Ljava/lang/String; = null

.field public static NICKNAME_KEY:I = 0x0

.field private static final SNAME:Ljava/lang/String; = "user_data_pres"

.field private static final TAG:Ljava/lang/String; = "UserDataFileUtils"

.field public static TB_USER_ID_KEY:I = 0x5

.field private static final UNAME:Ljava/lang/String; = "user_details_pres"

.field public static USERID_KEY:I = 0x0

.field public static USER_TYPE:I = 0x2

.field public static UUID_KEY:I = 0x1

.field private static instace:Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;


# instance fields
.field private mQrcode:Ljava/lang/String;

.field private mUserData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "nickname"

    const-string v1, "logintime"

    const-string v2, "mobile"

    const-string v3, "location"

    const-string v4, "avatar"

    const-string v5, "tbUserId"

    const-string v6, "isVip"

    .line 42
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    const-string v1, "userId"

    const-string v2, "uuid"

    const-string v3, "userType"

    const-string v4, "mtop_token"

    const-string v5, "accessToken"

    const-string v6, "refershToken"

    const-string v7, "accessTime"

    const-string v8, "refreshTime"

    .line 43
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;
    .locals 2

    .line 49
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->instace:Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->instace:Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    invoke-direct {v1}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->instace:Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->instace:Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    return-object v0
.end method

.method private readBackUpFile(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "WrongConstant"
        }
    .end annotation

    .line 104
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/misc/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user_data_pres.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/shared_prefs/user_data_pres.xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0xa

    const-string v0, "UserDataFileUtils"

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    :try_start_1
    const-string v2, "readBackUpFile"

    .line 110
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 113
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 114
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    .line 115
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 116
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 117
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 126
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 127
    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 128
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 129
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    :cond_1
    const-string p1, "readBackUpFile else"

    .line 132
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private readUserData(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 141
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->readBackUpFile(Landroid/content/Context;)V

    .line 142
    const-class v1, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    monitor-enter v1

    :try_start_0
    const-string v2, "user_details_pres"

    const/4 v3, 0x0

    .line 144
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v4, 0x0

    .line 146
    :goto_0
    sget-object v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    .line 147
    sget v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ISVIP_KEY:I

    if-ne v4, v5, :cond_0

    .line 148
    sget-object v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 149
    sget-object v6, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 152
    :cond_0
    sget-object v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 154
    sget-object v6, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "user_data_pres"

    .line 157
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 158
    :goto_2
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v3, v2, :cond_5

    .line 159
    sget v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->USER_TYPE:I

    if-ne v3, v2, :cond_3

    .line 160
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    aget-object v2, v2, v3

    const/4 v4, -0x1

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 161
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    .line 164
    :cond_3
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v4, "null"

    .line 165
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 166
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 170
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 172
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public getQrcode()Ljava/lang/String;
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->mQrcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "UserDataFileUtils"

    if-eqz v0, :cond_0

    const-string v0, "bindUser"

    .line 185
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->bindUser()V

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQrcode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->mQrcode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->mQrcode:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 60
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->mUserData:Ljava/lang/String;

    const-string v2, "UserDataFileUtils"

    if-nez v1, :cond_0

    const-string v1, "getUserData readUserData"

    .line 61
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->readUserData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->mUserData:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "getUserData mUserData != null"

    .line 64
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->mUserData:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 68
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->mUserData:Ljava/lang/String;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "getUserData data valid"

    .line 69
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    sget-object v3, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    sget v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->MTOPTOKEN_KEY:I

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 73
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "timeStamp"

    .line 75
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "authToken"

    .line 76
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :try_start_1
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    .line 82
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 84
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tokenDigest xxxx = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    sget v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->MTOPTOKEN_KEY:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_1
    const-string v0, "digest"

    .line 88
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "timestamp"

    .line 89
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    sget v2, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->MTOPTOKEN_KEY:I

    aget-object v0, v0, v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->mUserData:Ljava/lang/String;

    return-object p1
.end method

.method public setQrcode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "block"

    .line 193
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->mQrcode:Ljava/lang/String;

    return-void
.end method

.method public updateUserData(Landroid/content/Context;)V
    .locals 2

    const-string v0, "UserDataFileUtils"

    const-string v1, "updateUserData"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->readUserData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->mUserData:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;->notifyDataChanger()V

    return-void
.end method
