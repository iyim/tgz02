.class public Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "AccountManager.java"


# static fields
.field private static final METHOD_BIND:I = 0x2

.field private static final METHOD_REGISTER:I = 0x0

.field private static final METHOD_UNBIND:I = 0x3

.field private static final METHOD_UNREGISTER:I = 0x1

.field public static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.account"

.field private static final TAG:Ljava/lang/String; = "AccountManager"

.field private static sAccountManager:Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;
    .locals 2

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->sAccountManager:Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->sAccountManager:Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->sAccountManager:Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 31
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->sAccountManager:Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.account"

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "u"

    .line 61
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x2

    .line 64
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",clientId = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 40
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.account"

    .line 42
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {v0, p1, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p3

    if-eqz p2, :cond_0

    const-string v0, "ck"

    .line 73
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "register clientId = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", clientKey= "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unbind(Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x3

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "un bind clientId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister clientId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
