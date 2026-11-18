.class Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$1;
.super Ljava/lang/Object;
.source "UnetManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->initSdkManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Landroid/content/Context;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$1;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$1;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->ensureInitializedOnMainThread(Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$1;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->access$000(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$1;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    .line 83
    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->access$100(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$1;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-static {v3}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->access$200(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)Lcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;

    move-result-object v3

    const/4 v4, 0x2

    .line 82
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/mbg/unet/internal/UnetManagerJni;->nativeInitManagerOnMainThread(JLcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;I)V

    .line 84
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$1;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->access$300(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 85
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$1;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->access$400(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)V

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
