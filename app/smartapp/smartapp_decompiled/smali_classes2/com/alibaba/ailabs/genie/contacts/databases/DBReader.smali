.class public Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;
.super Ljava/lang/Object;
.source "DBReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/databases/DBReader$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_DBReader"


# instance fields
.field private mDb:Lnet/sqlcipher/database/SQLiteDatabase;

.field private mPwd:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->KEY_UUID:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->getSettingProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mPwd:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mPwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/databases/DBReader$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;
    .locals 1

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader$SingletonHolder;->access$100()Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContactsByNum(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 7

    .line 175
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    monitor-enter v0

    .line 176
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 179
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v4, "select * from friends where mobile = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v2

    .line 180
    invoke-interface {v2}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 181
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationName(Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 182
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 183
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setAvatar(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 184
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    const-string v3, "contacts_DBReader"

    .line 187
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 191
    :goto_1
    :try_start_4
    monitor-exit v0

    return-object v1

    .line 189
    :goto_2
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 192
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getContactsCursorByNum(Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 6

    .line 196
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    monitor-enter v0

    const/4 v1, 0x0

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v3, "select * from friends where mobile = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "contacts_DBReader"

    .line 201
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    :goto_0
    monitor-exit v0

    return-object v1

    .line 204
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getDeviceDetailsByUuid(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;
    .locals 8

    .line 148
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    monitor-enter v0

    .line 149
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 152
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v4, "select * from devices where uuid = ?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v6}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v2

    .line 153
    invoke-interface {v2}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    .line 154
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceId(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 155
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setUserId(Ljava/lang/Long;)V

    const/4 p1, 0x6

    .line 156
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceName(Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 157
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setOnline(Z)V

    const/16 p1, 0x8

    .line 158
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceType(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 159
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setAppKey(Ljava/lang/String;)V

    const/16 p1, 0xe

    .line 160
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/16 v3, 0xf

    .line 161
    invoke-interface {v2, v3}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    const/16 v4, 0x10

    .line 162
    invoke-interface {v2, v4}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const/16 v6, 0x11

    .line 163
    invoke-interface {v2, v6}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 164
    :goto_4
    new-instance v6, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v6, p1, v3, v4, v5}, Lcom/alibaba/ailabs/genie/contacts/model/Features;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :goto_5
    :try_start_2
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    :try_start_3
    const-string v3, "contacts_DBReader"

    .line 166
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 170
    :goto_6
    :try_start_4
    monitor-exit v0

    return-object v1

    .line 168
    :goto_7
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 171
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public getDeviceInfoList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;",
            ">;"
        }
    .end annotation

    .line 242
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    monitor-enter v0

    .line 243
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 246
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 247
    new-instance v3, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 248
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v4, "select * from devices"

    invoke-virtual {v3, v4, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v2

    .line 251
    :goto_0
    invoke-interface {v2}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 252
    new-instance v3, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;-><init>()V

    const/4 v4, 0x1

    .line 253
    invoke-interface {v2, v4}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceId(Ljava/lang/String;)V

    const/4 v5, 0x5

    .line 254
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceIcon(Ljava/lang/String;)V

    const/4 v5, 0x6

    .line 255
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceName(Ljava/lang/String;)V

    const/16 v5, 0xe

    .line 256
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/16 v7, 0xf

    .line 257
    invoke-interface {v2, v7}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v4, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/16 v8, 0x10

    .line 258
    invoke-interface {v2, v8}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v4, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    const/16 v9, 0x11

    .line 259
    invoke-interface {v2, v9}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 260
    :goto_4
    new-instance v6, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v6, v5, v7, v8, v4}, Lcom/alibaba/ailabs/genie/contacts/model/Features;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

    const/16 v4, 0x13

    .line 261
    invoke-interface {v2, v4}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setPosition(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :cond_5
    :goto_5
    :try_start_2
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "contacts_DBReader"

    .line 265
    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 269
    :goto_6
    :try_start_4
    monitor-exit v0

    return-object v1

    .line 267
    :goto_7
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 270
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method public getFriendDetailsByContactId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 8

    .line 80
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    monitor-enter v0

    .line 81
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 84
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v4, "select * from friends where contactId = ?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v6}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v2

    .line 85
    invoke-interface {v2}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    .line 86
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setUserId(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 87
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOwnerUserId(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 88
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationCode(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 89
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationName(Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 90
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 91
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOutUserId(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 92
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setAvatar(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 93
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    const/16 p1, 0xc

    .line 94
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFamilyMember(Z)V

    const/16 p1, 0xd

    .line 95
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setInBlacklists(Z)V

    const/16 p1, 0xe

    .line 96
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setGenieUserFlag(Z)V

    const/16 p1, 0x10

    .line 97
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setSelfFlag(Z)V

    const/16 p1, 0x12

    .line 98
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    const/16 v3, 0x13

    .line 99
    invoke-interface {v2, v3}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    const/16 v4, 0x14

    .line 100
    invoke-interface {v2, v4}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    const/16 v6, 0x15

    .line 101
    invoke-interface {v2, v6}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_7

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    .line 102
    :goto_7
    new-instance v6, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v6, p1, v3, v4, v5}, Lcom/alibaba/ailabs/genie/contacts/model/Features;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_8
    :try_start_2
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catchall_0
    move-exception p1

    goto :goto_a

    :catch_0
    move-exception p1

    :try_start_3
    const-string v3, "contacts_DBReader"

    .line 105
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 109
    :goto_9
    :try_start_4
    monitor-exit v0

    return-object v1

    .line 107
    :goto_a
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 110
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method public getFriendDetailsByNum(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 8

    .line 114
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    monitor-enter v0

    .line 115
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 118
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v4, "select * from friends where mobile = ?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v6}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v2

    .line 119
    invoke-interface {v2}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    .line 120
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setUserId(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 121
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOwnerUserId(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 122
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationCode(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 123
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationName(Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 124
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 125
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOutUserId(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 126
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setAvatar(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 127
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    const/16 p1, 0xc

    .line 128
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFamilyMember(Z)V

    const/16 p1, 0xd

    .line 129
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setInBlacklists(Z)V

    const/16 p1, 0xe

    .line 130
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setGenieUserFlag(Z)V

    const/16 p1, 0x10

    .line 131
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setSelfFlag(Z)V

    const/16 p1, 0x12

    .line 132
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    const/16 v3, 0x13

    .line 133
    invoke-interface {v2, v3}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    const/16 v4, 0x14

    .line 134
    invoke-interface {v2, v4}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    const/16 v6, 0x15

    .line 135
    invoke-interface {v2, v6}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_7

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    .line 136
    :goto_7
    new-instance v6, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v6, p1, v3, v4, v5}, Lcom/alibaba/ailabs/genie/contacts/model/Features;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_8
    :try_start_2
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catchall_0
    move-exception p1

    goto :goto_a

    :catch_0
    move-exception p1

    :try_start_3
    const-string v3, "contacts_DBReader"

    .line 139
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 143
    :goto_9
    :try_start_4
    monitor-exit v0

    return-object v1

    .line 141
    :goto_a
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 144
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method public getFriendDetailsByUserId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
    .locals 8

    .line 46
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    monitor-enter v0

    .line 47
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 50
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v4, "select * from friends where ownerUserId = ?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v6}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v2

    .line 51
    invoke-interface {v2}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    .line 52
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setUserId(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 53
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOwnerUserId(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 54
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationCode(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 55
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationName(Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 56
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 57
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOutUserId(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 58
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setAvatar(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 59
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    const/16 p1, 0xc

    .line 60
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFamilyMember(Z)V

    const/16 p1, 0xd

    .line 61
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setInBlacklists(Z)V

    const/16 p1, 0xe

    .line 62
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setGenieUserFlag(Z)V

    const/16 p1, 0x10

    .line 63
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setSelfFlag(Z)V

    const/16 p1, 0x12

    .line 64
    invoke-interface {v2, p1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    const/16 v3, 0x13

    .line 65
    invoke-interface {v2, v3}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    const/16 v4, 0x14

    .line 66
    invoke-interface {v2, v4}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    const/16 v6, 0x15

    .line 67
    invoke-interface {v2, v6}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_7

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    .line 68
    :goto_7
    new-instance v6, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v6, p1, v3, v4, v5}, Lcom/alibaba/ailabs/genie/contacts/model/Features;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :goto_8
    :try_start_2
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catchall_0
    move-exception p1

    goto :goto_a

    :catch_0
    move-exception p1

    :try_start_3
    const-string v3, "contacts_DBReader"

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 74
    :goto_9
    :try_start_4
    monitor-exit v0

    return-object v1

    .line 72
    :goto_a
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 75
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method public getFriendInfoList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;"
        }
    .end annotation

    .line 208
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 211
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 213
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 216
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v4, "select * from friends"

    invoke-virtual {v3, v4, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v2

    .line 217
    :goto_0
    invoke-interface {v2}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 218
    new-instance v3, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V

    const/4 v4, 0x1

    .line 219
    invoke-interface {v2, v4}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setUserId(Ljava/lang/String;)V

    const/4 v5, 0x5

    .line 220
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setRelationName(Ljava/lang/String;)V

    const/4 v5, 0x6

    .line 221
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setNickName(Ljava/lang/String;)V

    const/4 v5, 0x7

    .line 222
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setOutUserId(Ljava/lang/String;)V

    const/16 v5, 0x9

    .line 223
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setAvatar(Ljava/lang/String;)V

    const/16 v5, 0x12

    .line 224
    invoke-interface {v2, v5}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/16 v7, 0x13

    .line 225
    invoke-interface {v2, v7}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v4, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/16 v8, 0x14

    .line 226
    invoke-interface {v2, v8}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v4, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    const/16 v9, 0x15

    .line 227
    invoke-interface {v2, v9}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 228
    :goto_4
    new-instance v6, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v6, v5, v7, v8, v4}, Lcom/alibaba/ailabs/genie/contacts/model/Features;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

    .line 229
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    :cond_5
    :goto_5
    :try_start_2
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "contacts_DBReader"

    .line 232
    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 237
    :goto_6
    :try_start_4
    monitor-exit v0

    return-object v1

    .line 235
    :goto_7
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 238
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method
