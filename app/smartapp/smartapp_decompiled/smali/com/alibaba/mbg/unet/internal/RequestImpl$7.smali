.class Lcom/alibaba/mbg/unet/internal/RequestImpl$7;
.super Ljava/lang/Object;
.source "RequestImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/RequestImpl;->onResponseStarted(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
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

    .line 1450
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$7;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1453
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$7;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$100(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1458
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$7;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$200(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    monitor-exit v0

    return-void

    .line 1464
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$7;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$302(Lcom/alibaba/mbg/unet/internal/RequestImpl;Z)Z

    .line 1465
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1471
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$7;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$500(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/Request$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$7;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$7;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$400(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mbg/unet/Request$Callback;->onResponseStarted(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1476
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$7;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v1, v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$600(Lcom/alibaba/mbg/unet/internal/RequestImpl;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 1465
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
