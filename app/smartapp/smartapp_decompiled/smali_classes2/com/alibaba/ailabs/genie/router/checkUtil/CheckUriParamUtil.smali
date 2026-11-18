.class public Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;
.super Ljava/lang/Object;
.source "CheckUriParamUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$NativeAppType;,
        Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;


# instance fields
.field private mcallBack:Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;

.field private mcontext:Landroid/content/Context;

.field private nativeappScheme:Ljava/lang/String;

.field private schemeMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private webappScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "webapp"

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->webappScheme:Ljava/lang/String;

    const-string v0, "genie"

    .line 27
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->nativeappScheme:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->mcallBack:Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->mcontext:Landroid/content/Context;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->schemeMaps:Ljava/util/Map;

    .line 43
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->schemeMaps:Ljava/util/Map;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->webappScheme:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;

    const-string v1, ""

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;-><init>(Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->schemeMaps:Ljava/util/Map;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->nativeappScheme:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$NativeAppType;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$NativeAppType;-><init>(Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->mcontext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;)Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;
    .locals 2

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->sInstance:Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->sInstance:Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->sInstance:Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->sInstance:Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;

    return-object p0
.end method


# virtual methods
.method public check(Landroid/net/Uri;)Z
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->schemeMaps:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->checkAppExits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->webappScheme:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->checkWebAppRule(Landroid/net/Uri;)Z

    move-result p1

    return p1

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->nativeappScheme:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->checkNativeAppRule(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_1
    return v1

    .line 64
    :cond_2
    sget p1, Lcom/alibaba/ailabs/genie/router/checkUtil/Agreement;->FAILED_NOAPK:I

    sget-object v0, Lcom/alibaba/ailabs/genie/router/checkUtil/Agreement;->FAILED_NOAPK_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->sendCallBack(ILjava/lang/String;)V

    return v1

    .line 70
    :cond_3
    sget p1, Lcom/alibaba/ailabs/genie/router/checkUtil/Agreement;->FAILED_NOSCHEME:I

    sget-object v0, Lcom/alibaba/ailabs/genie/router/checkUtil/Agreement;->FAILED_NOSCHEME_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->sendCallBack(ILjava/lang/String;)V

    return v1
.end method

.method public checkAppExits(Ljava/lang/String;)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public checkNativeAppRule(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public checkWebAppRule(Landroid/net/Uri;)Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->schemeMaps:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;

    .line 81
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->access$000(Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->access$100(Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil$WebAppType;->checkVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 88
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/router/checkUtil/Agreement;->FAILED_WEBAPP_VCTOOHEIGHT:I

    sget-object v0, Lcom/alibaba/ailabs/genie/router/checkUtil/Agreement;->FAILED_WEBAPP_VCTOOHEIGHT_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->sendCallBack(ILjava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public sendCallBack(ILjava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/checkUtil/CheckUriParamUtil;->mcallBack:Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;->failed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
