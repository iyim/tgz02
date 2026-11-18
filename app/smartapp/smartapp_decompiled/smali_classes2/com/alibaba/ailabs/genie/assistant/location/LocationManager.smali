.class public Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$LocationHolder;
    }
.end annotation


# instance fields
.field private locationCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;->locationCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;->locationCount:I

    return p0
.end method

.method static synthetic access$208(Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;)I
    .locals 2

    .line 14
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;->locationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;->locationCount:I

    return v0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;
    .locals 1

    .line 22
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$LocationHolder;->access$000()Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public startLocation(Landroid/content/Context;)V
    .locals 2

    .line 32
    :try_start_0
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;

    invoke-direct {p1, p0, v0}, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;Lcom/amap/api/location/AMapLocationClient;)V

    .line 71
    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 73
    new-instance p1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 75
    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 76
    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 77
    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiScan(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 78
    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 79
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 80
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AMap"

    const-string v1, "AMapLocation error"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
