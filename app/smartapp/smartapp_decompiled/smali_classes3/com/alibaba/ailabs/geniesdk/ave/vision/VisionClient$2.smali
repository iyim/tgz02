.class Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$2;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "VisionClient.java"


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

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$2;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    invoke-direct {p0}, Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vision engine callback,  data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionSvr::VisionInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$2;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->access$100(Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;Ljava/lang/String;)V

    return-void
.end method
