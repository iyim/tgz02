.class public Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;
.super Ljava/lang/Object;
.source "NativeDevice.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/device/IDevice;


# instance fields
.field mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/device/IDevice;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    return-void
.end method


# virtual methods
.method public cleanAllPlay()V
    .locals 1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/device/IDevice;->cleanAllPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getDeviceInfo()Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/device/IDevice;->getDeviceInfo()Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/device/IDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenStatus()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/device/IDevice;->getScreenStatus()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSysProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/device/IDevice;->getSysProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasNetwork()Z
    .locals 1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/device/IDevice;->hasNetwork()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFirstStart()Z
    .locals 1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/device/IDevice;->isFirstStart()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isForbidden()Z
    .locals 1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/device/IDevice;->isForbidden()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isForbiddenSession()Z
    .locals 1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/device/IDevice;->isForbiddenSession()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHomePage()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/device/NativeDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/device/IDevice;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/device/IDevice;->isHomePage()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
