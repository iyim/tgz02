.class Lcom/alibaba/ailabs/tg/utils/LocationUtils$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationUtils.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/utils/LocationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLocationListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/tg/utils/LocationUtils$1;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/utils/LocationUtils$MyLocationListener;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 266
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/LocationUtils;->access$100()Lcom/alibaba/ailabs/tg/utils/LocationUtils$OnLocationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/LocationUtils;->access$100()Lcom/alibaba/ailabs/tg/utils/LocationUtils$OnLocationChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/tg/utils/LocationUtils$OnLocationChangeListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 280
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/LocationUtils;->access$100()Lcom/alibaba/ailabs/tg/utils/LocationUtils$OnLocationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/LocationUtils;->access$100()Lcom/alibaba/ailabs/tg/utils/LocationUtils$OnLocationChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/tg/utils/LocationUtils$OnLocationChangeListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_0
    const-string p1, "LocationUtils"

    if-eqz p2, :cond_3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u53ef\u89c1\u72b6\u6001"

    .line 285
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p2, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u6682\u505c\u670d\u52a1\u72b6\u6001"

    .line 291
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p2, "\u5f53\u524dGPS\u72b6\u6001\u4e3a\u670d\u52a1\u533a\u5916\u72b6\u6001"

    .line 288
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
