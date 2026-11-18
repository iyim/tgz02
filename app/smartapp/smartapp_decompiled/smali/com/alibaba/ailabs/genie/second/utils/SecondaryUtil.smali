.class public Lcom/alibaba/ailabs/genie/second/utils/SecondaryUtil;
.super Ljava/lang/Object;
.source "SecondaryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAppKey(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0, p1, p2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAuthCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/mtop/SignUtils;->getSecurityGuardAuthCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCallbackGenericClass(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Ljava/lang/Class;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
            ">(",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 48
    array-length v2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    aget-object p0, v0, v1

    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 53
    :goto_1
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 54
    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
