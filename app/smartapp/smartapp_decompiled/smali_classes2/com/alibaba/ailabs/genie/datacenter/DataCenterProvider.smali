.class public Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;
.super Landroid/content/ContentProvider;
.source "DataCenterProvider.java"


# static fields
.field public static final AUTOHORITY:Ljava/lang/String; = "com.alibaba.ailabs.genie.datacenter.DataCenterProvider"

.field public static final CHILD_TTS_INFO_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/child_tts_info"

.field public static final CODE_CHILD_TTS_INFO:I = 0x6

.field public static final CODE_DEVICE_INFO:I = 0x1

.field public static final CODE_DND_MODE_INFO:I = 0x2

.field public static final CODE_GESTURE_INFO:I = 0x3

.field public static final CODE_SWITCH_INFO:I = 0x4

.field public static final CODE_TTS_INFO:I = 0x5

.field public static final DEVICE_INFO_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/device_info"

.field public static final GESTURE_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

.field public static final SWITCH_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/switch_info"

.field private static final TAG:Ljava/lang/String; = "DataCenterProvider"

.field public static final TTS_INFO_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/tts_info"

.field private static final mMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field mDateCenterDbHelper:Lcom/alibaba/ailabs/genie/datacenter/DateCenterDBHelper;

.field mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mSettingRepository:Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 57
    sget-object v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.alibaba.ailabs.genie.datacenter.DataCenterProvider"

    const-string v2, "device_info"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v2, "dnd_mode_info"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v2, "gesturerecognize"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v2, "switch_info"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v2, "tts_info"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v2, "child_tts_info"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDateCenterDbHelper:Lcom/alibaba/ailabs/genie/datacenter/DateCenterDBHelper;

    .line 33
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 187
    sget-object v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "child_tts_info"

    goto :goto_0

    :pswitch_1
    const-string p1, "tts_info"

    goto :goto_0

    :pswitch_2
    const-string p1, "switch_info"

    goto :goto_0

    :pswitch_3
    const-string p1, "gesturerecognize"

    goto :goto_0

    :pswitch_4
    const-string p1, "dnd_mode_info"

    goto :goto_0

    :pswitch_5
    const-string p1, "device_info"

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private routeToOthers(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 7

    .line 215
    sget-object v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, " value: "

    const-string v3, "key : "

    const/4 v4, 0x1

    const-string v5, "DataCenterProvider"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch info size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;-><init>()V

    const-string v1, "switch_key"

    .line 239
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->setSwitchKey(Ljava/lang/String;)V

    const-string v1, "switch_value"

    .line 240
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->setSwitchValue(I)V

    .line 242
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mSettingRepository:Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, v2}, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;->updateSwitchStatus(Landroid/content/Context;Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 245
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_3

    .line 217
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gesture info size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p1, "isopen"

    .line 221
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_5

    const-string p1, "isauthed"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_5

    .line 222
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatusAPI;->isGestureAuth(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 223
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mContext:Landroid/content/Context;

    const-string p2, "yunostv_settings://gesture_auth"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/RouterUtils;->openActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 226
    :cond_4
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/SystemPropertiesUtil;->isOpenCamera()Z

    move-result p1

    if-nez p1, :cond_5

    .line 227
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mContext:Landroid/content/Context;

    const-string p2, "yunostv_settings://gesture_came"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/RouterUtils;->openActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x0

    :cond_6
    :goto_3
    return v4
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyBatch operations size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataCenterProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 260
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    .line 261
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 164
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

    const-string v1, "DataCenterProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p2

    .line 167
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupport URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 178
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

    const-string v0, "DataCenterProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .line 98
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " insert table uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " name is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenterProvider"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->routeToOthers(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "routeToOthers = false"

    .line 101
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 106
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mContext:Landroid/content/Context;

    const-string v0, "DataCenterProvider"

    const-string v1, "create db for DataCenterProvider"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/DateCenterDBHelper;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/datacenter/DateCenterDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDateCenterDbHelper:Lcom/alibaba/ailabs/genie/datacenter/DateCenterDBHelper;

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDateCenterDbHelper:Lcom/alibaba/ailabs/genie/datacenter/DateCenterDBHelper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/datacenter/DateCenterDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    new-instance v0, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mSettingRepository:Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 124
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 126
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
    .locals 4

    .line 143
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

    const-string v1, "DataCenterProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->routeToOthers(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "routeToOthers = false"

    .line 150
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return v2

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupport URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
