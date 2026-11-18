.class final Lcom/uc/webview/export/internal/setup/j$a;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/extension/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "location"

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/j$a;->a:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public final removeUpdates(Landroid/location/LocationListener;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/j$a;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public final requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/j$a;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    .line 196
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 198
    :catch_0
    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    const-string p2, "gps"

    .line 199
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 200
    invoke-virtual {v5, p1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/j$a;->a:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 202
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v6, p5

    .line 201
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_1
    return-void
.end method

.method public final requestLocationUpdatesWithUrl(Ljava/lang/String;JFLandroid/location/LocationListener;Ljava/lang/String;)V
    .locals 0

    .line 211
    invoke-virtual/range {p0 .. p5}, Lcom/uc/webview/export/internal/setup/j$a;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method
