.class public Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;
.super Ljava/lang/Object;
.source "PubPriStorageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDataFromPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 101
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alipay/security/mobile/module/localstorage/PublicStorage;->readDataFromPublicArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 111
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    .line 117
    :cond_2
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getPrivateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 25
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, ""

    .line 33
    invoke-static {p0, p1, p2, v1}, Lcom/alipay/security/mobile/module/localstorage/SharePreferenceStorage;->getDataFromSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 39
    :cond_1
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static writeDataToPublic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/localstorage/PublicStorage;->writeDataToPublicArea(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static writePrivateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p0, p1, v0}, Lcom/alipay/security/mobile/module/localstorage/SharePreferenceStorage;->writeDataToSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
