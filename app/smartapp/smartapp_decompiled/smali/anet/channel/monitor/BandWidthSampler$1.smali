.class Lanet/channel/monitor/BandWidthSampler$1;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/monitor/BandWidthSampler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/monitor/BandWidthSampler;


# direct methods
.method constructor <init>(Lanet/channel/monitor/BandWidthSampler;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lanet/channel/monitor/BandWidthSampler$1;->this$0:Lanet/channel/monitor/BandWidthSampler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lanet/channel/monitor/BandWidthSampler$1;->this$0:Lanet/channel/monitor/BandWidthSampler;

    invoke-static {p1}, Lanet/channel/monitor/BandWidthSampler;->access$100(Lanet/channel/monitor/BandWidthSampler;)Lanet/channel/monitor/NetWorkKalmanFilter;

    move-result-object p1

    invoke-virtual {p1}, Lanet/channel/monitor/NetWorkKalmanFilter;->ResetKalmanParams()V

    const-wide/16 v0, 0x0

    .line 47
    sput-wide v0, Lanet/channel/monitor/BandWidthSampler;->mSpeedKalmanCount:J

    .line 48
    iget-object p1, p0, Lanet/channel/monitor/BandWidthSampler$1;->this$0:Lanet/channel/monitor/BandWidthSampler;

    invoke-virtual {p1}, Lanet/channel/monitor/BandWidthSampler;->startNetworkMeter()V

    return-void
.end method
