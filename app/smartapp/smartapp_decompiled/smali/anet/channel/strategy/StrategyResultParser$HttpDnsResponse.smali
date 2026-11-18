.class public Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;
.super Ljava/lang/Object;
.source "StrategyResultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyResultParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDnsResponse"
.end annotation


# instance fields
.field public final clientIp:Ljava/lang/String;

.field public final configVersion:I

.field public final dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

.field public final fcLevel:I

.field public final fcTime:I

.field public final hrTasks:[Lanet/channel/strategy/StrategyResultParser$HrTask;

.field public final userId:Ljava/lang/String;

.field public final utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ip"

    .line 158
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->clientIp:Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "uid"

    .line 159
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->userId:Ljava/lang/String;

    const-string/jumbo v1, "utdid"

    .line 160
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->utdid:Ljava/lang/String;

    const-string v1, "cv"

    .line 161
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->configVersion:I

    const-string v1, "fcl"

    .line 162
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->fcLevel:I

    const-string v1, "fct"

    .line 163
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->fcTime:I

    const-string v1, "dns"

    .line 164
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 167
    new-array v4, v3, [Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    iput-object v4, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 169
    iget-object v5, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    new-instance v6, Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lanet/channel/strategy/StrategyResultParser$DnsInfo;-><init>(Lorg/json/JSONObject;)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iput-object v0, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    :cond_1
    const-string v1, "hrTask"

    .line 175
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 177
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 178
    new-array v1, v0, [Lanet/channel/strategy/StrategyResultParser$HrTask;

    iput-object v1, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->hrTasks:[Lanet/channel/strategy/StrategyResultParser$HrTask;

    :goto_1
    if-ge v2, v0, :cond_3

    .line 180
    iget-object v1, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->hrTasks:[Lanet/channel/strategy/StrategyResultParser$HrTask;

    new-instance v3, Lanet/channel/strategy/StrategyResultParser$HrTask;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lanet/channel/strategy/StrategyResultParser$HrTask;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    :cond_2
    iput-object v0, p0, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->hrTasks:[Lanet/channel/strategy/StrategyResultParser$HrTask;

    :cond_3
    return-void
.end method
