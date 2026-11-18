.class public Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;
.super Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;
.source "QuickRemoteChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickRemoteChannel"

.field private static final sProcessDeathSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acquireMethod:Ljava/lang/reflect/Method;

.field private final mActivityThread:Landroid/app/ActivityThread;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mProcessName:Ljava/lang/String;

.field private final mRemoteProviderUri:Landroid/net/Uri;

.field private remoteService:Lcom/taobao/aranger/intf/IRemoteService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->sProcessDeathSet:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mRemoteProviderUri:Landroid/net/Uri;

    .line 53
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mActivityThread:Landroid/app/ActivityThread;

    .line 54
    invoke-static {p1}, Lcom/taobao/aranger/utils/IPCUtils;->getProcessNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mProcessName:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/taobao/aranger/ARanger;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mProcessName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 38
    sget-object v0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->sProcessDeathSet:Ljava/util/Set;

    return-object v0
.end method

.method private getRemoteService(Landroid/net/Uri;)Lcom/taobao/aranger/intf/IRemoteService;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->remoteService:Lcom/taobao/aranger/intf/IRemoteService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/taobao/aranger/intf/IRemoteService;->isRemote()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->remoteService:Lcom/taobao/aranger/intf/IRemoteService;

    invoke-interface {v0}, Lcom/taobao/aranger/intf/IRemoteService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    const/16 v0, 0x13

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->acquireMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 110
    const-class v2, Landroid/content/ContentResolver;

    const-string v4, "acquireUnstableProvider"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/net/Uri;

    aput-object v6, v5, v1

    invoke-static {v2, v4, v5}, Lcom/taobao/aranger/utils/ReflectUtils;->getHideMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->acquireMethod:Ljava/lang/reflect/Method;

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->acquireMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IContentProvider;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 114
    :catch_1
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-gt v2, v3, :cond_2

    .line 115
    iget-object v2, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mActivityThread:Landroid/app/ActivityThread;

    invoke-static {}, Lcom/taobao/aranger/ARanger;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 116
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {v2, v3, p1, v1}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/IContentProvider;

    move-result-object v2

    goto :goto_0

    .line 118
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    .line 119
    iget-object v2, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mActivityThread:Landroid/app/ActivityThread;

    .line 120
    invoke-static {}, Lcom/taobao/aranger/ARanger;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const v5, 0x186a0

    div-int/2addr v4, v5

    .line 119
    invoke-virtual {v2, v3, p1, v4, v1}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v2

    goto :goto_0

    .line 123
    :cond_3
    iget-object v2, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mActivityThread:Landroid/app/ActivityThread;

    invoke-static {}, Lcom/taobao/aranger/ARanger;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 124
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/aranger/utils/IPCUtils;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->hashCode()I

    move-result v5

    .line 125
    invoke-static {p1, v5}, Lcom/taobao/aranger/utils/IPCUtils;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result p1

    .line 123
    invoke-virtual {v2, v3, v4, p1, v1}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_6

    .line 132
    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/aranger/core/ipc/proxy/RemoteServiceProxy;->getProxy(Landroid/os/IBinder;)Lcom/taobao/aranger/intf/IRemoteService;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->remoteService:Lcom/taobao/aranger/intf/IRemoteService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :cond_4
    iget-object p1, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->remoteService:Lcom/taobao/aranger/intf/IRemoteService;

    invoke-interface {p1}, Lcom/taobao/aranger/intf/IRemoteService;->isRemote()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->sProcessDeathSet:Ljava/util/Set;

    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mProcessName:Ljava/lang/String;

    .line 142
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 143
    sget-object p1, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->sProcessDeathSet:Ljava/util/Set;

    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mProcessName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object p1, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->remoteService:Lcom/taobao/aranger/intf/IRemoteService;

    invoke-interface {p1}, Lcom/taobao/aranger/intf/IRemoteService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 146
    :try_start_2
    new-instance v0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel$1;-><init>(Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;Landroid/os/IBinder;)V

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 162
    sget-object v0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[getRemoteService][linkToDeath]"

    invoke-static {v0, v2, p1, v1}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 165
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->remoteService:Lcom/taobao/aranger/intf/IRemoteService;

    return-object p1

    .line 134
    :cond_6
    :try_start_3
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const-string v1, "can\'t get content provider"

    invoke-direct {p1, v0, v1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 137
    :goto_2
    new-instance v1, Lcom/taobao/aranger/exception/IPCException;

    invoke-direct {v1, v0, p1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public internalConnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mRemoteProviderUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->getRemoteService(Landroid/net/Uri;)Lcom/taobao/aranger/intf/IRemoteService;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/aranger/intf/IRemoteService;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 78
    instance-of v1, v0, Lcom/taobao/aranger/exception/IPCException;

    if-nez v1, :cond_1

    .line 80
    instance-of v1, v0, Landroid/os/RemoteException;

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Lcom/taobao/aranger/exception/IPCException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 83
    :cond_0
    new-instance v1, Lcom/taobao/aranger/exception/IPCException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 79
    :cond_1
    check-cast v0, Lcom/taobao/aranger/exception/IPCException;

    throw v0
.end method

.method public internalRecycle(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mRemoteProviderUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->getRemoteService(Landroid/net/Uri;)Lcom/taobao/aranger/intf/IRemoteService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/aranger/intf/IRemoteService;->recycle(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 93
    instance-of v0, p1, Lcom/taobao/aranger/exception/IPCException;

    if-nez v0, :cond_1

    .line 95
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/taobao/aranger/exception/IPCException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 98
    :cond_0
    new-instance v0, Lcom/taobao/aranger/exception/IPCException;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 94
    :cond_1
    check-cast p1, Lcom/taobao/aranger/exception/IPCException;

    throw p1
.end method

.method public internalSendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->mRemoteProviderUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->getRemoteService(Landroid/net/Uri;)Lcom/taobao/aranger/intf/IRemoteService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/aranger/intf/IRemoteService;->sendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 63
    instance-of v0, p1, Lcom/taobao/aranger/exception/IPCException;

    if-nez v0, :cond_1

    .line 65
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/taobao/aranger/exception/IPCException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 68
    :cond_0
    new-instance v0, Lcom/taobao/aranger/exception/IPCException;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 64
    :cond_1
    check-cast p1, Lcom/taobao/aranger/exception/IPCException;

    throw p1
.end method
