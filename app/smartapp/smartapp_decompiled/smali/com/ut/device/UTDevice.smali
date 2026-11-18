.class public Lcom/ut/device/UTDevice;
.super Ljava/lang/Object;
.source "UTDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public static getAidAsync(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/ut/device/AidCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUtdidForUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdidForUpdate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->setAppChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->setAppkey(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebug(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->setDebug(Z)V

    return-void
.end method

.method public static setOldMode(Landroid/content/Context;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 56
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/Variables;->initContext(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ta/audid/Variables;->setOldMode(Z)V

    :cond_0
    return-void
.end method
