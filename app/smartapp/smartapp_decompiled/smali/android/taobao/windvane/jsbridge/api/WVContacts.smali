.class public Landroid/taobao/windvane/jsbridge/api/WVContacts;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;
    }
.end annotation


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PHONE:Ljava/lang/String; = "phone"

.field private static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WVContacts"


# instance fields
.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "display_name"

    const-string v1, "data1"

    .line 46
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->PHONES_PROJECTION:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/jsbridge/api/WVContacts;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVContacts;->choose(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Landroid/taobao/windvane/jsbridge/api/WVContacts;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVContacts;->find(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Landroid/taobao/windvane/jsbridge/api/WVContacts;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/taobao/windvane/jsbridge/api/WVContacts;->authStatus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Landroid/taobao/windvane/jsbridge/api/WVContacts;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private authStatus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 1

    .line 204
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVContacts$7;

    invoke-direct {v0, p0, p1}, Landroid/taobao/windvane/jsbridge/api/WVContacts$7;-><init>(Landroid/taobao/windvane/jsbridge/api/WVContacts;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 229
    invoke-virtual {v0, p1}, Landroid/taobao/windvane/jsbridge/api/WVContacts$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private choose(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2

    .line 145
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 146
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0xfa3

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open pick activity fail, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WVContacts"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    :cond_0
    :goto_0
    return-void
.end method

.method private find(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 8

    const-string v0, "phone"

    const-string v1, "name"

    const-string v2, "WVContacts"

    const/4 v3, 0x0

    .line 167
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "filter"

    .line 168
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 170
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :try_start_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    move-object p1, v3

    move-object v5, p1

    goto :goto_0

    :catch_0
    move-object v5, v3

    .line 174
    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find contacts when parse params to JSON error, params="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    .line 176
    :goto_0
    invoke-direct {p0, v3, v5, p1}, Landroid/taobao/windvane/jsbridge/api/WVContacts;->getPhoneContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "find contacts failed"

    .line 178
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 182
    :cond_1
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v3}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 183
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 185
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;

    .line 186
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 187
    iget-object v7, v5, Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    iget-object v5, v5, Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put contacts error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "contacts"

    .line 194
    invoke-virtual {v3, p1, v4}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 195
    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method

.method private getPhoneContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 267
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v4

    const-string v5, "WVContacts"

    if-eqz v4, :cond_0

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contactId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " filterName: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " filterNumber: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 275
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_1

    const-string v2, "_id= ?"

    .line 277
    new-array v3, v9, [Ljava/lang/String;

    aput-object v0, v3, v8

    move-object v13, v2

    :goto_0
    move-object v14, v3

    goto/16 :goto_1

    .line 278
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "%"

    if-nez v0, :cond_2

    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "display_name like ? AND data1 like ?"

    const/4 v10, 0x2

    .line 281
    new-array v10, v10, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v9

    move-object v13, v0

    move-object v14, v10

    goto :goto_1

    .line 282
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "display_name like ?"

    .line 284
    new-array v3, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v8

    move-object v13, v0

    goto :goto_0

    :cond_3
    const-string v2, "data1 like ?"

    .line 287
    new-array v0, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    move-object v14, v0

    move-object v13, v2

    .line 289
    :goto_1
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Landroid/taobao/windvane/jsbridge/api/WVContacts;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_5

    :try_start_2
    const-string v0, "cursor is null."

    .line 292
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_4

    .line 314
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 317
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v6

    .line 296
    :cond_5
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find contacts record "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 298
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 301
    :cond_6
    new-instance v7, Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;

    invoke-direct {v7, v1, v6}, Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;-><init>(Landroid/taobao/windvane/jsbridge/api/WVContacts;Landroid/taobao/windvane/jsbridge/api/WVContacts$1;)V

    .line 302
    iput-object v0, v7, Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;->name:Ljava/lang/String;

    .line 303
    iput-object v3, v7, Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;->number:Ljava/lang/String;

    .line 304
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displayName: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " phoneNumber: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    .line 314
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 317
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_4
    return-object v4

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    :goto_5
    move-object v2, v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v2, v6

    .line 310
    :goto_6
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query phone error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_a

    .line 314
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 317
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_7
    return-object v6

    :catchall_1
    move-exception v0

    move-object v6, v2

    goto :goto_5

    :goto_8
    if-eqz v6, :cond_b

    .line 314
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v3, v0

    .line 317
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    :cond_b
    :goto_9
    goto :goto_b

    :goto_a
    throw v2

    :goto_b
    goto :goto_a
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 3

    const-string v0, "choose"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.permission.READ_CONTACTS"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mContext:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVContacts$2;

    invoke-direct {v0, p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVContacts$2;-><init>(Landroid/taobao/windvane/jsbridge/api/WVContacts;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance p2, Landroid/taobao/windvane/jsbridge/api/WVContacts$1;

    invoke-direct {p2, p0, p3}, Landroid/taobao/windvane/jsbridge/api/WVContacts$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVContacts;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 66
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :cond_0
    const-string v0, "find"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :try_start_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mContext:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVContacts$4;

    invoke-direct {v0, p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVContacts$4;-><init>(Landroid/taobao/windvane/jsbridge/api/WVContacts;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 78
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance p2, Landroid/taobao/windvane/jsbridge/api/WVContacts$3;

    invoke-direct {p2, p0, p3}, Landroid/taobao/windvane/jsbridge/api/WVContacts$3;-><init>(Landroid/taobao/windvane/jsbridge/api/WVContacts;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 88
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    const-string v0, "authStatus"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 100
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "autoAskAuth"

    .line 101
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "authStatus when parse params to JSON error, params="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVContacts"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_2

    .line 106
    invoke-direct {p0, p3}, Landroid/taobao/windvane/jsbridge/api/WVContacts;->authStatus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_1

    .line 109
    :cond_2
    :try_start_3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mContext:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance p2, Landroid/taobao/windvane/jsbridge/api/WVContacts$6;

    invoke-direct {p2, p0, p3}, Landroid/taobao/windvane/jsbridge/api/WVContacts$6;-><init>(Landroid/taobao/windvane/jsbridge/api/WVContacts;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 110
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance p2, Landroid/taobao/windvane/jsbridge/api/WVContacts$5;

    invoke-direct {p2, p0, p3}, Landroid/taobao/windvane/jsbridge/api/WVContacts$5;-><init>(Landroid/taobao/windvane/jsbridge/api/WVContacts;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 120
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 134
    :catch_1
    :goto_1
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object p1

    const/16 p2, 0xbc6

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xfa3

    if-ne p1, v0, :cond_6

    .line 234
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    const-string v0, "WVContacts"

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_3

    .line 237
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    .line 243
    invoke-direct {p0, p1, p2, p2}, Landroid/taobao/windvane/jsbridge/api/WVContacts;->getPhoneContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 244
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 249
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;

    .line 250
    iget-object p2, p1, Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;->number:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 251
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 252
    iget-object p3, p1, Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;->name:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p2, v0, p3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object p1, p1, Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;->number:Ljava/lang/String;

    const-string p3, "phone"

    invoke-virtual {p2, p3, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "contact result is empty"

    .line 245
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "contact data is null"

    .line 238
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "choose contact failed"

    .line 260
    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_5
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVContacts;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_6
    return-void
.end method
