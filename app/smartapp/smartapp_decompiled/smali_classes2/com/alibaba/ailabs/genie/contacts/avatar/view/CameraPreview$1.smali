.class Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "contacts_avatar"

    const-string p2, "surfaceChanged"

    .line 104
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "contacts_avatar"

    const-string v0, "surfaceCreated"

    .line 99
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "contacts_avatar"

    const-string v0, "surfaceDestroyed"

    .line 109
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
