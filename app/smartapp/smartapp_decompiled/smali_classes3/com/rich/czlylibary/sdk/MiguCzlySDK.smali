.class public Lcom/rich/czlylibary/sdk/MiguCzlySDK;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/rich/czlylibary/sdk/MiguCzlySDK$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/sdk/MiguCzlySDK;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public static getInstance()Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;->CZLYSDK:Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;

    invoke-virtual {v0}, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;->getCzlyInit()Lcom/rich/czlylibary/sdk/MiguCzlySDK;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDeviceID()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/rich/czlylibary/b/c;

    invoke-direct {v0}, Lcom/rich/czlylibary/b/c;-><init>()V

    invoke-static {}, Lcom/rich/czlylibary/b/m;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rich/czlylibary/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Application;)Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/manager/CzlyInit;->a(Landroid/app/Application;)Lcom/rich/czlylibary/manager/CzlyInit;

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object p1

    const-string v0, "6d4ce31194b84200"

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/manager/CzlyInit;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object p1

    const-string v0, "014D07Z"

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/manager/CzlyInit;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/manager/CzlyInit;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object p1

    invoke-static {}, Lcom/rich/czlylibary/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/manager/CzlyInit;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object p1

    invoke-static {}, Lcom/rich/czlylibary/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/manager/CzlyInit;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/manager/CzlyInit;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppUid(Ljava/lang/String;)Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/manager/CzlyInit;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/manager/CzlyInit;->f(Ljava/lang/String;)V

    return-object p0
.end method

.method public setDebugMode(Ljava/lang/String;)Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/manager/CzlyInit;->j(Ljava/lang/String;)V

    return-object p0
.end method

.method public setPhoneNum(Ljava/lang/String;)Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/manager/CzlyInit;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public setPubKey(Ljava/lang/String;)Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/manager/CzlyInit;->h(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSecretToken(Ljava/lang/String;)Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/manager/CzlyInit;->k(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSubChannel(Ljava/lang/String;)Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/manager/CzlyInit;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public setTimeOutMilliSeconds(J)Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rich/czlylibary/manager/CzlyInit;->a(J)V

    return-object p0
.end method
