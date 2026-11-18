.class public Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;
.super Ljava/lang/Object;
.source "DBWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter$SingletonHolder;
    }
.end annotation


# instance fields
.field private mDb:Lnet/sqlcipher/database/SQLiteDatabase;

.field private mPwd:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->KEY_UUID:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->getSettingProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mPwd:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 28
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mPwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;
    .locals 1

    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter$SingletonHolder;->access$100()Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dropTables()V
    .locals 3

    .line 120
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v2, "delete from devices"

    invoke-virtual {v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v2, "delete from friends"

    invoke-virtual {v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 125
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recoverDevices(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;",
            ">;)V"
        }
    .end annotation

    .line 84
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 88
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v2, "delete from devices"

    invoke-virtual {v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 92
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 93
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    .line 94
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v5, "insert into devices(uuid, userId, deviceName, deviceType, deviceIcon, appKey, online, featuresVideo, featuresVoice, featuresPstn, featuresMessage, position) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    .line 98
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 99
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getUserId()Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    .line 100
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 101
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 102
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceIcon()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    .line 103
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getAppKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 104
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->isOnline()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    .line 105
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    move-object v8, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getVideo()Ljava/lang/Boolean;

    move-result-object v8

    :goto_1
    aput-object v8, v6, v7

    const/16 v7, 0x8

    .line 106
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    if-nez v8, :cond_2

    move-object v8, v9

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getVoice()Ljava/lang/Boolean;

    move-result-object v8

    :goto_2
    aput-object v8, v6, v7

    const/16 v7, 0x9

    .line 107
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    if-nez v8, :cond_3

    move-object v8, v9

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getPstn()Ljava/lang/Boolean;

    move-result-object v8

    :goto_3
    aput-object v8, v6, v7

    const/16 v7, 0xa

    .line 108
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getMessage()Ljava/lang/Boolean;

    move-result-object v9

    :goto_4
    aput-object v9, v6, v7

    const/16 v7, 0xb

    .line 109
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getPosition()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    .line 94
    invoke-virtual {v4, v5, v6}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 112
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 114
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public recoverFriends(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
            ">;)V"
        }
    .end annotation

    .line 40
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 44
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v2, "delete from friends"

    invoke-virtual {v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    .line 50
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v5, "insert into friends(contactId, ownerUserId, relationCode, relationName, contactNick, mobile, outUserId, icon, familyFlag, preventCallFlag, genieUserFlag, selfFlag, featuresVideo, featuresVoice, featuresPstn, featuresMessage) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/16 v6, 0x10

    new-array v6, v6, [Ljava/lang/Object;

    .line 58
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getUserId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 59
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getOwnerUserId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    .line 60
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationCode()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 61
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 62
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    .line 63
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 64
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getOutUserId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    .line 65
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getAvatar()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    .line 66
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFamilyMember()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x9

    .line 67
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isInBlacklists()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xa

    .line 68
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isGenieUser()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xb

    .line 69
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isSelf()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xc

    .line 70
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    move-object v8, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getVideo()Ljava/lang/Boolean;

    move-result-object v8

    :goto_1
    aput-object v8, v6, v7

    const/16 v7, 0xd

    .line 71
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    if-nez v8, :cond_2

    move-object v8, v9

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getVoice()Ljava/lang/Boolean;

    move-result-object v8

    :goto_2
    aput-object v8, v6, v7

    const/16 v7, 0xe

    .line 72
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    if-nez v8, :cond_3

    move-object v8, v9

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getPstn()Ljava/lang/Boolean;

    move-result-object v8

    :goto_3
    aput-object v8, v6, v7

    const/16 v7, 0xf

    .line 73
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getMessage()Ljava/lang/Boolean;

    move-result-object v9

    :goto_4
    aput-object v9, v6, v7

    .line 50
    invoke-virtual {v4, v5, v6}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 76
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 78
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
