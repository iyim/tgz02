.class public Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;
.super Ljava/lang/Object;
.source "BirdNestManager.java"


# static fields
.field private static mBirdNestService:Lcom/alipay/android/app/render/birdnest/service/BirdNestService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static create(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    .locals 1

    .line 21
    sget-object v0, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->mBirdNestService:Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    if-nez v0, :cond_1

    .line 22
    invoke-static {}, Lcom/alipay/android/app/render/api/RenderEnv;->isWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->getWalletService()Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object p0

    sput-object p0, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->mBirdNestService:Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->getSDKService(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object p0

    sput-object p0, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->mBirdNestService:Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    .line 28
    :cond_1
    :goto_0
    sget-object p0, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->mBirdNestService:Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    return-object p0
.end method

.method private static getSDKService(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.alipay.android.app.render.birdnest.service.impl.BirdNestSDKService"

    .line 34
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_0

    .line 37
    :try_start_1
    new-instance v0, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager$1;

    invoke-direct {v0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager$1;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 75
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v2

    const-string v3, "render"

    const-string v4, "BirdNestSDKServiceEx"

    invoke-virtual {v2, v3, v4, v1}, Lcom/alipay/android/app/render/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_2
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->initialize(Lcom/alipay/android/app/render/api/ICashierProvider;)V

    return-object v0
.end method

.method private static getWalletService()Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    .locals 4

    :try_start_0
    const-string v0, "com.alipay.android.app.render.birdnest.service.impl.BirdNestWalletService"

    .line 84
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v1

    const-string v2, "render"

    const-string v3, "BirdNestWalletServiceEx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/render/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static resetService()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    sput-object v0, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->mBirdNestService:Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
