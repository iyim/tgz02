.class public abstract Lcom/alibaba/mbg/upaas/UpaasManager;
.super Ljava/lang/Object;
.source "UpaasManager.java"


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/upaas/UpaasManager$Logger;,
        Lcom/alibaba/mbg/upaas/UpaasManager$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getUpaasState()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->getUpaasState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVid()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->getVid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/alibaba/mbg/unet/UnetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->init(Lcom/alibaba/mbg/unet/UnetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isInited()Z
    .locals 1

    .line 45
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->isInited()Z

    move-result v0

    return v0
.end method

.method public static sendRequestViaUpaas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-static {p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->sendRequestViaUpaas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendRmbReceipt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-static {p0, p1}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->sendRmbReceipt(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setBackgroudHeartbeatTimeoutInSecond(I)V
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->setBackgroudHeartbeatTimeoutInSecond(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setCallback(Lcom/alibaba/mbg/upaas/UpaasManager$Callback;)V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->setCallback(Lcom/alibaba/mbg/upaas/UpaasManager$Callback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setDmExData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->setDmExData(Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setLogger(Lcom/alibaba/mbg/upaas/UpaasManager$Logger;)V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->setLogger(Lcom/alibaba/mbg/upaas/UpaasManager$Logger;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setRmbMessageCallback(Lcom/alibaba/mbg/upaas/RmbMessageCallback;)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->setRmbMessageCallback(Lcom/alibaba/mbg/upaas/RmbMessageCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static tryUpaasHeartbeat()Ljava/lang/String;
    .locals 1

    .line 87
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->tryUpaasHeartbeat()V

    .line 88
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->getUpaasState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
