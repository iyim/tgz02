.class public Lcom/aligenie/ags/analytics/collector/TemperatureCollector;
.super Lc/b/a/b/h/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/b/a/b/h/k;-><init>(Lc/b/a/b/h/i$a;)V

    sget-object p1, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_START:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    invoke-static {}, Lc/b/a/b/o/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "MagicBox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ailabs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "event_type"

    const-string v1, "system"

    const-string v3, "event_name"

    const-string v4, "thermal"

    .line 2
    invoke-static {v0, v1, v3, v4}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v0

    const-string v1, "/sys/class/thermal/thermal_zone0/temp"

    invoke-static {v1}, Lcom/aligenie/ags/analytics/jni/TemperatureReader;->read(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "zone0"

    invoke-virtual {v0, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "/sys/class/thermal/thermal_zone1/temp"

    invoke-static {v1}, Lcom/aligenie/ags/analytics/jni/TemperatureReader;->read(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "zone1"

    invoke-virtual {v0, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "/sys/class/thermal/thermal_zone2/temp"

    invoke-static {v1}, Lcom/aligenie/ags/analytics/jni/TemperatureReader;->read(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "zone2"

    invoke-virtual {v0, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "/sys/class/thermal/thermal_zone3/temp"

    invoke-static {v1}, Lcom/aligenie/ags/analytics/jni/TemperatureReader;->read(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "zone3"

    invoke-virtual {v0, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "/sys/class/thermal/thermal_zone4/temp"

    invoke-static {v1}, Lcom/aligenie/ags/analytics/jni/TemperatureReader;->read(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "zone4"

    invoke-virtual {v0, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v0}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    :cond_2
    return v2
.end method
