.class Lcom/uc/rmbsdk/export/BMHandler;
.super Ljava/lang/Object;
.source "BMHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final BIZ_ID:Ljava/lang/String; = "biz_id"

.field private static final BIZ_INFO:Ljava/lang/String; = "biz_info"

.field private static final CHANNEL_IDS:Ljava/lang/String; = "channel_ids"

.field private static final DS:Ljava/lang/String; = "ds"

.field private static final DS_TYPE:Ljava/lang/String; = "ds_type"

.field private static final SYNC_TYPE:Ljava/lang/String; = "sync_type"

.field private static final TAG:Ljava/lang/String; = "RMB-SDK"

.field private static final UPTIME:Ljava/lang/String; = "uptime"

.field private static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method batchSync(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/uc/rmbsdk/export/RmbBizInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0, v0}, Lcom/uc/rmbsdk/export/BMHandler;->batchSync(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method batchSync(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/uc/rmbsdk/export/RmbBizInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;

    invoke-direct {v1, p0, p2}, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;-><init>(Lcom/uc/rmbsdk/export/BMHandler;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uc/rmbsdk/export/RmbBizInfo;

    .line 77
    iget-object p3, p2, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p2, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    iget-object p3, p2, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;

    if-nez p3, :cond_3

    .line 80
    new-instance p3, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;

    iget-object v1, p2, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    invoke-direct {p3, p0, v1}, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;-><init>(Lcom/uc/rmbsdk/export/BMHandler;Ljava/lang/String;)V

    .line 81
    iget-object v1, p2, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_3
    iget-object p3, p3, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;->channels:Ljava/util/HashSet;

    iget-object p2, p2, Lcom/uc/rmbsdk/export/RmbBizInfo;->channelId:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 93
    :cond_5
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "app_id"

    .line 94
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uc/rmbsdk/export/RmbManager;->getAppId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ds_type"

    .line 95
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uc/rmbsdk/export/RmbManager;->getDSType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ds"

    .line 96
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p2, "sync_type"

    const/4 p3, 0x2

    .line 97
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 99
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;

    .line 102
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "user_id"

    .line 103
    iget-object v4, v0, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "biz_id"

    .line 104
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 106
    iget-object v4, v0, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;->channels:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 107
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_6
    const-string v4, "channel_ids"

    .line 109
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 112
    iget-object v0, v0, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;->userId:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->statBM(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_1

    :cond_7
    const-string p3, "biz_info"

    .line 114
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p2, "uptime"

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    sget-boolean p2, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz p2, :cond_8

    const-string p2, "RMB-SDK"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bm batch sync:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string p2, "POST"

    const-string p3, "business"

    .line 119
    invoke-static {p2, p3, p1}, Lcom/alibaba/mbg/upaas/UpaasManager;->sendRequestViaUpaas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method
