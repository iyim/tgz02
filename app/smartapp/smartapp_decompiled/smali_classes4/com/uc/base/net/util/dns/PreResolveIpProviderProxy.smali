.class public Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;
.super Ljava/lang/Object;
.source "PreResolveIpProviderProxy.java"

# interfaces
.implements Lcom/uc/base/net/util/dns/IPreResolveIpProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy$Holder;
    }
.end annotation


# instance fields
.field private mPreResolveIpProvider:Lcom/uc/base/net/util/dns/IPreResolveIpProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;
    .locals 1

    .line 20
    invoke-static {}, Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy$Holder;->access$100()Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;->mPreResolveIpProvider:Lcom/uc/base/net/util/dns/IPreResolveIpProvider;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1}, Lcom/uc/base/net/util/dns/IPreResolveIpProvider;->get(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public notifyConnectResult(Ljava/lang/String;Z)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;->mPreResolveIpProvider:Lcom/uc/base/net/util/dns/IPreResolveIpProvider;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1, p2}, Lcom/uc/base/net/util/dns/IPreResolveIpProvider;->notifyConnectResult(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setPreResolveIpProvider(Lcom/uc/base/net/util/dns/IPreResolveIpProvider;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;->mPreResolveIpProvider:Lcom/uc/base/net/util/dns/IPreResolveIpProvider;

    return-void
.end method
