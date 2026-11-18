.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;
.super Ljava/lang/Object;
.source "PubKeyHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "PubKeyHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 4

    .line 54
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getEnvType()Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pub_key_env\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ONLINE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    const-string v1, "\u7528\u5185\u7f6e\u7ebf\u4e0b\u516c\u94a5"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzPzx6ZjT2GWairxEJltpqtOB3FHRTqOCgOlQxAokUR3jN6mG3wizGMtZ5q0TNJwsHFwAcyQhcXdThJl9B6tDVOFTSTmERPHWZPXGNYrtpKGIP3u/QDXMVnMYCeP4ecZBWdwUDyzd3zHMo1Hm53/xzqOoaPfJEgS0uwBKTth3qtFenOFpUt3Y8X9fbMiGsbVWVwC55fsMDUt3husMXumHH4DpYBPgjHr7SkBA/ob1Q5L65ZBkdZ0M4CqWqgmCjic61pHJgPv8fhun2QGAwKs05eWOuIZ2EiRAj7YvguzZAdVQGTE/fvZtQMDmKJGrh5zjsrEPt3zQ236IbhfbUHXmoQIDAQAB"

    return-object v0

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    const-string v1, "\u7528\u5185\u7f6e\u7ebf\u4e0a\u516c\u94a5"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAo0z/L+pelCPu6DwDFAY/3ITzesr8lnNmYjHht4XUJvLYYBwvDbHMc8xi9sPK9ohVHIKRVLVmmZ9SdmuWYN9HzCyyZ6kEHx+IDBPnulwjdeN/N0w25mVRhYDWxJ2/1C6cPIuNcISchOQdGKuAC0xR37i/kWH9sjBidAQjageYgQoj1HX81flZaPve75Esue85AHZ0VIurjwx7uEuxvQtvCIUvX1bbF13TIYuTbJbn/LrNHby1Kxp42ggNUjAkYUVSF7SC3UP+YGKruii7Vh1UnJ/rpVhjdt3It8le9px8H4Ltt9N3hzU17rBnFpp2ZnmiZVtlfMvsStY54Fl5cSJVxQIDAQAB"

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "VI_SP_LOCAL_PUB_KEY"

    const-string v1, ""

    .line 79
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generatePubKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 27
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->getPubKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1
.end method

.method public static getPubKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 39
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    const-string v1, "\u83b7\u53d6\u672c\u5730\u6216\u516c\u94a5"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    const-string v0, "\u672c\u5730\u6ca1\u6709\u516c\u94a5\uff0c\u7528\u5185\u7f6e\u7684"

    invoke-static {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5230\u672c\u5730\u516c\u94a5\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static updateLocalPubKey(Landroid/content/Context;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 95
    :try_start_0
    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 97
    sget-object v3, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_2

    const-string p1, "pubKey"

    .line 99
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 104
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "VI_SP_LOCAL_PUB_KEY"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    sget-object p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u66f4\u65b0\u672c\u5730\u516c\u94a5\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method
