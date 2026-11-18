.class public abstract Lcom/alibaba/ailabs/ipc/remote/BaseClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "BaseClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;


# static fields
.field public static final METHOD_REGISTER:I = 0x7fff0000

.field public static final METHOD_UNREGISTER:I = 0x7fff0001

.field public static final _CLIENT_ID_:Ljava/lang/String; = "__id__"


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mHasRegisterServerConnection:Z

.field private mHost:Ljava/lang/String;

.field private mServerName:Ljava/lang/String;

.field private mSvrProxy:Lcom/alibaba/ailabs/ipc/remote/SvrFactory;

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/ipc/remote/BaseClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p5}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;I)V

    .line 39
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->generateClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mClientId:Ljava/lang/String;

    .line 40
    invoke-static {p1, p2, p3}, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/remote/SvrFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mSvrProxy:Lcom/alibaba/ailabs/ipc/remote/SvrFactory;

    .line 41
    iput p4, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mType:I

    .line 42
    iput-object p3, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mServerName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mHost:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/ipc/remote/BaseClient;)Lcom/alibaba/ailabs/ipc/remote/SvrFactory;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mSvrProxy:Lcom/alibaba/ailabs/ipc/remote/SvrFactory;

    return-object p0
.end method


# virtual methods
.method public final callAsynMethod(ILandroid/os/Bundle;)V
    .locals 2

    if-nez p2, :cond_0

    .line 108
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mClientId:Ljava/lang/String;

    const-string v1, "__id__"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/alibaba/ailabs/ipc/remote/BaseClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/BaseClient$1;-><init>(Lcom/alibaba/ailabs/ipc/remote/BaseClient;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-nez p2, :cond_0

    .line 135
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mClientId:Ljava/lang/String;

    const-string v1, "__id__"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mSvrProxy:Lcom/alibaba/ailabs/ipc/remote/SvrFactory;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public abstract onConnectedChanged(Z)V
.end method

.method public final onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 53
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->onConnectedChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 56
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final declared-synchronized register()V
    .locals 3

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mHost:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 67
    iget-boolean v1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mHasRegisterServerConnection:Z

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mServerName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    .line 69
    iput-boolean v2, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mHasRegisterServerConnection:Z

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "t"

    .line 73
    iget v2, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/high16 v1, 0x7fff0000

    .line 75
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 77
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unregister()V
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mHasRegisterServerConnection:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mHost:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mServerName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->mHasRegisterServerConnection:Z

    :cond_0
    const v0, 0x7fff0001

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 97
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
