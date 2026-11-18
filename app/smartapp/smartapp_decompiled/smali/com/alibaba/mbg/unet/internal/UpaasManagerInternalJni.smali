.class public final Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;
    }
.end annotation

.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static a:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static native nativeGetUpaasState()Ljava/lang/String;
.end method

.method public static native nativeInit(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;)V
.end method

.method public static native nativeSendRequestViaUpaas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSendRmbReceipt(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetBackgroudHeartbeatTimeoutInSecond(I)V
.end method

.method public static native nativeSetCallback()V
.end method

.method public static native nativeSetExData([Ljava/lang/String;)V
.end method

.method public static native nativeSetRmbCallback(Lcom/alibaba/mbg/upaas/RmbMessageCallback;)V
.end method

.method public static native nativeTryUpaasHeartbeat()V
.end method

.method private static onLog(Ljava/lang/String;)V
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 67
    sget-object v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->a:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;->onLog(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static onUpaasStateChange(I)V
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 60
    sget-object v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->a:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;->onUpaasStateChange(I)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static onVidFetch(Ljava/lang/String;)V
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 53
    sget-object v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->a:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;->onVidFetch(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setCallback(Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;)V
    .locals 0

    .line 48
    sput-object p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->a:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
