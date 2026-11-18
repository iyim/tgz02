.class public Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;
.super Ljava/lang/Object;
.source "GenieSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/genie/GenieSDK$SingletonHolder;
    }
.end annotation


# instance fields
.field private mAuthInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

.field private mAuthInfoStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/second/genie/GenieSDK$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;
    .locals 1

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK$SingletonHolder;->access$100()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    return-object v0
.end method

.method private loadAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;-><init>()V

    return-object v0

    .line 82
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;->userId:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;->uuid:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider$UserInfo;->mtopToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private needReloadAuthInfo()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mAuthInfoStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mAuthInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->isValid()Z

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

    .line 69
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mAuthInfoStr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mAuthInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    return-void
.end method

.method public getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->needReloadAuthInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->reloadAuthInfo()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mAuthInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    return-object v0
.end method

.method public getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;
    .locals 0

    if-nez p1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->needReloadAuthInfo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->reloadAuthInfo()V

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mAuthInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    return-object p1
.end method

.method public getAuthInfoStr()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->needReloadAuthInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->reloadAuthInfo()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mAuthInfoStr:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfoStr(Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->needReloadAuthInfo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->reloadAuthInfo()V

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mAuthInfoStr:Ljava/lang/String;

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mContext:Landroid/content/Context;

    return-void
.end method

.method public reloadAuthInfo()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->loadAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mAuthInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mAuthInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->mAuthInfoStr:Ljava/lang/String;

    return-void
.end method
