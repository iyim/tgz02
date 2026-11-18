.class public Lcom/alipay/apmobilesecuritysdk/storage/OpenApdidTokenStorage;
.super Ljava/lang/Object;
.source "OpenApdidTokenStorage.java"


# static fields
.field public static final PRIVATE_PREFS_NAME:Ljava/lang/String; = "openapi_file_pri"

.field private static final openApiToken:Ljava/lang/String; = "openApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/OpenApdidTokenStorage;

    monitor-enter v0

    :try_start_0
    const-string v1, "openapi_file_pri"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openApi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-static {p0, v1, p1, v2}, Lcom/alipay/security/mobile/module/localstorage/SharePreferenceStorage;->getDataFromSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-object p0

    .line 53
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit v0

    return-object p0

    .line 59
    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized printOpenApdidToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-class p0, Lcom/alipay/apmobilesecuritysdk/storage/OpenApdidTokenStorage;

    monitor-enter p0

    .line 83
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized resetStorage(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/OpenApdidTokenStorage;

    monitor-enter v0

    :try_start_0
    const-string v1, "openapi_file_pri"

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 64
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized saveApdidToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/OpenApdidTokenStorage;

    monitor-enter v0

    :try_start_0
    const-string v1, "openapi_file_pri"

    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openApi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alipay/security/mobile/module/commonutils/crypto/SecurityUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 38
    :catch_0
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method
