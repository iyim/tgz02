.class public Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;
.super Ljava/lang/Object;
.source "GenieSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK$SingletonHolder;
    }
.end annotation


# instance fields
.field private mAuthInfo:Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;

.field private mAuthInfoStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;
    .locals 1

    .line 31
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK$SingletonHolder;->access$100()Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;

    move-result-object v0

    return-object v0
.end method

.method private loadAuthInfo()Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;

    invoke-direct {v0}, Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;->setUserId(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;->setUuid(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;->setToken(Ljava/lang/String;)V

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenieSDK not init() !!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private needReloadAuthInfo()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mAuthInfoStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mAuthInfo:Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method clear()V
    .locals 1

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mAuthInfoStr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mAuthInfo:Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;

    return-void
.end method

.method public getAuthInfo()Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->needReloadAuthInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->reloadAuthInfo()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mAuthInfo:Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;

    return-object v0
.end method

.method public getAuthInfo(Z)Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;
    .locals 0

    if-nez p1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->needReloadAuthInfo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->reloadAuthInfo()V

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mAuthInfo:Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;

    return-object p1
.end method

.method public getAuthInfoStr()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->needReloadAuthInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->reloadAuthInfo()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mAuthInfoStr:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfoStr(Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->needReloadAuthInfo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->reloadAuthInfo()V

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mAuthInfoStr:Ljava/lang/String;

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mContext:Landroid/content/Context;

    return-void
.end method

.method public reloadAuthInfo()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->loadAuthInfo()Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mAuthInfo:Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;

    .line 39
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mAuthInfo:Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;

    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->mAuthInfoStr:Ljava/lang/String;

    return-void
.end method
