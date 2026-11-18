.class public Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;
.super Ljava/lang/Object;
.source "PlatformUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$EnvModeConfig;,
        Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$TrivialInvocationHandler;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PlatformUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
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

.method private static a(Landroid/content/Context;)I
    .locals 0

    .line 146
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->isDebug(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 147
    sget p0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$EnvModeConfig;->ENVIRONMENT_DAILY:I

    return p0

    .line 149
    :cond_0
    sget p0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$EnvModeConfig;->ENVIRONMENT_ONLINE:I

    return p0
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance p0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$TrivialInvocationHandler;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$TrivialInvocationHandler;-><init>(Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$1;)V

    .line 121
    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getApdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 30
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->initSecuritySdk(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 31
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "com.alipay.apmobilesecuritysdk.face.APSecuritySdk"

    const-string v2, "getInstance"

    invoke-static {p0, v2, v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "getTokenResult"

    .line 36
    invoke-static {p0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "apdid"

    .line 40
    invoke-static {p0, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getApdidToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 62
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->initSecuritySdk(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 63
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "com.alipay.apmobilesecuritysdk.face.APSecuritySdk"

    const-string v2, "getInstance"

    invoke-static {p0, v2, v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "getApdidToken"

    .line 68
    invoke-static {p0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 72
    :cond_1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getTokenResult(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .line 44
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->initSecuritySdk(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 45
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "com.alipay.apmobilesecuritysdk.face.APSecuritySdk"

    const-string v2, "getInstance"

    invoke-static {p0, v2, v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "getTokenResult"

    .line 50
    invoke-static {p0, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getUmidToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->getTokenResult(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "umidToken"

    .line 58
    invoke-static {p0, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static initSecuritySdk(Landroid/content/Context;)V
    .locals 12

    const-string v0, ""

    const/4 v1, 0x1

    .line 80
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const-string v5, "com.alipay.apmobilesecuritysdk.face.APSecuritySdk"

    const-string v6, "getInstance"

    invoke-static {v5, v6, v2, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 86
    :cond_0
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x0

    .line 89
    array-length v6, v3

    move-object v7, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v8, v3, v5

    .line 90
    invoke-virtual {v8}, Ljava/lang/Class;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "com.alipay.apmobilesecuritysdk.face.APSecuritySdk$InitResultListener"

    .line 92
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 94
    invoke-static {v8}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    .line 96
    :cond_1
    sget-object v9, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get an [inner interface] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_2
    sget-object v9, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get a [inner class] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    return-void

    .line 104
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "tid"

    .line 105
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "utdid"

    .line 106
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "userId"

    .line 107
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    const-string v5, "It\'s ready to init SecuritySDK now!"

    invoke-static {v0, v5}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "initToken"

    const/4 v5, 0x3

    .line 110
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    const-class v8, Ljava/util/Map;

    aput-object v8, v6, v1

    .line 112
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v6, v9

    new-array v5, v5, [Ljava/lang/Object;

    .line 113
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v4

    aput-object v3, v5, v1

    aput-object v7, v5, v9

    .line 110
    invoke-static {v2, v0, v6, v5}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 115
    sget-object v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static isAlipay(Landroid/content/Context;)Z
    .locals 3

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 172
    sget-object v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u5ba2\u6237\u7aef\u7684\u5305\u540d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.eg.android.AlipayGphone"

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.eg.android.AlipayGphoneRC"

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 2

    .line 158
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x4000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 160
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 165
    sget-object v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->a:Ljava/lang/String;

    const-string v1, "get isDebug exception: "

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
