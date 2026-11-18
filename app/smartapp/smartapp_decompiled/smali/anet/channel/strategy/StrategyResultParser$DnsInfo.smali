.class public Lanet/channel/strategy/StrategyResultParser$DnsInfo;
.super Ljava/lang/Object;
.source "StrategyResultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyResultParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsInfo"
.end annotation


# instance fields
.field public final aisleses:[Lanet/channel/strategy/StrategyResultParser$Aisles;

.field public final clear:Z

.field public final cname:Ljava/lang/String;

.field public final effectNow:Z

.field public final host:Ljava/lang/String;

.field public final ips:[Ljava/lang/String;

.field public final safeAisles:Ljava/lang/String;

.field public final sips:[Ljava/lang/String;

.field public final strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

.field public final ttl:I

.field public final unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "host"

    .line 93
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    const-string/jumbo v0, "ttl"

    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->ttl:I

    const-string/jumbo v0, "safeAisles"

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->safeAisles:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "cname"

    .line 96
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->cname:Ljava/lang/String;

    const-string/jumbo v1, "unit"

    .line 97
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->unit:Ljava/lang/String;

    const-string v1, "clear"

    .line 98
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->clear:Z

    const-string v1, "effectNow"

    .line 99
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->effectNow:Z

    const-string v1, "ips"

    .line 101
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 104
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->ips:[Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 106
    iget-object v5, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->ips:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    :cond_1
    iput-object v0, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->ips:[Ljava/lang/String;

    :cond_2
    const-string/jumbo v1, "sips"

    .line 112
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 114
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 115
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->sips:[Ljava/lang/String;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    .line 117
    iget-object v5, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->sips:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 120
    :cond_3
    iput-object v0, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->sips:[Ljava/lang/String;

    :cond_4
    const-string v1, "aisles"

    .line 123
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 125
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 126
    new-array v4, v3, [Lanet/channel/strategy/StrategyResultParser$Aisles;

    iput-object v4, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->aisleses:[Lanet/channel/strategy/StrategyResultParser$Aisles;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_6

    .line 128
    iget-object v5, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->aisleses:[Lanet/channel/strategy/StrategyResultParser$Aisles;

    new-instance v6, Lanet/channel/strategy/StrategyResultParser$Aisles;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lanet/channel/strategy/StrategyResultParser$Aisles;-><init>(Lorg/json/JSONObject;)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 131
    :cond_5
    iput-object v0, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->aisleses:[Lanet/channel/strategy/StrategyResultParser$Aisles;

    :cond_6
    const-string/jumbo v1, "strategies"

    .line 134
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 135
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 136
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 137
    new-array v1, v0, [Lanet/channel/strategy/StrategyResultParser$Strategy;

    iput-object v1, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    :goto_4
    if-ge v2, v0, :cond_8

    .line 139
    iget-object v1, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    new-instance v3, Lanet/channel/strategy/StrategyResultParser$Strategy;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lanet/channel/strategy/StrategyResultParser$Strategy;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 142
    :cond_7
    iput-object v0, p0, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    :cond_8
    return-void
.end method
