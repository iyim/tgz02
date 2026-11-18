.class Lcom/alibaba/analytics/core/ipv6/SampleIpv6Listener;
.super Ljava/lang/Object;
.source "SampleIpv6Listener.java"

# interfaces
.implements Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;


# instance fields
.field private mSample:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/alibaba/analytics/core/ipv6/SampleIpv6Listener;->mSample:I

    .line 15
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    const-string/jumbo v1, "sample_ipv6"

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/analytics/core/ipv6/SampleIpv6Listener;->parseConfig(Ljava/lang/String;)V

    return-void
.end method

.method private parseConfig(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "parseConfig value"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string v2, "SampleIpv6Listener"

    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/analytics/core/ipv6/SampleIpv6Listener;->mSample:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    iput v1, p0, Lcom/alibaba/analytics/core/ipv6/SampleIpv6Listener;->mSample:I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public isEnableBySample()Z
    .locals 6

    .line 35
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "ffffffffffffffffffffffff"

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x4

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "hashcode"

    aput-object v3, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string/jumbo v5, "sample"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget v5, p0, Lcom/alibaba/analytics/core/ipv6/SampleIpv6Listener;->mSample:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "SampleIpv6Listener"

    invoke-static {v3, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    rem-int/lit16 v0, v0, 0x2710

    iget v2, p0, Lcom/alibaba/analytics/core/ipv6/SampleIpv6Listener;->mSample:I

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2}, Lcom/alibaba/analytics/core/ipv6/SampleIpv6Listener;->parseConfig(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
