.class final Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;
.super Ljava/lang/Object;
.source "RequestImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/internal/RequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnReadCompletedRunnable"
.end annotation


# instance fields
.field mByteBuffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;


# direct methods
.method private constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/internal/RequestImpl$1;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$100(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$200(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    monitor-exit v1

    return-void

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$302(Lcom/alibaba/mbg/unet/internal/RequestImpl;Z)Z

    .line 119
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$500(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/Request$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    iget-object v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v3}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$400(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/mbg/unet/Request$Callback;->onReadCompleted(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 119
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 122
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v1, v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$600(Lcom/alibaba/mbg/unet/internal/RequestImpl;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
