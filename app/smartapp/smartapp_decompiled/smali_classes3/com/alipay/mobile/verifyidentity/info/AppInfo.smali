.class public Lcom/alipay/mobile/verifyidentity/info/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field private static final a:Ljava/lang/String; = "AppInfo"

.field private static b:Lcom/alipay/mobile/verifyidentity/info/AppInfo;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

.field private d:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->e:Ljava/util/Map;

    .line 202
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->e:Ljava/util/Map;

    const-string v1, "com.taobao.mobile.dipei"

    const-string v2, "21533232"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->e:Ljava/util/Map;

    const-string v1, "com.alipay.m.portal"

    const-string v2, "23189718"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->e:Ljava/util/Map;

    const-string v1, "23181530"

    const-string v2, "com.antfortune.wealth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->e:Ljava/util/Map;

    const-string v2, "com.antfortune.wealthrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->e:Ljava/util/Map;

    const-string v1, "12501616"

    const-string v2, "com.eg.android.AlipayGphone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->e:Ljava/util/Map;

    const-string v2, "com.eg.android.AlipayGphoneRC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/info/AppInfo$1;-><init>(Lcom/alipay/mobile/verifyidentity/info/AppInfo;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->d:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

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

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 22
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->e:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;
    .locals 2

    .line 30
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->b:Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->b:Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;-><init>()V

    sput-object v1, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->b:Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->b:Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    return-object v0
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getApdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getApdid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->d:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getApdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApdidToken()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getApdidToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getApdidToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->d:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getApdidToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->d:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->d:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->d:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getTid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getUmidToken()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getUmidToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getUmidToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->d:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;->getUmidToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.1.12.201"

    return-object v0
.end method

.method public setDataProvider(Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->c:Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;

    return-void
.end method
