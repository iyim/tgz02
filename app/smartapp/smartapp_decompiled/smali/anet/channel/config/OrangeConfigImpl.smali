.class public Lanet/channel/config/OrangeConfigImpl;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Lanetwork/channel/config/IRemoteConfig;


# static fields
.field private static final NETWORK_ACCS_SESSION_BG_SWITCH:Ljava/lang/String; = "network_accs_session_bg_switch"

.field private static final NETWORK_AMDC_PRESET_HOSTS:Ljava/lang/String; = "network_amdc_preset_hosts"

.field private static final NETWORK_BIND_SERVICE_OPTIMISE:Ljava/lang/String; = "network_bind_service_optimize"

.field private static final NETWORK_BIZ_WHITE_LIST_BG:Ljava/lang/String; = "network_biz_white_list_bg"

.field private static final NETWORK_DELAY_RETRY_REQUEST_NO_NETWORK:Ljava/lang/String; = "network_delay_retry_request_no_network"

.field private static final NETWORK_EMPTY_SCHEME_HTTPS_SWITCH:Ljava/lang/String; = "network_empty_scheme_https_switch"

.field private static final NETWORK_FORBID_NEXT_LUANCH_OPTIMIZE:Ljava/lang/String; = "network_forbid_next_launch_optimize"

.field private static final NETWORK_GET_SESSION_ASYNC_SWITCH:Ljava/lang/String; = "network_get_session_async_switch"

.field private static final NETWORK_HORSE_RACE_SWITCH:Ljava/lang/String; = "network_horse_race_switch"

.field private static final NETWORK_HTTPS_SNI_ENABLE_SWITCH:Ljava/lang/String; = "network_https_sni_enable_switch"

.field private static final NETWORK_HTTP_CACHE_FLAG:Ljava/lang/String; = "network_http_cache_flag"

.field private static final NETWORK_HTTP_CACHE_SWITCH:Ljava/lang/String; = "network_http_cache_switch"

.field private static final NETWORK_IDLE_SESSION_CLOSE_SWITCH:Ljava/lang/String; = "network_idle_session_close_switch"

.field private static final NETWORK_IPV6_BLACKLIST_SWITCH:Ljava/lang/String; = "network_ipv6_blacklist_switch"

.field private static final NETWORK_IPV6_BLACKLIST_TTL:Ljava/lang/String; = "network_ipv6_blacklist_ttl"

.field private static final NETWORK_MONITOR_REQUESTS:Ljava/lang/String; = "network_monitor_requests"

.field private static final NETWORK_NORMAL_THREAD_POOL_EXECUTOR_SIZE:Ljava/lang/String; = "network_normal_thread_pool_executor_size"

.field private static final NETWORK_QUIC_ENABLE_SWITCH:Ljava/lang/String; = "network_quic_enable_switch"

.field private static final NETWORK_REQUEST_FORBIDDEN_BG:Ljava/lang/String; = "network_request_forbidden_bg"

.field private static final NETWORK_REQUEST_STATISTIC_SAMPLE_RATE:Ljava/lang/String; = "network_request_statistic_sample_rate"

.field private static final NETWORK_RESPONSE_BUFFER_SWITCH:Ljava/lang/String; = "network_response_buffer_switch"

.field private static final NETWORK_SDK_GROUP:Ljava/lang/String; = "networkSdk"

.field private static final NETWORK_SESSION_PRESET_HOSTS:Ljava/lang/String; = "network_session_preset_hosts"

.field private static final NETWORK_SPDY_ENABLE_SWITCH:Ljava/lang/String; = "network_spdy_enable_switch"

.field private static final NETWORK_URL_DEGRADE_LIST:Ljava/lang/String; = "network_url_degrade_list"

.field private static final NETWORK_URL_WHITE_LIST_BG:Ljava/lang/String; = "network_url_white_list_bg"

.field private static final NETWOTK_BG_FORBID_REQUEST_THRESHOLD:Ljava/lang/String; = "network_bg_forbid_request_threshold"

.field private static final TAG:Ljava/lang/String; = "awcn.OrangeConfigImpl"

.field private static final TNET_ENABLE_HEADER_CACHE:Ljava/lang/String; = "tnet_enable_header_cache"

