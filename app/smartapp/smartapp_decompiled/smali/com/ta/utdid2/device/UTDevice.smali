.class public Lcom/ta/utdid2/device/UTDevice;
.super Ljava/lang/Object;
.source "UTDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "ffffffffffffffffffffffff"

    return-object p0

    .line 20
    :cond_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->initContext(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getOldMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdidOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_1
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ta/audid/Variables;->init()V

    .line 25
    invoke-static {}, Lcom/ta/audid/device/AppUtdid;->getInstance()Lcom/ta/audid/device/AppUtdid;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ta/audid/device/AppUtdid;->getUtdid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUtdidForUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "ffffffffffffffffffffffff"

    return-object p0

    .line 38
    :cond_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->initContext(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getOldMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdidForUpdateOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 42
    :cond_1
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ta/audid/Variables;->init()V

    .line 43
    invoke-static {}, Lcom/ta/audid/device/AppUtdid;->getInstance()Lcom/ta/audid/device/AppUtdid;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ta/audid/device/AppUtdid;->getUtdidFromFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUtdidForUpdateOld(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {p0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ta/utdid2/device/UTUtdid;->getValueForUpdate()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "ffffffffffffffffffffffff"

    :cond_1
    return-object p0
.end method

.method private static getUtdidOld(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 48
    invoke-static {p0}, Lcom/ta/utdid2/device/DeviceInfo;->getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "ffffffffffffffffffffffff"

    :goto_1
    return-object p0
.end method
