.class Lcom/alibaba/ailabs/avesdk/AVEClient$8$1;
.super Ljava/lang/Object;
.source "AVEClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/avesdk/AVEClient$8;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/avesdk/AVEClient$8;

.field final synthetic val$reader:Landroid/media/ImageReader;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/avesdk/AVEClient$8;Landroid/media/ImageReader;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$8$1;->this$1:Lcom/alibaba/ailabs/avesdk/AVEClient$8;

    iput-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$8$1;->val$reader:Landroid/media/ImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 491
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "ImagerReader_callback"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 492
    const-class v0, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$8$1;->val$reader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :try_start_1
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 496
    iget-object v4, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$8$1;->this$1:Lcom/alibaba/ailabs/avesdk/AVEClient$8;

    iget-object v4, v4, Lcom/alibaba/ailabs/avesdk/AVEClient$8;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v4}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$2000(Lcom/alibaba/ailabs/avesdk/AVEClient;)[B

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v2, v4, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 497
    iget-object v4, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$8$1;->this$1:Lcom/alibaba/ailabs/avesdk/AVEClient$8;

    iget-object v4, v4, Lcom/alibaba/ailabs/avesdk/AVEClient$8;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v4}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$2100(Lcom/alibaba/ailabs/avesdk/AVEClient;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$8$1;->this$1:Lcom/alibaba/ailabs/avesdk/AVEClient$8;

    iget-object v5, v5, Lcom/alibaba/ailabs/avesdk/AVEClient$8;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v5}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$2100(Lcom/alibaba/ailabs/avesdk/AVEClient;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v2, v4, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 498
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$8$1;->this$1:Lcom/alibaba/ailabs/avesdk/AVEClient$8;

    iget-object v2, v2, Lcom/alibaba/ailabs/avesdk/AVEClient$8;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$2200(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$8$1;->this$1:Lcom/alibaba/ailabs/avesdk/AVEClient$8;

    iget-object v3, v3, Lcom/alibaba/ailabs/avesdk/AVEClient$8;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$2100(Lcom/alibaba/ailabs/avesdk/AVEClient;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;->eventCallback([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 500
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/avesdk/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 505
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
