.class public interface abstract Lcom/alibaba/ailabs/geniesdk/device/IDevice;
.super Ljava/lang/Object;
.source "IDevice.java"


# static fields
.field public static final ACCOUNT_MODE_CAR:I = 0x4

.field public static final ACCOUNT_MODE_LOP_NOR:I = 0x0

.field public static final ACCOUNT_MODE_LOP_NOR_GUEST:I = 0x1

.field public static final ACCOUNT_MODE_NON_LOP_NOR:I = 0x2

.field public static final ACCOUNT_MODE_THIRD_PARTY:I = 0x3


# virtual methods
.method public abstract cleanAllPlay()V
.end method

.method public abstract getDeviceInfo()Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;
.end method

.method public abstract getMacAddr()Ljava/lang/String;
.end method

.method public abstract getScreenStatus()Z
.end method

.method public abstract getSysProp(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasNetwork()Z
.end method

.method public abstract isFirstStart()Z
.end method

.method public abstract isForbidden()Z
.end method

.method public abstract isForbiddenSession()Z
.end method

.method public abstract isHomePage()Z
.end method
