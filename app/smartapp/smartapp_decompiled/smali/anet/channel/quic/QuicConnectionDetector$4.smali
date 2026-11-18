.class final Lanet/channel/quic/QuicConnectionDetector$4;
.super Ljava/lang/Object;
.source "QuicConnectionDetector.java"

# interfaces
.implements Lanet/channel/strategy/IStrategyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/quic/QuicConnectionDetector;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lanet/channel/quic/QuicConnectionDetector$4;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStrategyUpdated(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V
    .locals 7

    if-eqz p1, :cond_6

    .line 136
    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 140
    :goto_0
    iget-object v2, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 141
    iget-object v2, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->host:Ljava/lang/String;

    .line 142
    iget-object v3, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->dnsInfo:[Lanet/channel/strategy/StrategyResultParser$DnsInfo;

    aget-object v3, v3, v1

    iget-object v3, v3, Lanet/channel/strategy/StrategyResultParser$DnsInfo;->aisleses:[Lanet/channel/strategy/StrategyResultParser$Aisles;

    if-eqz v3, :cond_5

    .line 143
    array-length v4, v3

    if-gtz v4, :cond_1

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    .line 146
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 147
    aget-object v5, v3, v4

    iget-object v5, v5, Lanet/channel/strategy/StrategyResultParser$Aisles;->protocol:Ljava/lang/String;

    const-string/jumbo v6, "quic"

    .line 148
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "quicplain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 149
    :cond_3
    :goto_2
    invoke-static {}, Lanet/channel/quic/QuicConnectionDetector;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 150
    invoke-static {v2}, Lanet/channel/quic/QuicConnectionDetector;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    iget-object p1, p0, Lanet/channel/quic/QuicConnectionDetector$4;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 152
    invoke-static {}, Lanet/channel/quic/QuicConnectionDetector;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "quic_detector_host"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    :cond_4
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object p1

    invoke-static {p1}, Lanet/channel/quic/QuicConnectionDetector;->startDetect(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    return-void

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return-void
.end method
