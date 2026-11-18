.class Lcom/uc/rmbsdk/export/RmbStatsHelper;
.super Ljava/lang/Object;
.source "RmbStatsHelper.java"


# static fields
.field private static final ACTION_BM:Ljava/lang/String; = "rmb_bm"

.field private static final ACTION_BM_ERR:Ljava/lang/String; = "rmb_bm_err"

.field private static final ACTION_SYNC:Ljava/lang/String; = "rmb_sync"

.field private static final ACTION_SYNC_ERROR:Ljava/lang/String; = "rmb_sync_err"

.field private static final ACTION_UPAAS_INFO:Ljava/lang/String; = "upaas_info"

.field static final BM_ERR_TYPE_ONLINE_WITHOUT_REGISTER:I = 0x1

.field private static final KEY_BIZ_ID:Ljava/lang/String; = "biz_id"

.field private static final KEY_CHANNEL_COUNT:Ljava/lang/String; = "channel_count"

.field private static final KEY_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field private static final KEY_CHANNEL_IDS:Ljava/lang/String; = "channel_ids"

.field private static final KEY_CURR_NET_STATE:Ljava/lang/String; = "curr_net_state"

.field private static final KEY_CURR_NET_TYPE:Ljava/lang/String; = "curr_net_type"

.field private static final KEY_ERR_MSG:Ljava/lang/String; = "err_msg"

.field private static final KEY_ERR_TYPE:Ljava/lang/String; = "err_type"

.field private static final KEY_QUEUE_ID:Ljava/lang/String; = "queue_id"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_SYNC_TYPE:Ljava/lang/String; = "sync_type"

.field private static final KEY_UPAAS_STATE:Ljava/lang/String; = "upaas_state"

.field private static final KEY_USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static buildCommonInfo(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getUpaasState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "upaas_state"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .line 129
    :try_start_0
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static isNetworkConnected()Z
    .locals 2

    .line 140
    :try_start_0
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static statBM(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "biz_id"

    .line 87
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "user_id"

    .line 88
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "channel_count"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "channel_ids"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->buildCommonInfo(Ljava/util/HashMap;)V

    .line 94
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object p0

    const-string/jumbo p1, "rmb_bm"

    invoke-interface {p0, p1, v0}, Lcom/uc/rmbsdk/export/IRmbInterface;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static statBMError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "err_type"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "biz_id"

    .line 103
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "user_id"

    .line 104
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "channel_id"

    .line 105
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {v0}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->buildCommonInfo(Ljava/util/HashMap;)V

    .line 109
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object p0

    const-string/jumbo p1, "rmb_bm_err"

    invoke-interface {p0, p1, v0}, Lcom/uc/rmbsdk/export/IRmbInterface;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static statSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "biz_id"

    .line 71
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "channel_id"

    .line 72
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "queue_id"

    .line 73
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "user_id"

    .line 74
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 77
    invoke-static {v0}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->buildCommonInfo(Ljava/util/HashMap;)V

    .line 79
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object p0

    const-string/jumbo p1, "rmb_sync"

    invoke-interface {p0, p1, v0}, Lcom/uc/rmbsdk/export/IRmbInterface;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static statSyncError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "sync_type"

    .line 55
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "biz_id"

    .line 56
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "channel_id"

    .line 57
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "status"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "err_msg"

    .line 59
    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {v0}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->buildCommonInfo(Ljava/util/HashMap;)V

    .line 63
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object p0

    const-string/jumbo p1, "rmb_sync_err"

    invoke-interface {p0, p1, v0}, Lcom/uc/rmbsdk/export/IRmbInterface;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static statUpaasStateChanged(I)V
    .locals 3

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "upaas_state"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "curr_net_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v1, "curr_net_state"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object p0

    const-string/jumbo v1, "upaas_info"

    invoke-interface {p0, v1, v0}, Lcom/uc/rmbsdk/export/IRmbInterface;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
