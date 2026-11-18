.class public Lcom/alibaba/ailabs/avesdk/AVECameraHandler;
.super Ljava/lang/Object;
.source "AVECameraHandler.java"


# instance fields
.field private cameraIndex:Ljava/lang/String;

.field private height:I

.field private imageReader:Landroid/media/ImageReader;

.field private singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/media/ImageReader;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->cameraIndex:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->width:I

    .line 17
    iput p3, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->height:I

    .line 18
    iput-object p4, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->imageReader:Landroid/media/ImageReader;

    .line 19
    iput-object p5, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public getCameraIndex()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->cameraIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->height:I

    return v0
.end method

.method public getImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->imageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->width:I

    return v0
.end method

.method public setCameraIndex(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->cameraIndex:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->height:I

    return-void
.end method

.method public setImageReader(Landroid/media/ImageReader;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->imageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public setSingleThreadExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->width:I

    return-void
.end method
