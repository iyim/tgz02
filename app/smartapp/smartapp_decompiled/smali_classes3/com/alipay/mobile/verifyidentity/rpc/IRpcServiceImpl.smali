.class public Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;
.super Ljava/lang/Object;
.source "IRpcServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;


# instance fields
.field ContextClass:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IRpcServiceImpl"

    .line 36
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->a:Ljava/lang/String;

    const-string v0, "com.alipay.mobile.verifyidentity.engine.MicroModuleContext"

    .line 40
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->ContextClass:Ljava/lang/String;

    const-string v0, "https://mobilegw.alipay.com/mgw.htm"

    .line 42
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->d:Ljava/lang/String;

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->e:Ljava/lang/String;

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

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 101
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got gwUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.alipay.mobile.common.info.DeviceInfo"

    const-string v2, "getInstance"

    .line 62
    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "getmDid"

    .line 64
    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "getClientId"

    .line 65
    invoke-static {v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "did"

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "clientId"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uuid"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "TRACKERID"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "appkey"

    const-string v3, "23699722"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "AppId"

    const-string v3, "VI_SDK_ANDROID"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b()Landroid/content/Context;
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->a:Ljava/lang/String;

    const-string v1, "getContext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->ContextClass:Ljava/lang/String;

    .line 80
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    .line 81
    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 82
    invoke-virtual {v2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 85
    invoke-virtual {v3, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 86
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private c()Lcom/alipay/vi/android/phone/mrpc/core/Config;
    .locals 4

    .line 108
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;

    invoke-direct {v0}, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->e:Ljava/lang/String;

    .line 110
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->d:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->a:Ljava/lang/String;

    const-string v3, "haven\'t got gwUrl. Use the online alipay url"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    invoke-virtual {v0, v1}, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->setGwUrl(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->setHeaders(Ljava/util/List;)V

    .line 117
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;-><init>(Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;)V

    return-object v1
.end method


# virtual methods
.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->c:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->c()Lcom/alipay/vi/android/phone/mrpc/core/Config;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/Config;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->b:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->b:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->setContext(Landroid/content/Context;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->b:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setGW(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->e:Ljava/lang/String;

    return-void
.end method
