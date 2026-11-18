.class public Landroid/taobao/windvane/monitor/WVMonitorData$resStat;
.super Ljava/lang/Object;
.source "WVMonitorData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/monitor/WVMonitorData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "resStat"
.end annotation


# instance fields
.field public end:J

.field public fromType:I

.field public netStat:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

.field public protocolType:Ljava/lang/String;

.field public start:J

.field public statusCode:I

.field public tcpTime:J

.field public verifyError:I

.field public verifyResTime:J

.field public verifyTime:J

.field public via:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyError:I

    const-wide/16 v0, 0x0

    .line 150
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyResTime:J

    .line 151
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyTime:J

    .line 152
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->tcpTime:J

    const-string v0, ""

    .line 153
    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->protocolType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toUtMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->netStat:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {v0}, Landroid/taobao/windvane/monitor/WVMonitorData;->toUtMap(Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)Ljava/util/Map;

    move-result-object v0

    .line 166
    :goto_0
    iget v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->statusCode:I

    if-lez v1, :cond_1

    .line 167
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "statusCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->via:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v2, "via"

    .line 170
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_2
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->start:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 173
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "start"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_3
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->end:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 176
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "end"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_4
    iget v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->fromType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fromType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->protocolType:Ljava/lang/String;

    const-string v2, "protocolType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->tcpTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tcpTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyError:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "verifyError"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyResTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "verifyResTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-wide v1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$resStat;->verifyTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "verifyTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
