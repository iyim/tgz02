.class Lcom/uc/rmbsdk/export/RmbDataHandler;
.super Ljava/lang/Object;
.source "RmbDataHandler.java"


# static fields
.field private static final ACK:Ljava/lang/String; = "ack"

.field private static final ACK_TYPE:Ljava/lang/String; = "ack_type"

.field private static final APP_ID:Ljava/lang/String; = "appid"

.field private static final CB_INFO:Ljava/lang/String; = "cb_info"

.field private static final CMD_NOTIFY_DATA:I = 0x0

.field private static final CMD_ONLY_NOTIFY:I = 0x1

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final MSG:Ljava/lang/String; = "msg"

.field private static final MSG_TYPE:Ljava/lang/String; = "msg_type"

.field private static final PUSH_ID:Ljava/lang/String; = "pushid"

.field private static final RECEIPT_STATUS_DUPLICATE_PUSH_ID:I = 0x1

.field private static final RECEIPT_STATUS_INVALID_APP_ID:I = 0x2

.field private static final RECEIPT_STATUS_INVALID_CHANNEL_ID:I = 0x3

.field private static final RECEIPT_STATUS_INVALID_RECEIVE_DATA:I = 0x4

.field private static final RECEIPT_STATUS_OK:I = 0x0

.field private static final RMB_TYPE_DEFAULT:I = 0x0

.field private static final RMB_TYPE_SORTED:I = 0x1

.field private static final SERVICE_ID:Ljava/lang/String; = "serviceid"

.field private static final STATUS:Ljava/lang/String; = "status"


