.class public Lanet/channel/util/ProxySetting;
.super Ljava/lang/Object;
.source "ProxySetting.java"


# static fields
.field public static proxySetting:Lanet/channel/util/ProxySetting;


# instance fields
.field private final authAccount:Ljava/lang/String;

.field private final authPassword:Ljava/lang/String;

.field private final proxy:Ljava/net/Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lanet/channel/util/ProxySetting;->proxy:Ljava/net/Proxy;

    .line 33
    iput-object p3, p0, Lanet/channel/util/ProxySetting;->authAccount:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lanet/channel/util/ProxySetting;->authPassword:Ljava/lang/String;

    return-void
.end method

.method public static get()Lanet/channel/util/ProxySetting;
    .locals 1

    .line 24
    sget-object v0, Lanet/channel/util/ProxySetting;->proxySetting:Lanet/channel/util/ProxySetting;

    return-object v0
.end method

.method public static set(Lanet/channel/util/ProxySetting;)V
    .locals 0

    .line 20
    sput-object p0, Lanet/channel/util/ProxySetting;->proxySetting:Lanet/channel/util/ProxySetting;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBasicAuthorization()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    iget-object v1, p0, Lanet/channel/util/ProxySetting;->authAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/util/ProxySetting;->authPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Basic "

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 28
    iget-object v0, p0, Lanet/channel/util/ProxySetting;->proxy:Ljava/net/Proxy;

    return-object v0
.end method
