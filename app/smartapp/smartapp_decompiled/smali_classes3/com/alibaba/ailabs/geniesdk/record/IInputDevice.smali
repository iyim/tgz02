.class public interface abstract Lcom/alibaba/ailabs/geniesdk/record/IInputDevice;
.super Ljava/lang/Object;
.source "IInputDevice.java"


# static fields
.field public static final INPUT_DEVICE_MODE_MANUAL_CONTROL:I = 0x2

.field public static final INPUT_DEVICE_MODE_PROTOCAL:I = 0x1

.field public static final INPUT_DEVICE_MODE_WAKEUP:I = 0x0

.field public static final INPUT_DEVICE_TYPE_FAR_MICROPHONES:I = 0x3

.field public static final INPUT_DEVICE_TYPE_GLOBAL_DEFAULT:I = 0xf

.field public static final INPUT_DEVICE_TYPE_REMOTE_CONTROL:I = 0x0

.field public static final INPUT_DEVICE_TYPE_REMOTE_SPEAKER:I = 0x2

.field public static final INPUT_DEVICE_TYPE_REMOTE_TV_ASSISTANT:I = 0x1


# virtual methods
.method public abstract deinit()V
.end method

.method public abstract enableWakeup(Z)V
.end method

.method public abstract exitTalk(I)V
.end method

.method public abstract init()V
.end method

.method public abstract setInputDeviceListener(Lcom/alibaba/ailabs/geniesdk/record/IInputDeviceListener;)V
.end method

.method public abstract startTalk(Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;)I
.end method

.method public abstract stopTalk(I)I
.end method
