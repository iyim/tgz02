.class final Lcom/alibaba/mbg/unet/internal/ContextManager$1;
.super Ljava/lang/Object;
.source "ContextManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/ContextManager;->initNativeLibAndNetwork(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$afterInitRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/ContextManager$1;->val$afterInitRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 154
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->access$000()V

    .line 155
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->access$200()Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->initNetworkNotifier(Landroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ContextManager$1;->val$afterInitRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
