.class final Landroid/taobao/windvane/util/ImageTool$1;
.super Landroid/taobao/windvane/connect/HttpConnectListener;
.source "ImageTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/util/ImageTool;->saveImageToDCIM(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/taobao/windvane/connect/HttpConnectListener<",
        "Landroid/taobao/windvane/connect/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;)V
    .locals 0

    .line 60
    iput-object p1, p0, Landroid/taobao/windvane/util/ImageTool$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/taobao/windvane/util/ImageTool$1;->val$callback:Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;

    invoke-direct {p0}, Landroid/taobao/windvane/connect/HttpConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 88
    iget-object v0, p0, Landroid/taobao/windvane/util/ImageTool$1;->val$callback:Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;

    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error get resource, code=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "],msg=["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinish(Landroid/taobao/windvane/connect/HttpResponse;I)V
    .locals 1

    .line 63
    :try_start_0
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 64
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 65
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 67
    iget-object p2, p0, Landroid/taobao/windvane/util/ImageTool$1;->val$context:Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/ImageTool;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Landroid/taobao/windvane/util/ImageTool$1;->val$callback:Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Landroid/taobao/windvane/util/ImageTool$1;->val$callback:Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;

    invoke-interface {p1}, Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;->success()V

    :cond_0
    return-void

    .line 74
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/util/ImageTool$1;->val$callback:Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;

    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Landroid/taobao/windvane/util/ImageTool$1;->val$callback:Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;

    const-string p2, "bad resource"

    invoke-interface {p1, p2}, Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    iget-object p2, p0, Landroid/taobao/windvane/util/ImageTool$1;->val$callback:Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;

    if-eqz p2, :cond_2

    .line 82
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 78
    iget-object p2, p0, Landroid/taobao/windvane/util/ImageTool$1;->val$callback:Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;

    if-eqz p2, :cond_2

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;->error(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0

    .line 60
    check-cast p1, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/util/ImageTool$1;->onFinish(Landroid/taobao/windvane/connect/HttpResponse;I)V

    return-void
.end method
