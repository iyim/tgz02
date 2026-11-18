.class Lcom/alibaba/ailabs/avesdk/AVEClient$8;
.super Ljava/lang/Object;
.source "AVEClient.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/avesdk/AVEClient;->registerCameraDataCallback(IILcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/avesdk/AVEClient;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$8;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$8;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1900(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$8;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1900(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/avesdk/AVEClient$8$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/avesdk/AVEClient$8$1;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient$8;Landroid/media/ImageReader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
