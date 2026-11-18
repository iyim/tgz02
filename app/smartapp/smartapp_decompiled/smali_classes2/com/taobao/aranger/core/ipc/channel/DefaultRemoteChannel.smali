.class public Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;
.super Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;
.source "DefaultRemoteChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultRemoteChannel"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mRemoteProviderUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->mRemoteProviderUri:Landroid/net/Uri;

    .line 35
    invoke-static {}, Lcom/taobao/aranger/ARanger;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;)Landroid/net/Uri;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->mRemoteProviderUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;)Landroid/content/ContentResolver;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private call(Ljava/lang/String;Landroid/os/Bundle;ZZ)Lcom/taobao/aranger/core/entity/Reply;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->mRemoteProviderUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 61
    new-instance p3, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel$1;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel$1;-><init>(Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ContentProviderClient;)V

    invoke-static {p3}, Lcom/taobao/aranger/utils/IPCThreadCaller;->execute(Ljava/lang/Runnable;)V

    .line 76
    invoke-static {}, Lcom/taobao/aranger/core/entity/Reply;->obtain()Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/taobao/aranger/core/entity/Reply;->setResult(Ljava/lang/Object;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const-string p3, ""

    if-eqz v0, :cond_1

    .line 79
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 80
    invoke-virtual {v0, p1, p3, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->mRemoteProviderUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, p1, p3, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-eqz p4, :cond_2

    .line 86
    invoke-static {}, Lcom/taobao/aranger/core/entity/Reply;->obtain()Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/taobao/aranger/core/entity/Reply;->setResult(Ljava/lang/Object;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    return-object p1

    .line 88
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "reply"

    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/taobao/aranger/core/entity/Reply;

    if-eqz p1, :cond_3

    return-object p1

    .line 92
    :cond_3
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 p2, 0x23

    const-string p3, "reply data encode error from default channel!"

    invoke-direct {p1, p2, p3}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 100
    instance-of p2, p1, Landroid/os/RemoteException;

    if-eqz p2, :cond_4

    .line 101
    new-instance p2, Lcom/taobao/aranger/exception/IPCException;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 103
    :cond_4
    new-instance p2, Lcom/taobao/aranger/exception/IPCException;

    const/16 p3, 0x9

    invoke-direct {p2, p3, p1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public internalConnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "connect"

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, v1, v2, v0, v0}, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->call(Ljava/lang/String;Landroid/os/Bundle;ZZ)Lcom/taobao/aranger/core/entity/Reply;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
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

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "keys"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    const-string v1, "recycle_remote"

    .line 54
    invoke-direct {p0, v1, v0, p1, p1}, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->call(Ljava/lang/String;Landroid/os/Bundle;ZZ)Lcom/taobao/aranger/core/entity/Reply;

    return-void
.end method

.method public internalSendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "call"

    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->isOneWay()Z

    move-result v2

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->isVoid()Z

    move-result p1

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;->call(Ljava/lang/String;Landroid/os/Bundle;ZZ)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    return-object p1
.end method