# instance fields
.field private mInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/uc/rmbsdk/export/RmbBizInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReceivedPushId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mInfos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mReceivedPushId:Ljava/util/Set;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mUIThreadHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 69
    new-instance v0, Lcom/uc/rmbsdk/export/RmbDataHandler$1;

    invoke-direct {v0, p0}, Lcom/uc/rmbsdk/export/RmbDataHandler$1;-><init>(Lcom/uc/rmbsdk/export/RmbDataHandler;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/uc/rmbsdk/export/RmbDataHandler;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/uc/rmbsdk/export/RmbDataHandler;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mUIThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private buildDefaultReceiptData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 134
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "status"

    .line 135
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pushid"

    .line 136
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ack_type"

    .line 137
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "app_id"

    .line 139
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "channel_id"

    .line 140
    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ds_type"

    .line 141
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uc/rmbsdk/export/RmbManager;->getDSType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ds"

    .line 142
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "cb_info"

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo p2, "ret"

    .line 144
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    sget-boolean p1, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "RMB-SDK"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "receipt: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method private buildSortedReceiptData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 158
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "status"

    .line 159
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pushid"

    .line 160
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ack_type"

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "app_id"

    .line 163
    invoke-virtual {p3, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "biz_id"

    .line 164
    invoke-virtual {p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "channel_id"

    .line 165
    invoke-virtual {p3, p4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "ds_type"

    .line 166
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/uc/rmbsdk/export/RmbManager;->getDSType()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "ds"

    .line 167
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    invoke-static {p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "cb_info"

    invoke-virtual {p3, p4, p11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const-string/jumbo p1, "queue_id"

    .line 170
    invoke-virtual {p3, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "user_id"

    .line 171
    invoke-virtual {p3, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "seq"

    .line 172
    invoke-static {p9, p10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo p1, "ret"

    .line 174
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    sget-boolean p1, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "RMB-SDK"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "receipt: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method addRmbBizInfo(Ljava/lang/String;Lcom/uc/rmbsdk/export/RmbBizInfo;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getAllRmbBizInfo()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/uc/rmbsdk/export/RmbBizInfo;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getRmbBizInfo(Ljava/lang/String;)Lcom/uc/rmbsdk/export/RmbBizInfo;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uc/rmbsdk/export/RmbBizInfo;

    return-object p1
.end method

.method handleReceivedData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 29

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    .line 187
    sget-boolean v1, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReceivedData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RMB-SDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 194
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "pushid"

    .line 195
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "appid"

    .line 196
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v0, "serviceid"

    .line 198
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "msg"

    .line 199
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "msg_type"

    .line 200
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string v2, "data"

    .line 201
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move-object v9, v2

    const/4 v15, 0x1

    if-eqz v0, :cond_5

    const-string v2, "ack"

    .line 202
    invoke-virtual {v0, v2, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_c

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const-string v16, ""

    if-eqz v0, :cond_6

    :try_start_1
    const-string v4, "cb_info"

    .line 203
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_4

    :cond_6
    move-object/from16 v17, v16

    .line 209
    :goto_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v18, 0x4

    if-nez v0, :cond_8

    .line 210
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 211
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 212
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v0, 0x4

    .line 217
    :goto_6
    iget-object v4, v13, Lcom/uc/rmbsdk/export/RmbDataHandler;->mReceivedPushId:Ljava/util/Set;

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v0, 0x1

    .line 222
    :cond_9
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uc/rmbsdk/export/RmbManager;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v0, 0x2

    .line 226
    :cond_a
    iget-object v4, v13, Lcom/uc/rmbsdk/export/RmbDataHandler;->mInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/uc/rmbsdk/export/RmbBizInfo;

    const/4 v4, 0x3

    if-nez v7, :cond_b

    const/4 v0, 0x3

    :cond_b
    if-eqz v0, :cond_d

    if-eqz v2, :cond_c

    move-object/from16 v1, p0

    move v2, v0

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, v17

    .line 236
    invoke-direct/range {v1 .. v7}, Lcom/uc/rmbsdk/export/RmbDataHandler;->buildDefaultReceiptData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v14, v0}, Lcom/alibaba/mbg/upaas/UpaasManager;->sendRmbReceipt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 239
    :cond_c
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object v2

    .line 243
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/rmbsdk/export/RmbManager;->getDSType()Ljava/lang/String;

    move-result-object v7

    .line 244
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object v8

    move v3, v0

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    .line 239
    invoke-interface/range {v2 .. v8}, Lcom/uc/rmbsdk/export/IRmbInterface;->receipt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_c

    :goto_7
    return-void

    :cond_d
    if-ne v3, v15, :cond_19

    const/4 v2, -0x1

    .line 255
    :try_start_2
    iget-object v3, v7, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v5, -0x1

    if-nez v3, :cond_17

    iget-object v3, v7, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_b

    if-nez v3, :cond_17

    .line 258
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "cmd"

    .line 259
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_b

    :try_start_4
    const-string/jumbo v2, "user_id"

    .line 260
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_b

    .line 262
    :try_start_5
    iget-object v2, v7, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v2, "queue_id"

    .line 265
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_b

    .line 267
    :try_start_6
    iget-object v2, v7, Lcom/uc/rmbsdk/export/RmbBizInfo;->ackInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_b

    if-eqz v2, :cond_e

    .line 268
    :try_start_7
    iget-object v2, v7, Lcom/uc/rmbsdk/export/RmbBizInfo;->ackInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_e
    move-wide/from16 v19, v5

    if-ne v9, v15, :cond_f

    .line 272
    invoke-virtual {v13, v12, v4}, Lcom/uc/rmbsdk/export/RmbDataHandler;->trySync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_d

    :cond_f
    if-nez v9, :cond_15

    :try_start_8
    const-string v2, "msgs"

    .line 275
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_b

    move-object/from16 p2, v4

    move-wide v4, v5

    const/4 v6, 0x0

    .line 276
    :goto_8
    :try_start_9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_b

    if-ge v6, v2, :cond_13

    .line 277
    :try_start_a
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v15, "seq"

    .line 278
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_b

    cmp-long v15, v21, v19

    if-gtz v15, :cond_10

    move-object/from16 v15, p2

    move/from16 p2, v0

    move-object/from16 v26, v3

    move/from16 v28, v6

    move-object/from16 v25, v7

    move-object v14, v8

    move/from16 v21, v9

    goto/16 :goto_b

    :cond_10
    cmp-long v15, v21, v4

    if-lez v15, :cond_11

    move-wide/from16 v23, v21

    const/4 v15, 0x1

    goto :goto_9

    :cond_11
    move v15, v1

    move-wide/from16 v23, v4

    :goto_9
    :try_start_b
    const-string v1, "content"

    .line 288
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 289
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 290
    iget-object v5, v13, Lcom/uc/rmbsdk/export/RmbDataHandler;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/uc/rmbsdk/export/RmbDataHandler$2;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v26, v3

    move-object v3, v11

    move-object v13, v4

    move/from16 v27, v15

    move-object/from16 v15, p2

    move-object v4, v12

    move/from16 p2, v0

    move-object v0, v5

    move-object v5, v10

    move/from16 v28, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v7

    move-object v14, v8

    move-wide/from16 v7, v21

    move/from16 v21, v9

    move-object/from16 v9, v25

    :try_start_c
    invoke-direct/range {v1 .. v9}, Lcom/uc/rmbsdk/export/RmbDataHandler$2;-><init>(Lcom/uc/rmbsdk/export/RmbDataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/uc/rmbsdk/export/RmbBizInfo;)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_a

    :catch_0
    move-exception v0

    move-wide/from16 v5, v23

    move-object/from16 v13, v25

    goto/16 :goto_10

    :cond_12
    move-object/from16 v26, v3

    move/from16 v28, v6

    move-object/from16 v25, v7

    move-object v14, v8

    move/from16 v21, v9

    move/from16 v27, v15

    move-object/from16 v15, p2

    move/from16 p2, v0

    :goto_a
    move-wide/from16 v4, v23

    move/from16 v1, v27

    :goto_b
    add-int/lit8 v6, v28, 0x1

    move-object/from16 v13, p0

    move/from16 v0, p2

    move-object v8, v14

    move-object/from16 p2, v15

    move/from16 v9, v21

    move-object/from16 v7, v25

    move-object/from16 v3, v26

    const/4 v15, 0x1

    move-object/from16 v14, p1

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v15, p2

    move-object v14, v8

    move/from16 v21, v9

    move-object v13, v7

    move-wide/from16 v5, v23

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object/from16 v15, p2

    move-object v14, v8

    move/from16 v21, v9

    move-wide v5, v4

    move-object v13, v7

    goto/16 :goto_10

    :cond_13
    move-object/from16 v15, p2

    move/from16 p2, v0

    move-object/from16 v25, v7

    move-object v14, v8

    move/from16 v21, v9

    if-eqz v1, :cond_14

    move-object/from16 v13, v25

    .line 302
    :try_start_d
    invoke-virtual {v13, v15, v4, v5}, Lcom/uc/rmbsdk/export/RmbBizInfo;->updateAckInfo(Ljava/lang/String;J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_14
    move-object/from16 v13, v25

    goto :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v15, p2

    move-object v13, v7

    move-object v14, v8

    move/from16 v21, v9

    :goto_c
    move-wide v5, v4

    goto/16 :goto_10

    :cond_15
    :goto_d
    move/from16 p2, v0

    move-object v15, v4

    move-object v13, v7

    move-object v14, v8

    move/from16 v21, v9

    move-wide v4, v5

    :goto_e
    move/from16 v2, p2

    move-object v9, v14

    move-object v8, v15

    move/from16 v3, v21

    move-wide v14, v4

    goto/16 :goto_11

    :catch_5
    move-exception v0

    move-object v15, v4

    move-object v13, v7

    move-object v14, v8

    move/from16 v21, v9

    goto :goto_10

    :cond_16
    move-object v13, v7

    move-object v14, v8

    move/from16 v21, v9

    .line 263
    :try_start_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid user_id, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_b

    :catch_6
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    move-object v13, v7

    move-object v14, v8

    move/from16 v21, v9

    :goto_f
    move-object/from16 v15, v16

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v13, v7

    move/from16 v21, v9

    move-object/from16 v14, v16

    move-object v15, v14

    goto :goto_10

    :catch_9
    move-exception v0

    move-object v13, v7

    move-object/from16 v14, v16

    move-object v15, v14

    const/16 v21, -0x1

    .line 306
    :goto_10
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v14

    move-object v8, v15

    move/from16 v3, v21

    const/4 v2, 0x4

    move-wide v14, v5

    goto :goto_11

    :cond_17
    move-object v13, v7

    move-wide v14, v5

    move-object/from16 v8, v16

    move-object v9, v8

    const/4 v2, 0x3

    const/4 v3, -0x1

    .line 313
    :goto_11
    iget-object v0, v13, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    if-nez v0, :cond_18

    move-object/from16 v6, v16

    goto :goto_12

    :cond_18
    iget-object v0, v13, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    move-object v6, v0

    :goto_12
    move-object/from16 v1, p0

    move-object v4, v10

    move-object v5, v11

    move-object v7, v12

    move-wide v10, v14

    move-object/from16 v12, v17

    .line 314
    invoke-direct/range {v1 .. v12}, Lcom/uc/rmbsdk/export/RmbDataHandler;->buildSortedReceiptData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p1

    .line 315
    invoke-static {v8, v0}, Lcom/alibaba/mbg/upaas/UpaasManager;->sendRmbReceipt(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, p0

    goto/16 :goto_16

    :cond_19
    move/from16 p2, v0

    move-object v13, v7

    move-object v8, v14

    if-eqz v2, :cond_1a

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, v17

    .line 319
    invoke-direct/range {v1 .. v7}, Lcom/uc/rmbsdk/export/RmbDataHandler;->buildDefaultReceiptData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v8, v0}, Lcom/alibaba/mbg/upaas/UpaasManager;->sendRmbReceipt(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    move-object/from16 v8, p0

    goto :goto_14

    .line 322
    :cond_1a
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object v2

    .line 326
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getDSType()Ljava/lang/String;

    move-result-object v7

    .line 327
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object v8

    move/from16 v3, p2

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    .line 322
    invoke-interface/range {v2 .. v8}, Lcom/uc/rmbsdk/export/IRmbInterface;->receipt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_13

    .line 329
    :goto_14
    :try_start_10
    iget-object v0, v8, Lcom/uc/rmbsdk/export/RmbDataHandler;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v14, Lcom/uc/rmbsdk/export/RmbDataHandler$3;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v4, v11

    move-object v5, v12

    move-object v6, v10

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/uc/rmbsdk/export/RmbDataHandler$3;-><init>(Lcom/uc/rmbsdk/export/RmbDataHandler;Lcom/uc/rmbsdk/export/RmbBizInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_16

    :catch_a
    move-exception v0

    goto :goto_15

    :catch_b
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_15

    :catch_c
    move-exception v0

    move-object v8, v13

    .line 337
    :goto_15
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_16
    return-void
.end method

.method removeRmbBizInfo(Ljava/lang/String;)Lcom/uc/rmbsdk/export/RmbBizInfo;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uc/rmbsdk/export/RmbBizInfo;

    return-object p1
.end method

.method trySync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uc/rmbsdk/export/RmbBizInfo;

    if-eqz p1, :cond_2

    .line 357
    iget-boolean v0, p1, Lcom/uc/rmbsdk/export/RmbBizInfo;->isSyncRunning:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/uc/rmbsdk/export/RmbBizInfo;->disableSync:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p1, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 364
    :cond_1
    new-instance v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/uc/rmbsdk/export/RmbDataHandler$4;-><init>(Lcom/uc/rmbsdk/export/RmbDataHandler;Lcom/uc/rmbsdk/export/RmbBizInfo;Ljava/lang/String;)V

    .line 435
    iget-object p2, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 436
    iput-boolean p2, p1, Lcom/uc/rmbsdk/export/RmbBizInfo;->isSyncRunning:Z

    :cond_2
    :goto_0
    return-void
.end method

.method trySyncAll()V
    .locals 3

    .line 345
    invoke-virtual {p0}, Lcom/uc/rmbsdk/export/RmbDataHandler;->getAllRmbBizInfo()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/rmbsdk/export/RmbBizInfo;

    .line 346
    iget-object v1, v1, Lcom/uc/rmbsdk/export/RmbBizInfo;->channelId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/uc/rmbsdk/export/RmbDataHandler;->trySync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateRmbBizInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler;->mInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uc/rmbsdk/export/RmbBizInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 114
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1, p3, p2, p4}, Lcom/uc/rmbsdk/export/RmbBizInfo;->updateUserBizInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method
