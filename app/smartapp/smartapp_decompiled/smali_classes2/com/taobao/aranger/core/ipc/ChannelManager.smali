.class public Lcom/taobao/aranger/core/ipc/ChannelManager;
.super Ljava/lang/Object;
.source "ChannelManager.java"


# static fields
.field private static final sClientChannelMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/taobao/aranger/core/ipc/channel/BaseClientChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRemoteChannelMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/Uri;",
            "Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/aranger/core/ipc/ChannelManager;->sRemoteChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/aranger/core/ipc/ChannelManager;->sClientChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getClientChannel(Landroid/os/IBinder;)Lcom/taobao/aranger/core/ipc/channel/BaseClientChannel;
    .locals 2

    .line 33
    sget-object v0, Lcom/taobao/aranger/core/ipc/ChannelManager;->sClientChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/aranger/core/ipc/channel/BaseClientChannel;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/taobao/aranger/core/ipc/channel/DefaultClientChannel;

    invoke-direct {v0, p0}, Lcom/taobao/aranger/core/ipc/channel/DefaultClientChannel;-><init>(Landroid/os/IBinder;)V

    .line 36
    sget-object v1, Lcom/taobao/aranger/core/ipc/ChannelManager;->sClientChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getRemoteChannel(Landroid/net/Uri;)Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;
    .locals 2

    .line 24
    sget-object v0, Lcom/taobao/aranger/core/ipc/ChannelManager;->sRemoteChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;

    invoke-direct {v0, p0}, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;-><init>(Landroid/net/Uri;)V

    .line 27
    sget-object v1, Lcom/taobao/aranger/core/ipc/ChannelManager;->sRemoteChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
