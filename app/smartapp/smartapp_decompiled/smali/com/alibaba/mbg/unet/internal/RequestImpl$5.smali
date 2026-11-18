.class Lcom/alibaba/mbg/unet/internal/RequestImpl$5;
.super Ljava/lang/Object;
.source "RequestImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/RequestImpl;->failWithException(Lcom/alibaba/mbg/unet/RequestException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

.field final synthetic val$exception:Lcom/alibaba/mbg/unet/RequestException;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/RequestException;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$5;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$5;->val$exception:Lcom/alibaba/mbg/unet/RequestException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 634
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$5;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$100(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$5;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$200(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    monitor-exit v0

    return-void

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$5;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1400(Lcom/alibaba/mbg/unet/internal/RequestImpl;Z)V

    .line 639
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$5;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$500(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/Request$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$5;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$5;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$400(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$5;->val$exception:Lcom/alibaba/mbg/unet/RequestException;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mbg/unet/Request$Callback;->onFailed(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;Lcom/alibaba/mbg/unet/RequestException;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 639
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
