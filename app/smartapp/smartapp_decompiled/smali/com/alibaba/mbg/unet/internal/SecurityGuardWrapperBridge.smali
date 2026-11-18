.class public final Lcom/alibaba/mbg/unet/internal/SecurityGuardWrapperBridge;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private a:Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;


# direct methods
.method public constructor <init>(Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/SecurityGuardWrapperBridge;->a:Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;

    return-void
.end method


# virtual methods
.method public final decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/SecurityGuardWrapperBridge;->a:Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final signRequest(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/SecurityGuardWrapperBridge;->a:Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;->signRequest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
