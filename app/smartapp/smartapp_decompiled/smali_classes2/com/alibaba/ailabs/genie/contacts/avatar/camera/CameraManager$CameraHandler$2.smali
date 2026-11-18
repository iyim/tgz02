.class Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$2;
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

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;Landroid/os/Message;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$2;->this$1:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$2;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$2;->val$msg:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraOpenErrorCallback;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$2;->val$msg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraOpenErrorCallback;->onDeviceOpenFailure(I)V

    return-void
.end method
