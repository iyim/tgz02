.class Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$3;->this$1:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$3;->this$1:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    return-void
.end method
