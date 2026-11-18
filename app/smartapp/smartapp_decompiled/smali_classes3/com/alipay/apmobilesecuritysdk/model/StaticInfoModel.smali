.class public Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;
.super Ljava/lang/Object;
.source "StaticInfoModel.java"


# static fields
.field private static data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final includedHashKeyArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    const-string v0, "AD1"

    const-string v1, "AD2"

    const-string v2, "AD3"

    const-string v3, "AD5"

    const-string v4, "AD6"

    const-string v5, "AD7"

    const-string v6, "AD8"

    const-string v7, "AD9"

    const-string v8, "AD10"

    const-string v9, "AD11"

    const-string v10, "AD12"

    const-string v11, "AD13"

    const-string v12, "AD14"

    const-string v13, "AD15"

    const-string v14, "AD16"

    const-string v15, "AD18"

    const-string v16, "AD19"

    const-string v17, "AD20"

    const-string v18, "AD21"

    const-string v19, "AD23"

    const-string v20, "AA1"

    const-string v21, "AA2"

    const-string v22, "AA3"

    const-string v23, "AA4"

    const-string v24, "AA5"

    const-string v25, "AC4"

    const-string v26, "AC6"

    const-string v27, "AC7"

    const-string v28, "AE1"

    const-string v29, "AE2"

    const-string v30, "AE3"

    const-string v31, "AE4"

    const-string v32, "AE5"

    const-string v33, "AE6"

    const-string v34, "AE7"

    const-string v35, "AE8"

    const-string v36, "AE9"

    const-string v37, "AE10"

    const-string v38, "AE11"

    const-string v39, "AE12"

    const-string v40, "AE13"

    const-string v41, "AE14"

    const-string v42, "AE15"

    .line 99
    filled-new-array/range {v0 .. v42}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->includedHashKeyArray:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getOrderedContent(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 88
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 89
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_1

    move-object v4, v5

    .line 94
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "&"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getStaticInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
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

    const-class v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->data:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 31
    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->initData(Landroid/content/Context;Ljava/util/Map;)V

    .line 33
    :cond_0
    sget-object p0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->data:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getStaticInfoHash(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->getStaticInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    .line 57
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 58
    sget-object p1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->includedHashKeyArray:[Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 59
    sget-object v4, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->data:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    sget-object v4, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->data:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->getOrderedContent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/crypto/DigestUtil;->sha1ByString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static declared-synchronized initData(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;

    monitor-enter v0

    .line 42
    :try_start_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->data:Ljava/util/Map;

    .line 43
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->data:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/model/CustomInfoModel;->getAppInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 44
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->data:Ljava/util/Map;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/model/EnvironmentInfoModel;->getEnvironmentInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->data:Ljava/util/Map;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/model/DeviceInfoModel;->getStaticDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 46
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->data:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/model/ApplicationInfoModel;->getAppInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized reset()V
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;

    monitor-enter v0

    const/4 v1, 0x0

    .line 74
    :try_start_0
    sput-object v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->data:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
