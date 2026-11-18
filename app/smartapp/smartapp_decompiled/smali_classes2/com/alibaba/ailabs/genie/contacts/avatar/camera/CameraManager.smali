.class public Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;,
        Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraOpenErrorCallback;
    }
.end annotation


# static fields
.field private static final AUTO_FOCUS:I = 0x12d

.field private static final CANCEL_AUTO_FOCUS:I = 0x12e

.field private static final ENABLE_SHUTTER_SOUND:I = 0x191

.field private static final GET_PARAMETERS:I = 0xca

.field private static final OPEN_CAMERA:I = 0x1

.field private static final RELEASE:I = 0x2

.field private static final SET_DISPLAY_ORIENTATION:I = 0x192

.field private static final SET_PARAMETERS:I = 0xc9

.field private static final SET_PREVIEW_DISPLAY_ASYNC:I = 0x68

.field private static final SET_PREVIEW_TEXTURE_ASYNC:I = 0x65

.field private static final SET_ZOOM_CHANGE_LISTENER:I = 0x12f

.field private static final START_PREVIEW_ASYNC:I = 0x66

.field private static final STOP_PREVIEW:I = 0x67

.field private static final TAG:Ljava/lang/String; = "CameraManager"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

.field private mCameraParams:Landroid/hardware/Camera$Parameters;

.field private mHandler:Landroid/os/Handler;

.field private mParametersIsDirty:Z

.field private mParamsToSet:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/os/Looper;Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$1;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mParametersIsDirty:Z

    return p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mParametersIsDirty:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mParamsToSet:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$602(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraParams:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->removeMessages(I)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/4 v1, 0x0

    const/16 v2, 0x191

    invoke-virtual {v0, v2, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->sendEmptyMessage(I)Z

    .line 297
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->access$700(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;)Z

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraParams:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public openCamera(ILcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraOpenErrorCallback;)Landroid/hardware/Camera;
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 242
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->access$700(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;)Z

    .line 243
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method public release()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->sendEmptyMessage(I)Z

    .line 248
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->access$700(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;)Z

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/16 v1, 0x192

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "CameraManager"

    const-string v0, "null parameters in setParameters()"

    .line 288
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/16 v1, 0xc9

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->sendEmptyMessage(I)Z

    .line 265
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->mCameraHandler:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->access$700(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;)Z

    return-void
.end method
