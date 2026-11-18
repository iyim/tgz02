.class public Lcom/alibaba/analytics/AnalyticsService;
.super Landroid/app/Service;
.source "AnalyticsService.java"


# instance fields
.field monitor:Lcom/alibaba/analytics/IAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/alibaba/analytics/AnalyticsService;->monitor:Lcom/alibaba/analytics/IAnalytics;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 13
    iget-object p1, p0, Lcom/alibaba/analytics/AnalyticsService;->monitor:Lcom/alibaba/analytics/IAnalytics;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/alibaba/analytics/AnalyticsImp;

    invoke-virtual {p0}, Lcom/alibaba/analytics/AnalyticsService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/analytics/AnalyticsImp;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/alibaba/analytics/AnalyticsService;->monitor:Lcom/alibaba/analytics/IAnalytics;

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/alibaba/analytics/AnalyticsService;->monitor:Lcom/alibaba/analytics/IAnalytics;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/analytics/AnalyticsService;->monitor:Lcom/alibaba/analytics/IAnalytics;

    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/analytics/IAnalytics;->triggerUpload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/analytics/AnalyticsService;->monitor:Lcom/alibaba/analytics/IAnalytics;

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/analytics/IAnalytics;->triggerUpload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method
