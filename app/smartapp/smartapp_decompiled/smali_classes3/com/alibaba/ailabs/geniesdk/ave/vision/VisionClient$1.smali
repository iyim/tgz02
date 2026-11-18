.class Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$1;
.super Ljava/lang/Object;
.source "VisionClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eventCallback(Ljava/lang/String;)V
    .locals 4

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vision event callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionSvr::VisionInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onServiceConnected"

    .line 48
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "onServiceDisconnected"

    .line 51
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    invoke-static {v1, v3, p1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
