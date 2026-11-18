.class Lcom/alibaba/mbg/unet/internal/RequestImpl$2;
.super Ljava/lang/Object;
.source "RequestImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/RequestImpl;->startImpl(Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$2;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$2;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$900(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$2;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->initializeWithRequest(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$2;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$100(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$2;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$200(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    monitor-exit v0

    return-void

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$2;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$900(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$2;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1000(Lcom/alibaba/mbg/unet/internal/RequestImpl;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->attachNativeAdapterToRequest(J)V

    .line 391
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$2;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1100(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    .line 392
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
