.class public Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_avatar"


# instance fields
.field private isSafe:Z

.field private mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->isSafe:Z

    .line 96
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->isSafe:Z

    .line 96
    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->isSafe:Z

    .line 96
    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 45
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    return-void
.end method

.method static synthetic lambda$openCamera$82(I)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceOpenFailure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "contacts_avatar"

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$takePhoto$81(Landroid/hardware/Camera$PictureCallback;[BLandroid/hardware/Camera;)V
    .locals 0

    .line 86
    invoke-interface {p0, p1, p2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public openCamera()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/avatar/view/-$$Lambda$CameraPreview$gCpqeDh67P2lBfXMfKAsqaCw7IA;->INSTANCE:Lcom/alibaba/ailabs/genie/contacts/avatar/view/-$$Lambda$CameraPreview$gCpqeDh67P2lBfXMfKAsqaCw7IA;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->openCamera(ILcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraOpenErrorCallback;)Landroid/hardware/Camera;

    return-void
.end method

.method public releaseCamera()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->stopPreview()V

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->release()V

    return-void
.end method

.method public setSafe(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->isSafe:Z

    return-void
.end method

.method public startPreview()V
    .locals 5

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_1

    .line 58
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->setDisplayOrientation(I)V

    .line 59
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->setDisplayOrientation(I)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 64
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraUtils;->getBestSize(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 66
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 67
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->startPreview()V

    .line 72
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->isSafe:Z

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->autoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start preview failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_avatar"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->release()V

    :goto_1
    return-void
.end method

.method public takePhoto(Landroid/hardware/Camera$PictureCallback;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->isSafe:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->mCameraManger:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/avatar/view/-$$Lambda$CameraPreview$EAgeU_bnTnYkaiVgEoHzFCCEgbc;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/-$$Lambda$CameraPreview$EAgeU_bnTnYkaiVgEoHzFCCEgbc;-><init>(Landroid/hardware/Camera$PictureCallback;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->isSafe:Z

    :cond_1
    :goto_0
    return-void
.end method
