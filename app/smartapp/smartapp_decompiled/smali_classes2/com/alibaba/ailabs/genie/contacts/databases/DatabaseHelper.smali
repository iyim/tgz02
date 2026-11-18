.class public Lcom/alibaba/ailabs/genie/contacts/databases/DatabaseHelper;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "contact.db"

.field public static final DATABASE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "contacts_DatabaseHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "contacts_DatabaseHelper"

    const-string v1, "SQLiteDatabase.loadLibs..."

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "contact.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 29
    invoke-direct {p0, p1, v0, v1, v2}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table friends( id INTEGER PRIMARY KEY AUTOINCREMENT , contactId TEXT , ownerUserId Long , ownerUserIdStr TEXT , relationCode TEXT , relationName TEXT , contactNick TEXT , outUserId TEXT , outUserIdStr TEXT , icon TEXT , mobile TEXT , taobaoUserId Long , familyFlag Boolean , preventcallFlag Boolean , genieUserFlag Boolean , sortTag TEXT , selfFlag Boolean , newImportFlag Boolean , featuresVideo Boolean , featuresVoice Boolean , featuresPstn Boolean , featuresMessage Boolean)"

    .line 35
    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table devices( id INTEGER PRIMARY KEY AUTOINCREMENT , uuid TEXT , userId Long , callId TEXT , callType TEXT , deviceIcon TEXT , deviceName TEXT ,  online Boolean , deviceType TEXT , deviceProductId INTEGER , appKey TEXT , deviceAbilityValue TEXT , deviceAbility TEXT , name TEXT , featuresVideo Boolean , featuresVoice Boolean , featuresPstn Boolean , featuresMessage Boolean , isResponsible Boolean , position TEXT)"

    .line 59
    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 9

    if-le p3, p2, :cond_a

    const/4 p2, 0x0

    const-string p3, "select * from devices"

    .line 85
    invoke-virtual {p1, p3, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p3

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;-><init>()V

    .line 88
    :goto_0
    invoke-interface {p3}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    .line 89
    invoke-interface {p3, v6}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceId(Ljava/lang/String;)V

    .line 90
    invoke-interface {p3, v4}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceIcon(Ljava/lang/String;)V

    .line 91
    invoke-interface {p3, v3}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setDeviceName(Ljava/lang/String;)V

    const/16 v2, 0xe

    .line 92
    invoke-interface {p3, v2}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0xf

    .line 93
    invoke-interface {p3, v3}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    const/16 v4, 0x10

    .line 94
    invoke-interface {p3, v4}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    const/16 v7, 0x11

    .line 95
    invoke-interface {p3, v7}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v6, :cond_3

    const/4 v5, 0x1

    .line 96
    :cond_3
    new-instance v6, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/alibaba/ailabs/genie/contacts/model/Features;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_4
    invoke-interface {p3}, Lnet/sqlcipher/Cursor;->close()V

    const-string p3, "drop table devices"

    .line 100
    invoke-virtual {p1, p3}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "create table devices( id INTEGER PRIMARY KEY AUTOINCREMENT , uuid TEXT , userId Long , callId TEXT , callType TEXT , deviceIcon TEXT , deviceName TEXT ,  online Boolean , deviceType TEXT , deviceProductId INTEGER , appKey TEXT , deviceAbilityValue TEXT , deviceAbility TEXT , name TEXT , featuresVideo Boolean , featuresVoice Boolean , featuresPstn Boolean , featuresMessage Boolean , isResponsible Boolean , position TEXT)"

    .line 101
    invoke-virtual {p1, p3}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 122
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_9

    .line 123
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    const/16 v2, 0xc

    .line 124
    new-array v2, v2, [Ljava/lang/Object;

    .line 128
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 129
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getUserId()Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v7, 0x2

    .line 130
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x3

    .line 131
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x4

    .line 132
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceIcon()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    .line 133
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getAppKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    .line 134
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->isOnline()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v3

    const/4 v7, 0x7

    .line 135
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    if-nez v8, :cond_5

    move-object v8, p2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getVideo()Ljava/lang/Boolean;

    move-result-object v8

    :goto_5
    aput-object v8, v2, v7

    const/16 v7, 0x8

    .line 136
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    if-nez v8, :cond_6

    move-object v8, p2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getVoice()Ljava/lang/Boolean;

    move-result-object v8

    :goto_6
    aput-object v8, v2, v7

    const/16 v7, 0x9

    .line 137
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    if-nez v8, :cond_7

    move-object v8, p2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getPstn()Ljava/lang/Boolean;

    move-result-object v8

    :goto_7
    aput-object v8, v2, v7

    const/16 v7, 0xa

    .line 138
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    if-nez v8, :cond_8

    move-object v8, p2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getMessage()Ljava/lang/Boolean;

    move-result-object v8

    :goto_8
    aput-object v8, v2, v7

    const/16 v7, 0xb

    .line 139
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getPosition()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    const-string v1, "insert into devices(uuid, userId, deviceName, deviceType, deviceIcon, appKey, online, featuresVideo, featuresVoice, featuresPstn, featuresMessage, position) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 124
    invoke-virtual {p1, v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_4

    .line 142
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_a
    return-void
.end method
