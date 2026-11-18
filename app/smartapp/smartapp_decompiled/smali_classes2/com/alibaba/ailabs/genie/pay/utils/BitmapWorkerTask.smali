.class public Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "0"

    .line 18
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;->type:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public decodeSampledBitmapFromString(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 55
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 58
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 61
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    array-length v3, p1

    invoke-static {p1, v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 64
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 65
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 67
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 68
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 69
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 73
    div-int/2addr v3, p2

    div-int/2addr v4, p3

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 75
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 79
    :cond_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 81
    array-length p2, p1

    invoke-static {p1, v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 27
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;->type:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;->type:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 30
    aget-object p1, p1, v2

    const/16 v0, 0xf0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;->decodeSampledBitmapFromString(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;->type:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :try_start_0
    aget-object p1, p1, v2

    const/16 v0, 0xdc

    invoke-static {p1, v0, v0, v1}, Lcom/alibaba/ailabs/genie/pay/utils/QRCodeManager;->create2DCode(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Lcom/google/zxing/WriterException;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/utils/BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
