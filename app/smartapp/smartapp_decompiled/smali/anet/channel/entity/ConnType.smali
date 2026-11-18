.class public Lanet/channel/entity/ConnType;
.super Ljava/lang/Object;
.source "ConnType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/entity/ConnType$TypeLevel;
    }
.end annotation


# static fields
.field public static final H2S:Ljava/lang/String; = "h2s"

.field public static HTTP:Lanet/channel/entity/ConnType; = null

.field public static final HTTP2:Ljava/lang/String; = "http2"

.field public static HTTPS:Lanet/channel/entity/ConnType; = null

.field public static final PK_ACS:Ljava/lang/String; = "acs"

.field public static final PK_AUTO:Ljava/lang/String; = "auto"

.field public static final PK_CDN:Ljava/lang/String; = "cdn"

.field public static final PK_OPEN:Ljava/lang/String; = "open"

.field public static final QUIC:Ljava/lang/String; = "quic"

.field public static final QUIC_PLAIN:Ljava/lang/String; = "quicplain"

.field public static final RTT_0:Ljava/lang/String; = "0rtt"

.field public static final RTT_1:Ljava/lang/String; = "1rtt"

.field public static final SPDY:Ljava/lang/String; = "spdy"

.field private static connTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lanet/channel/strategy/ConnProtocol;",
            "Lanet/channel/entity/ConnType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private spdyProtocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string v1, "http"

    invoke-direct {v0, v1}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    .line 39
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string v1, "https"

    invoke-direct {v0, v1}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    return-void
.end method

.method public static compare(Lanet/channel/entity/ConnType;Lanet/channel/entity/ConnType;)I
    .locals 0

    .line 191
    invoke-direct {p0}, Lanet/channel/entity/ConnType;->getPriority()I

    move-result p0

    invoke-direct {p1}, Lanet/channel/entity/ConnType;->getPriority()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private getPriority()I
    .locals 2

    .line 181
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 55
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    sget-object p0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    return-object p0

    .line 57
    :cond_1
    iget-object v1, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    sget-object p0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    return-object p0

    .line 61
    :cond_2
    sget-object v1, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v2, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    sget-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanet/channel/entity/ConnType;

    monitor-exit v1

    return-object p0

    .line 66
    :cond_3
    new-instance v2, Lanet/channel/entity/ConnType;

    invoke-virtual {p0}, Lanet/channel/strategy/ConnProtocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    iput-object v3, v2, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    const-string v3, "http2"

    .line 69
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 70
    iget v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "spdy"

    .line 71
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 72
    iget v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_0

    :cond_5
    const-string v3, "h2s"

    .line 73
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x28

    .line 74
    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "quic"

    .line 75
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0xc

    .line 76
    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_0

    :cond_7
    const-string/jumbo v3, "quicplain"

    .line 77
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x800c

    .line 78
    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    .line 82
    :cond_8
    :goto_0
    iget v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    if-nez v3, :cond_9

    .line 83
    monitor-exit v1

    return-object v0

    .line 86
    :cond_9
    iget-object v3, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 87
    iget v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    const-string v3, "1rtt"

    .line 89
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 90
    iget v0, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_1

    :cond_a
    const-string v3, "0rtt"

    .line 91
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 92
    iget v0, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v2, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_1

    .line 94
    :cond_b
    monitor-exit v1

    return-object v0

    .line 98
    :cond_c
    :goto_1
    sget-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    .line 100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 153
    instance-of v0, p1, Lanet/channel/entity/ConnType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 160
    :cond_1
    iget-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    nop

    nop

    iget-object p1, p1, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTnetConType()I
    .locals 1

    .line 104
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    return v0
.end method

.method public getTnetPublicKey(Z)I
    .locals 2

    .line 110
    iget-object v0, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    const-string v1, "cdn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v0

    sget-object v1, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    const-string v1, "open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 p1, 0xb

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    const-string v1, "acs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getType()I
    .locals 1

    .line 173
    sget-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    sget v0, Lanet/channel/entity/SessionType;->LONG_LINK:I

    return v0

    .line 174
    :cond_1
    :goto_0
    sget v0, Lanet/channel/entity/SessionType;->SHORT_LINK:I

    return v0
.end method

.method public getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    invoke-virtual {p0}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->HTTP:Lanet/channel/entity/ConnType$TypeLevel;

    return-object v0

    .line 168
    :cond_0
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    return-object v0
.end method

.method public isH2S()Z
    .locals 2

    .line 128
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHttpType()Z
    .locals 1

    .line 136
    sget-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPublicKeyAuto()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isQuic()Z
    .locals 1

    .line 132
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSSL()Z
    .locals 2

    .line 140
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    return-object v0
.end method
