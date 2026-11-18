.class Lcom/taobao/uikit/component/GifView$DecodeTask;
.super Landroid/os/AsyncTask;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/component/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/component/GifView;


# direct methods
.method private constructor <init>(Lcom/taobao/uikit/component/GifView;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/uikit/component/GifView;Lcom/taobao/uikit/component/GifView$1;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcom/taobao/uikit/component/GifView$DecodeTask;-><init>(Lcom/taobao/uikit/component/GifView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-static {v1}, Lcom/taobao/uikit/component/GifView;->access$100(Lcom/taobao/uikit/component/GifView;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-virtual {v1}, Lcom/taobao/uikit/component/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-static {v2}, Lcom/taobao/uikit/component/GifView;->access$100(Lcom/taobao/uikit/component/GifView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-static {v1}, Lcom/taobao/uikit/component/GifView;->access$200(Lcom/taobao/uikit/component/GifView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 326
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-static {v3}, Lcom/taobao/uikit/component/GifView;->access$200(Lcom/taobao/uikit/component/GifView;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 335
    :try_start_2
    iget-object v1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/uikit/component/GifView;->access$302(Lcom/taobao/uikit/component/GifView;Landroid/graphics/Movie;)Landroid/graphics/Movie;

    .line 336
    iget-object v1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-static {v1}, Lcom/taobao/uikit/component/GifView;->access$300(Lcom/taobao/uikit/component/GifView;)Landroid/graphics/Movie;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 338
    iget-object v1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    iget-object v2, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-static {v2}, Lcom/taobao/uikit/component/GifView;->access$300(Lcom/taobao/uikit/component/GifView;)Landroid/graphics/Movie;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Movie;->width()I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/uikit/component/GifView;->access$402(Lcom/taobao/uikit/component/GifView;I)I

    .line 339
    iget-object v1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    iget-object v2, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-static {v2}, Lcom/taobao/uikit/component/GifView;->access$300(Lcom/taobao/uikit/component/GifView;)Landroid/graphics/Movie;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/uikit/component/GifView;->access$502(Lcom/taobao/uikit/component/GifView;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    const/4 p1, 0x1

    :cond_4
    if-eqz v0, :cond_5

    .line 355
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v1

    .line 347
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_5

    .line 355
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 364
    :cond_5
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :goto_3
    if-eqz v0, :cond_6

    .line 355
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 360
    :cond_6
    :goto_4
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 311
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/GifView$DecodeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 369
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 371
    iget-object p1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-virtual {p1}, Lcom/taobao/uikit/component/GifView;->requestLayout()V

    .line 372
    iget-object p1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-virtual {p1}, Lcom/taobao/uikit/component/GifView;->invalidate()V

    .line 373
    iget-object p1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-static {p1}, Lcom/taobao/uikit/component/GifView;->access$600(Lcom/taobao/uikit/component/GifView;)Lcom/taobao/uikit/component/GifView$OnDecodedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/taobao/uikit/component/GifView$DecodeTask;->this$0:Lcom/taobao/uikit/component/GifView;

    invoke-static {p1}, Lcom/taobao/uikit/component/GifView;->access$600(Lcom/taobao/uikit/component/GifView;)Lcom/taobao/uikit/component/GifView$OnDecodedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/uikit/component/GifView$OnDecodedListener;->OnDecoded()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 311
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/GifView$DecodeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
