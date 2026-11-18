.class public Lcom/alipay/apmobilesecuritysdk/model/CustomInfoModel;
.super Ljava/lang/Object;
.source "CustomInfoModel.java"


# static fields
.field public static final AC1_TID:Ljava/lang/String; = "AC1"

.field public static final AC2_UTDID:Ljava/lang/String; = "AC2"

.field public static final AC3_UMID:Ljava/lang/String; = "AC3"

.field public static final AC4_RANDOM:Ljava/lang/String; = "AC4"

.field public static final AC5_USERID:Ljava/lang/String; = "AC5"

.field public static final AC6_TMX_SESSION_ID:Ljava/lang/String; = "AC6"

.field public static final AC7_CLIENTKEY_FORLOGIN:Ljava/lang/String; = "AC7"

.field public static final AC8_APPNAME:Ljava/lang/String; = "AC8"

.field public static final AC9_APPKEY_CLIENT:Ljava/lang/String; = "AC9"

.field public static final FIELD:Ljava/lang/String; = "AC"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getAppInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/alipay/apmobilesecuritysdk/model/CustomInfoModel;

    monitor-enter v0

    .line 82
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "tid"

    const-string v3, ""

    .line 84
    invoke-static {p1, v2, v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utdid"

    const-string v4, ""

    .line 85
    invoke-static {p1, v3, v4}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "userId"

    const-string v5, ""

    .line 86
    invoke-static {p1, v4, v5}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "appName"

    const-string v6, ""

    .line 87
    invoke-static {p1, v5, v6}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "appKeyClient"

    const-string v7, ""

    .line 88
    invoke-static {p1, v6, v7}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "tmxSessionId"

    const-string v8, ""

    .line 89
    invoke-static {p1, v7, v8}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->getRandomStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AC1"

    .line 92
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AC2"

    .line 93
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AC3"

    const-string v3, ""

    .line 94
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AC4"

    .line 95
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AC5"

    .line 96
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AC6"

    .line 97
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AC7"

    .line 98
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/macro/LoginKeyGenStub;->getClientKeyForLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AC8"

    .line 99
    invoke-interface {v1, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AC9"

    .line 100
    invoke-interface {v1, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
