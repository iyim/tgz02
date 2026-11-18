.class public Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;
.super Ljava/lang/Object;
.source "StackBlurManager.java"


# static fields
.field static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field static final EXECUTOR_THREADS:I

.field private static volatile hasRS:Z


# instance fields
.field private final _blurProcess:Lcom/alibaba/ailabs/genie/second/blur/BlurProcess;

.field private final _image:Landroid/graphics/Bitmap;

.field private _result:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->EXECUTOR_THREADS:I

    .line 37
    sget v0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->EXECUTOR_THREADS:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    .line 39
    sput-boolean v0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->hasRS:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_image:Landroid/graphics/Bitmap;

    .line 62
    new-instance p1, Lcom/alibaba/ailabs/genie/second/blur/JavaBlurProcess;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/blur/JavaBlurProcess;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_blurProcess:Lcom/alibaba/ailabs/genie/second/blur/BlurProcess;

    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public process(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_blurProcess:Lcom/alibaba/ailabs/genie/second/blur/BlurProcess;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_image:Landroid/graphics/Bitmap;

    int-to-float p1, p1

    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/blur/BlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_result:Landroid/graphics/Bitmap;

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_result:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public processNatively(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 107
    new-instance v0, Lcom/alibaba/ailabs/genie/second/blur/NativeBlurProcess;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/blur/NativeBlurProcess;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_image:Landroid/graphics/Bitmap;

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/blur/NativeBlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_result:Landroid/graphics/Bitmap;

    .line 109
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_result:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public returnBlurredImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_result:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public saveIntoFile(Ljava/lang/String;)V
    .locals 3

    .line 88
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->_result:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
