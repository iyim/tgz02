.class public Lcom/uc/base/net/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field public static NET_LIB_IMPL_TYPE_LEGACY:Ljava/lang/String; = "legacy"

.field public static NET_LIB_IMPL_TYPE_UNET:Ljava/lang/String; = "unet"

.field private static volatile sInstance:Lcom/uc/base/net/NetworkManager;


# instance fields
.field private mClientDelegate:Lcom/uc/base/net/INetClientDelegate;

.field private mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/uc/base/net/NetworkManager;
    .locals 2

    .line 20
    sget-object v0, Lcom/uc/base/net/NetworkManager;->sInstance:Lcom/uc/base/net/NetworkManager;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/uc/base/net/NetworkManager;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/uc/base/net/NetworkManager;->sInstance:Lcom/uc/base/net/NetworkManager;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/uc/base/net/NetworkManager;

    invoke-direct {v1}, Lcom/uc/base/net/NetworkManager;-><init>()V

    sput-object v1, Lcom/uc/base/net/NetworkManager;->sInstance:Lcom/uc/base/net/NetworkManager;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/uc/base/net/NetworkManager;->sInstance:Lcom/uc/base/net/NetworkManager;

    return-object v0
.end method


# virtual methods
.method public addPreResolveDns(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/uc/base/net/INetFuncDelegate;->addPreResolveDns(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public clearDnsCache()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    invoke-interface {v0}, Lcom/uc/base/net/INetFuncDelegate;->clearDnsCache()V

    return-void
.end method

.method public clearDnsCache(Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    invoke-interface {v0, p1}, Lcom/uc/base/net/INetFuncDelegate;->clearDnsCache(Ljava/lang/String;)V

    return-void
.end method

.method public getNetClientDelegate()Lcom/uc/base/net/INetClientDelegate;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mClientDelegate:Lcom/uc/base/net/INetClientDelegate;

    return-object v0
.end method

.method public getNetFuncDelegate()Lcom/uc/base/net/INetFuncDelegate;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    return-object v0
.end method

.method public getNetLibImplType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    invoke-interface {v0}, Lcom/uc/base/net/INetFuncDelegate;->getNetImplLibType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemProxy()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    invoke-interface {v0}, Lcom/uc/base/net/INetFuncDelegate;->getSystemProxy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/uc/base/net/INetClientDelegate;Lcom/uc/base/net/INetFuncDelegate;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/uc/base/net/NetworkManager;->mClientDelegate:Lcom/uc/base/net/INetClientDelegate;

    .line 32
    iput-object p2, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    return-void
.end method

.method public isUPaaSEnable()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    invoke-interface {v0}, Lcom/uc/base/net/INetFuncDelegate;->isUPaaSEnable()Z

    move-result v0

    return v0
.end method

.method public setArgs(Ljava/lang/String;I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/INetFuncDelegate;->setArgs(Ljava/lang/String;I)V

    return-void
.end method

.method public setArgs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/INetFuncDelegate;->setArgs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListControlValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/INetFuncDelegate;->setListControlValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSystemProxy(Ljava/lang/String;I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/uc/base/net/NetworkManager;->mFuncDelegate:Lcom/uc/base/net/INetFuncDelegate;

    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/INetFuncDelegate;->setSystemProxy(Ljava/lang/String;I)V

    return-void
.end method
