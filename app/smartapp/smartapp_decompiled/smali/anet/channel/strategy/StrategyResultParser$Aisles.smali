.class public Lanet/channel/strategy/StrategyResultParser$Aisles;
.super Ljava/lang/Object;
.source "StrategyResultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyResultParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aisles"
.end annotation


# instance fields
.field public final cto:I

.field public final heartbeat:I

.field public final port:I

.field public final protocol:Ljava/lang/String;

.field public final publicKey:Ljava/lang/String;

.field public final retry:I

.field public final rto:I

.field public final rtt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "port"

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/StrategyResultParser$Aisles;->port:I

    const-string v0, "protocol"

    .line 50
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyResultParser$Aisles;->protocol:Ljava/lang/String;

    const-string v0, "cto"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/StrategyResultParser$Aisles;->cto:I

    const-string/jumbo v0, "rto"

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/StrategyResultParser$Aisles;->rto:I

    const-string/jumbo v0, "retry"

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/StrategyResultParser$Aisles;->retry:I

    const-string v0, "heartbeat"

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/StrategyResultParser$Aisles;->heartbeat:I

    const-string/jumbo v0, "rtt"

    const-string v1, ""

    .line 55
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyResultParser$Aisles;->rtt:Ljava/lang/String;

    const-string v0, "publickey"

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/strategy/StrategyResultParser$Aisles;->publicKey:Ljava/lang/String;

    return-void
.end method
