.class public final Lcom/alibaba/mbg/unet/internal/RmbMessageCallbackBridge;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/alibaba/mbg/upaas/RmbMessageCallback;


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private a:Lcom/alibaba/mbg/upaas/RmbMessageCallback;


# direct methods
.method public constructor <init>(Lcom/alibaba/mbg/upaas/RmbMessageCallback;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RmbMessageCallbackBridge;->a:Lcom/alibaba/mbg/upaas/RmbMessageCallback;

    return-void
.end method


# virtual methods
.method public final onReceivedData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RmbMessageCallbackBridge;->a:Lcom/alibaba/mbg/upaas/RmbMessageCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/mbg/upaas/RmbMessageCallback;->onReceivedData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