.field private static mOrangeValid:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.taobao.orange.OrangeConfig"

    .line 59
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 60
    sput-boolean v0, Lanet/channel/config/OrangeConfigImpl;->mOrangeValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lanet/channel/config/OrangeConfigImpl;->mOrangeValid:Z

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public varargs getConfig([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 100
    sget-boolean v0, Lanet/channel/config/OrangeConfigImpl;->mOrangeValid:Z

    const-string v1, "awcn.OrangeConfigImpl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 101
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no orange sdk"

    invoke-static {v1, v0, v3, p1}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 106
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    aget-object v4, p1, v2

    const/4 v5, 0x1

    aget-object v5, p1, v5

    const/4 v6, 0x2

    aget-object p1, p1, v6

    invoke-virtual {v0, v4, v5, p1}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 108
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "get config failed!"

    invoke-static {v1, v2, v3, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v3
.end method

.method public onConfigUpdate(Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "true"

    const-string v1, "networkSdk"

    .line 115
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    .line 116
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "namespace"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 v5, 0x0

    const-string v6, "awcn.OrangeConfigImpl"

    const-string v7, "onConfigUpdate"

    invoke-static {v6, v7, v5, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 120
    :try_start_0
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_empty_scheme_https_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 121
    invoke-static {}, Lanet/channel/strategy/SchemeGuesser;->getInstance()Lanet/channel/strategy/SchemeGuesser;

    move-result-object v7

    invoke-virtual {v7, v6}, Lanet/channel/strategy/SchemeGuesser;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :catch_0
    :try_start_1
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_spdy_enable_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 129
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->setSpdyEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :catch_1
    :try_start_2
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_http_cache_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 137
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->setHttpCacheEnable(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    :catch_2
    :try_start_3
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_http_cache_flag"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 145
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lanetwork/channel/config/NetworkConfigCenter;->setCacheFlag(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 152
    :catch_3
    :cond_0
    :try_start_4
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_https_sni_enable_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 153
    invoke-static {v6}, Lanet/channel/AwcnConfig;->setHttpsSniEnable(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 160
    :catch_4
    :try_start_5
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_accs_session_bg_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 161
    invoke-static {v6}, Lanet/channel/AwcnConfig;->setAccsSessionCreateForbiddenInBg(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 167
    :catch_5
    :try_start_6
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_request_statistic_sample_rate"

    aput-object v7, v6, v4

    const-string v7, "10000"

    aput-object v7, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 168
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->setRequestStatisticSampleRate(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 174
    :catch_6
    :try_start_7
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_request_forbidden_bg"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 176
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 177
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->setBgRequestForbidden(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 184
    :catch_7
    :cond_1
    :try_start_8
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_url_white_list_bg"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->updateWhiteListMap(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 190
    :catch_8
    :try_start_9
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_biz_white_list_bg"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 192
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->updateBizWhiteList(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 199
    :catch_9
    :cond_2
    :try_start_a
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_amdc_preset_hosts"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 201
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->setAmdcPresetHosts(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 208
    :catch_a
    :cond_3
    :try_start_b
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_horse_race_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 209
    invoke-static {v6}, Lanet/channel/AwcnConfig;->setHorseRaceEnable(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 215
    :catch_b
    :try_start_c
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string/jumbo v7, "tnet_enable_header_cache"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 216
    invoke-static {v6}, Lanet/channel/AwcnConfig;->setTnetHeaderCacheEnable(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 222
    :catch_c
    :try_start_d
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_quic_enable_switch"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 224
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 225
    invoke-static {v6}, Lanet/channel/AwcnConfig;->setQuicEnable(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 232
    :catch_d
    :cond_4
    :try_start_e
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_response_buffer_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 233
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setResponseBufferEnable(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 239
    :catch_e
    :try_start_f
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_get_session_async_switch"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 241
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 242
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setGetSessionAsyncEnable(Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 249
    :catch_f
    :cond_5
    :try_start_10
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_bg_forbid_request_threshold"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_6

    const/4 v0, 0x0

    .line 255
    :cond_6
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setBgForbidRequestThreshold(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 262
    :catch_10
    :cond_7
    :try_start_11
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_normal_thread_pool_executor_size"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 265
    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->setNormalExecutorPoolSize(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 272
    :catch_11
    :cond_8
    :try_start_12
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_idle_session_close_switch"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 274
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 275
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setIdleSessionCloseEnable(Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 282
    :catch_12
    :cond_9
    :try_start_13
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_monitor_requests"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 284
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setMonitorRequestList(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 291
    :catch_13
    :cond_a
    :try_start_14
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_session_preset_hosts"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 293
    invoke-static {v0}, Lanet/channel/AwcnConfig;->registerPresetSessions(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 300
    :catch_14
    :cond_b
    :try_start_15
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_ipv6_blacklist_switch"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 302
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 303
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setIpv6BlackListEnable(Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 308
    :catch_15
    :cond_c
    :try_start_16
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_ipv6_blacklist_ttl"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 310
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 311
    invoke-static {v6, v7}, Lanet/channel/AwcnConfig;->setIpv6BlackListTtl(J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 318
    :catch_16
    :cond_d
    :try_start_17
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_url_degrade_list"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 320
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setDegradeRequestList(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    .line 328
    :catch_17
    :cond_e
    :try_start_18
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_delay_retry_request_no_network"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 330
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 331
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setRequestDelayRetryForNoNetwork(Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    .line 338
    :catch_18
    :cond_f
    :try_start_19
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_bind_service_optimize"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 340
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 341
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setBindServiceOptimize(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    .line 348
    :catch_19
    :cond_10
    :try_start_1a
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string p1, "network_forbid_next_launch_optimize"

    aput-object p1, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 350
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 351
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NEXT_LAUNCH_FORBID"

    .line 352
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 353
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :cond_11
    return-void
.end method

.method public register()V
    .locals 7

    const-string v0, "networkSdk"

    .line 69
    sget-boolean v1, Lanet/channel/config/OrangeConfigImpl;->mOrangeValid:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "awcn.OrangeConfigImpl"

    if-nez v1, :cond_0

    .line 70
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "no orange sdk"

    invoke-static {v4, v1, v3, v0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 75
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lanet/channel/config/OrangeConfigImpl$1;

    invoke-direct {v6, p0}, Lanet/channel/config/OrangeConfigImpl$1;-><init>(Lanet/channel/config/OrangeConfigImpl;)V

    invoke-virtual {v1, v5, v6}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    const-string v1, "network_empty_scheme_https_switch"

    const-string/jumbo v5, "true"

    .line 82
    filled-new-array {v0, v1, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lanet/channel/config/OrangeConfigImpl;->getConfig([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "register fail"

    invoke-static {v4, v2, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public unRegister()V
    .locals 4

    .line 90
    sget-boolean v0, Lanet/channel/config/OrangeConfigImpl;->mOrangeValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "awcn.OrangeConfigImpl"

    const-string v3, "no orange sdk"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    const-string v1, "networkSdk"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/orange/OrangeConfig;->unregisterListener([Ljava/lang/String;)V

    return-void
.end method
