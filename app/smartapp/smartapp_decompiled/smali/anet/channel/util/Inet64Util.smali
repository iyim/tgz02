.class public Lanet/channel/util/Inet64Util;
.super Ljava/lang/Object;
.source "Inet64Util.java"


# static fields
.field static final IPV4ONLY_HOST:Ljava/lang/String; = "ipv4only.arpa"

.field static final IPV4ONLY_IP:[[B

.field public static final IPV4_ONLY:I = 0x1

.field public static final IPV6_ONLY:I = 0x2

.field public static final IP_DUAL_STACK:I = 0x3

.field public static final IP_STACK_UNKNOWN:I = 0x0

.field static final TAG:Ljava/lang/String; = "awcn.Inet64Util"

.field static defaultNatPrefix:Lanet/channel/util/Nat64Prefix;

.field static ipStackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static nat64PrefixMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lanet/channel/util/Nat64Prefix;",
            ">;"
        }
    .end annotation
.end field

.field static volatile networkId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lanet/channel/util/Inet64Util;->IPV4ONLY_IP:[[B

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lanet/channel/util/Inet64Util;->networkId:Ljava/lang/String;

    .line 44
    sput-object v0, Lanet/channel/util/Inet64Util;->defaultNatPrefix:Lanet/channel/util/Nat64Prefix;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lanet/channel/util/Inet64Util;->nat64PrefixMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lanet/channel/util/Inet64Util;->ipStackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    :try_start_0
    new-instance v0, Lanet/channel/util/Nat64Prefix;

    const-string v1, "64:ff9b::"

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    aget-object v1, v1, v3

    check-cast v1, Ljava/net/Inet6Address;

    const/16 v2, 0x60

    invoke-direct {v0, v1, v2}, Lanet/channel/util/Nat64Prefix;-><init>(Ljava/net/Inet6Address;I)V

    sput-object v0, Lanet/channel/util/Inet64Util;->defaultNatPrefix:Lanet/channel/util/Nat64Prefix;

    .line 51
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/Inet64Util;->generateNetworkId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/util/Inet64Util;->networkId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    :array_0
    .array-data 1
        -0x40t
        0x0t
        0x0t
        -0x56t
    .end array-data

    :array_1
    .array-data 1
        -0x40t
        0x0t
        0x0t
        -0x55t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0}, Lanet/channel/util/Inet64Util;->generateNetworkId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 31
    invoke-static {}, Lanet/channel/util/Inet64Util;->detectIpStack()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lanet/channel/util/Nat64Prefix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lanet/channel/util/Inet64Util;->detectNat64Prefix()Lanet/channel/util/Nat64Prefix;

    move-result-object v0

    return-object v0
.end method

.method public static convertToIPv6(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 131
    :try_start_0
    invoke-static {p0}, Ljava/net/Inet4Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;

    .line 132
    invoke-static {p0}, Lanet/channel/util/Inet64Util;->convertToIPv6(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertToIPv6(Ljava/net/Inet4Address;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 104
    invoke-static {}, Lanet/channel/util/Inet64Util;->getNat64Prefix()Lanet/channel/util/Nat64Prefix;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p0

    .line 111
    iget-object v1, v0, Lanet/channel/util/Nat64Prefix;->mPrefix:Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    .line 114
    iget v0, v0, Lanet/channel/util/Nat64Prefix;->mPrefixLength:I

    const/16 v2, 0x8

    div-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    add-int v5, v3, v0

    const/16 v6, 0xf

    if-gt v5, v6, :cond_1

    const/4 v6, 0x4

    if-ge v4, v6, :cond_1

    if-ne v5, v2, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    aget-byte v6, v1, v5

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, p0, v4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    move v4, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "cannot get nat64 prefix"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_3
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string v0, "address in null"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static convertToIPv6ThrowsException(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-static {p0}, Ljava/net/Inet4Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;

    .line 126
    invoke-static {p0}, Lanet/channel/util/Inet64Util;->convertToIPv6(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static detectIpStack()I
    .locals 5

    const/4 v0, 0x0

    .line 270
    :try_start_0
    invoke-static {}, Lanet/channel/util/Inet64Util;->getIpStack()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 273
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ip stack"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "awcn.Inet64Util"

    const-string/jumbo v4, "startIpStackDetect"

    invoke-static {v0, v4, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private static detectNat64Prefix()Lanet/channel/util/Nat64Prefix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const-string v0, "ipv4only.arpa"

    const/4 v1, 0x0

    .line 287
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    .line 301
    :goto_0
    instance-of v3, v2, Ljava/net/Inet6Address;

    const-string v4, "awcn.Inet64Util"

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolved AAAA: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v1, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 305
    array-length v3, v2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    return-object v1

    :cond_0
    const/16 v3, 0xc

    :goto_1
    const/4 v4, 0x1

    if-ltz v3, :cond_2

    .line 314
    aget-byte v6, v2, v3

    sget-object v7, Lanet/channel/util/Inet64Util;->IPV4ONLY_IP:[[B

    aget-object v8, v7, v5

    aget-byte v8, v8, v5

    and-int/2addr v6, v8

    if-eqz v6, :cond_1

    add-int/lit8 v6, v3, 0x1

    .line 316
    aget-byte v6, v2, v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v2, v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v3, 0x3

    .line 318
    aget-byte v8, v2, v6

    aget-object v9, v7, v5

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    if-eq v8, v9, :cond_3

    aget-byte v6, v2, v6

    aget-object v7, v7, v4

    aget-byte v7, v7, v10

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_2
    if-eqz v4, :cond_5

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v6, v3, 0x3

    .line 329
    aput-byte v5, v2, v6

    aput-byte v5, v2, v4

    aput-byte v5, v2, v1

    aput-byte v5, v2, v3

    .line 330
    invoke-static {v0, v2, v5}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0

    .line 331
    new-instance v1, Lanet/channel/util/Nat64Prefix;

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v0, v3}, Lanet/channel/util/Nat64Prefix;-><init>(Ljava/net/Inet6Address;I)V

    return-object v1

    .line 334
    :cond_4
    instance-of v0, v2, Ljava/net/Inet4Address;

    if-eqz v0, :cond_5

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolved A: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object v1
.end method

.method private static filterAddress(Ljava/net/InetAddress;)Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static generateNetworkId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiBSSID()Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WIFI$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "$"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getApn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "UnknownNetwork"

    return-object p0
.end method

.method private static getIpStack()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 142
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 143
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 145
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    .line 146
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find NetworkInterface:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "awcn.Inet64Util"

    invoke-static {v8, v6, v3, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InterfaceAddress;

    .line 154
    invoke-virtual {v7}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 155
    instance-of v9, v7, Ljava/net/Inet6Address;

    if-eqz v9, :cond_3

    .line 158
    nop

    nop

    .line 159
    invoke-static {v7}, Lanet/channel/util/Inet64Util;->filterAddress(Ljava/net/InetAddress;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 160
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found IPv6 address:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/Inet6Address;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v7, v3, v9}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    or-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 163
    :cond_3
    instance-of v9, v7, Ljava/net/Inet4Address;

    if-eqz v9, :cond_2

    .line 164
    nop

    nop

    .line 165
    invoke-static {v7}, Lanet/channel/util/Inet64Util;->filterAddress(Ljava/net/InetAddress;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    const-string v10, "192.168.43."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found IPv4 address:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v7, v3, v9}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    or-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_0

    .line 173
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 177
    :cond_5
    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    return v4

    .line 179
    :cond_6
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 180
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 184
    :cond_7
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v3, "wlan"

    goto :goto_2

    .line 186
    :cond_8
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v3, "rmnet"

    :cond_9
    :goto_2
    if-eqz v3, :cond_b

    .line 192
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 194
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_b
    const/4 v1, 0x2

    if-ne v4, v1, :cond_c

    const-string/jumbo v1, "v4-wlan0"

    .line 200
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v4, v0

    :cond_c
    return v4
.end method

.method public static getNat64Prefix()Lanet/channel/util/Nat64Prefix;
    .locals 2

    .line 90
    sget-object v0, Lanet/channel/util/Inet64Util;->nat64PrefixMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lanet/channel/util/Inet64Util;->networkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/util/Nat64Prefix;

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lanet/channel/util/Inet64Util;->defaultNatPrefix:Lanet/channel/util/Nat64Prefix;

    :cond_0
    return-object v0
.end method

.method public static getStackType()I
    .locals 2

    .line 81
    sget-object v0, Lanet/channel/util/Inet64Util;->ipStackMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lanet/channel/util/Inet64Util;->networkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static isIPv4OnlyNetwork()Z
    .locals 2

    .line 76
    sget-object v0, Lanet/channel/util/Inet64Util;->ipStackMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lanet/channel/util/Inet64Util;->networkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isIPv6OnlyNetwork()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static startIpStackDetect()V
    .locals 4

    .line 209
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/Inet64Util;->generateNetworkId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/util/Inet64Util;->networkId:Ljava/lang/String;

    .line 211
    sget-object v0, Lanet/channel/util/Inet64Util;->ipStackMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lanet/channel/util/Inet64Util;->networkId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-static {}, Lanet/channel/util/Inet64Util;->detectIpStack()I

    move-result v0

    .line 216
    sget-object v1, Lanet/channel/util/Inet64Util;->ipStackMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lanet/channel/util/Inet64Util;->networkId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v1, Lanet/channel/statist/NetTypeStat;

    invoke-direct {v1}, Lanet/channel/statist/NetTypeStat;-><init>()V

    .line 219
    iput v0, v1, Lanet/channel/statist/NetTypeStat;->ipStackType:I

    .line 221
    sget-object v2, Lanet/channel/util/Inet64Util;->networkId:Ljava/lang/String;

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_1

    .line 225
    :cond_2
    :goto_0
    new-instance v0, Lanet/channel/util/Inet64Util$1;

    invoke-direct {v0, v2, v1}, Lanet/channel/util/Inet64Util$1;-><init>(Ljava/lang/String;Lanet/channel/statist/NetTypeStat;)V

    const-wide/16 v1, 0x5dc

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    :cond_3
    :goto_1
    return-void
.end method
