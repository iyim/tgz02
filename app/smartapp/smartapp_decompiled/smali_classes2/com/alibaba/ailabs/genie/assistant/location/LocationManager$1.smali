.class Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;->startLocation(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;

.field final synthetic val$mLocationClient:Lcom/amap/api/location/AMapLocationClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;Lcom/amap/api/location/AMapLocationClient;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;->val$mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 38
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    const-string v1, "AMap"

    if-nez v0, :cond_1

    .line 39
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 41
    new-instance v2, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$GpsStatus;

    invoke-direct {v2}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$GpsStatus;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$GpsStatus;->latitude:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$GpsStatus;->longitude:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$GpsStatus;->city:Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p1

    const/16 v0, 0xcc

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get location success, latitude:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$GpsStatus;->latitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", longitude:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$GpsStatus;->longitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", city:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$GpsStatus;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;->val$mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;->val$mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;->access$200(Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;)I

    move-result v0

    const/4 v2, 0x5

    const-string v3, ", errInfo:"

    if-ge v0, v2, :cond_2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location error, ErrCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;->access$208(Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;)I

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;->val$mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;->val$mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    goto :goto_0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location error finish, ErrCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;->val$mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 65
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;->val$mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    :cond_3
    :goto_0
    return-void
.end method
