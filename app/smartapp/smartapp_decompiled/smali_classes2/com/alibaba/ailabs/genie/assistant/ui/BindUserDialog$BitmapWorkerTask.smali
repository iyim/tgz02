.class Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "BindUserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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

    .line 331
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "0"

    .line 329
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;->type:Ljava/lang/String;

    .line 332
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public decodeSampledBitmapFromString(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 381
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "data:image/png;base64,"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 384
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 385
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 387
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 388
    array-length v3, p1

    invoke-static {p1, v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 390
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 391
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 393
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 394
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 395
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outWidth = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; outHeight="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; reqWidth="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; reqHeight="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "BindUserDialog"

    invoke-static {v5, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 398
    div-int/2addr v3, p2

    div-int/2addr v4, p3

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 400
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sampleSize = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 405
    :cond_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 407
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

    const-string v0, "BindUserDialog"

    const-string v1, "bindUser doInBackground. "

    .line 338
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 339
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;->type:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;->type:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 342
    aget-object p1, p1, v2

    const/16 v0, 0xf5

    invoke-virtual {p0, p1, v0, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;->decodeSampledBitmapFromString(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;->type:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    return-object v1

    .line 350
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 351
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x400

    if-le v0, v3, :cond_2

    const/16 v0, 0x1f4

    goto :goto_0

    :cond_2
    const/16 v0, 0x140

    .line 357
    :goto_0
    aget-object p1, p1, v2

    invoke-static {p1, v0, v0, v1}, Lcom/alibaba/ailabs/google/zxing/EncodingHandler;->create2DCode(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 359
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "BindUserDialog"

    const-string v1, "bindUser onPostExecute. "

    .line 368
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 325
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
