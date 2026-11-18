.class public Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "UserInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager$UserInfoObserver;
    }
.end annotation


# static fields
.field private static final METHOD_GETINFO:I = 0x0

.field private static final METHOD_UPDATEUSERINFO:I = 0x1

.field private static final NOTIFY:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.provider/userinfo"

.field public static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.userinfo"

.field private static final TAG:Ljava/lang/String; = "AccountManager"

.field private static sAccountManager:Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field private mUseinfoListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager$UserInfoObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->mUseinfoListeners:Ljava/util/HashMap;

    .line 28
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;
    .locals 2

    .line 56
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->sAccountManager:Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->sAccountManager:Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->sAccountManager:Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;

    .line 61
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 63
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->sAccountManager:Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.userinfo"

    return-object v0
.end method


# virtual methods
.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 72
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.userinfo"

    .line 74
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public registerUserInfoListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;)Z
    .locals 6

    .line 99
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager$UserInfoObserver;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager$UserInfoObserver;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;Landroid/os/Handler;Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;)V

    .line 100
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->mUseinfoListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register observer id = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AccountManager"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 103
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/userinfo"

    .line 106
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register observer url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p1, v3, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public unregisterUserInfoListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;)Z
    .locals 3

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->mUseinfoListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/database/ContentObserver;

    const-string v0, "AccountManager"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener observer id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public updateAccountInfo()Z
    .locals 5

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAccountInfo isSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const-string v3, "v"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AccountManager"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
