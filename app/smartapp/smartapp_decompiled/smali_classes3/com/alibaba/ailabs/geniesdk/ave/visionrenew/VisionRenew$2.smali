.class Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$2;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "VisionRenew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$2;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;

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

    const-string v0, "true"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "VisionRenew"

    const-string v0, "~~~~~~~~~~~~~~~ detected face, try to renew"

    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$2;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 55
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getNativeUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$2;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->access$002(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;Z)Z

    .line 57
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setFullDuplexDialogRenewDuration(I)V

    .line 58
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->setFullDuplexDialogRenew(I)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$2;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;

    const/4 v0, 0x0

    const-string v1, "TmallGenie_Multimode_FaceRecognize_AddTime_True"

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->access$100(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$2;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->access$300(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$2;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->access$200(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
