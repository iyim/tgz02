.class Lcom/alibaba/ailabs/avesdk/AVEClient$9;
.super Ljava/lang/Object;
.source "AVEClient.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/avesdk/AVEClient;->registerCameraDataCallback(Ljava/lang/String;IILcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;)Lcom/alibaba/ailabs/avesdk/AVECameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field final synthetic val$cameraDataCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

.field final synthetic val$singleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/avesdk/AVEClient;Ljava/util/concurrent/ExecutorService;Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$9;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iput-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$9;->val$singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$9;->val$cameraDataCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$9;->val$singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/avesdk/AVEClient$9$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/avesdk/AVEClient$9$1;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient$9;Landroid/media/ImageReader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
