.class Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy$Holder;
.super Ljava/lang/Object;
.source "PreResolveIpProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;-><init>(Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy$1;)V

    sput-object v0, Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy$Holder;->INSTANCE:Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;
    .locals 1

    .line 15
    sget-object v0, Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy$Holder;->INSTANCE:Lcom/uc/base/net/util/dns/PreResolveIpProviderProxy;

    return-object v0
.end method
