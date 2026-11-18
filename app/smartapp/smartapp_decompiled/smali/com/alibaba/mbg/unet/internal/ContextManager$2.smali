.class final Lcom/alibaba/mbg/unet/internal/ContextManager$2;
.super Ljava/lang/Object;
.source "ContextManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/ContextManager;->getClientNetManager()Lcom/alibaba/mbg/unet/UnetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 194
    new-instance v0, Lcom/alibaba/mbg/unet/internal/ContextManager$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mbg/unet/internal/ContextManager$2$1;-><init>(Lcom/alibaba/mbg/unet/internal/ContextManager$2;)V

    .line 202
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 205
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
