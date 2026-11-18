.class public Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;
.super Ljava/lang/Object;
.source "NativeInputDevice.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/record/IInputDeviceListener;
.implements Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;


# instance fields
.field private mInputDevice:Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;

.field private mNative:J


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;->mInputDevice:Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;

    .line 14
    invoke-interface {p1, p0}, Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;->setInputDeviceListener(Lcom/alibaba/ailabs/geniesdk/record/IInputDeviceListener;)V

    return-void
.end method

.method private getInputDevice()Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;->mInputDevice:Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;

    return-object v0
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;->getInputDevice()Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;

    move-result-object v0

    .line 54
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;->deinit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enableWakeup(Z)V
    .locals 1

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;->getInputDevice()Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;

    move-result-object v0

    .line 98
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;->enableWakeup(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public exitTalk(I)V
    .locals 1

    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;->getInputDevice()Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;

    move-result-object v0

    .line 87
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;->exitTalk(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;->getInputDevice()Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;

    move-result-object v0

    .line 43
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public native onFeed(I[BI)I
.end method

.method public native onStartTalk(Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;Lcom/alibaba/ailabs/geniesdk/record/WakeUpRet;)I
.end method

.method public native onStopTalk(ILcom/alibaba/ailabs/geniesdk/record/WakeUpEndInfo;)V
.end method

.method public native onStream(ILjava/lang/String;ZZ)V
.end method

.method public native onVolume(II)V
.end method

.method public setInputDeviceListener(Lcom/alibaba/ailabs/geniesdk/record/IInputDeviceListener;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public startTalk(Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;)I
    .locals 1

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;->getInputDevice()Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;

    move-result-object v0

    .line 64
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;->startTalk(Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public stopTalk(I)I
    .locals 1

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/NativeInputDevice;->getInputDevice()Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;

    move-result-object v0

    .line 75
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;->stopTalk(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method
