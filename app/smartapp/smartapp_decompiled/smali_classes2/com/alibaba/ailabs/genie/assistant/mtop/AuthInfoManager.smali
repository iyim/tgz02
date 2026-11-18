.class public Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;
.super Ljava/lang/Object;
.source "AuthInfoManager.java"


# static fields
.field private static sAuthInfoManager:Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;
    .locals 2

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->sAuthInfoManager:Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;

    if-nez v0, :cond_0

    const-string v0, ""

    const-string v1, "sAuthInfoManager is null"

    .line 31
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->init(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->sAuthInfoManager:Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;
    .locals 2

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->sAuthInfoManager:Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->sAuthInfoManager:Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->sAuthInfoManager:Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 25
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->sAuthInfoManager:Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;

    return-object p0
.end method


# virtual methods
.method public getAuthInfo()Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;
    .locals 3

    .line 44
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;-><init>()V

    .line 46
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getUserData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 48
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "userId"

    .line 49
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->setUserId(Ljava/lang/String;)V

    const-string v1, "uuid"

    .line 50
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->setUuid(Ljava/lang/String;)V

    const-string v1, "mtop_token"

    .line 51
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->setToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
