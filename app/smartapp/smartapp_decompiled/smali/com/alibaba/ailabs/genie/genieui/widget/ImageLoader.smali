.class public Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field public static IMAGE_LOADER_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor; = null

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static final imageLoaderExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private callback:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private paddingRect:Landroid/graphics/Rect;

.field private quit:Z

.field private final waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->CPU_COUNT:I

    .line 36
    sget v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->CPU_COUNT:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->CORE_POOL_SIZE:I

    .line 37
    sget v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->MAXIMUM_POOL_SIZE:I

    .line 40
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 50
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->CORE_POOL_SIZE:I

    sget v5, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->MAXIMUM_POOL_SIZE:I

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v10, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v6, 0x1e

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->imageLoaderExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 55
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->imageLoaderExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 56
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->imageLoaderExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->IMAGE_LOADER_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->quit:Z

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->callback:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;

    .line 61
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 62
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v1, 0x1

    .line 64
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 65
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 66
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 67
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->paddingRect:Landroid/graphics/Rect;

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 92
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 106
    array-length p1, p1

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 109
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->quit:Z

    if-nez p1, :cond_8

    .line 110
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter p1

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 115
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 117
    :goto_1
    monitor-exit p1

    goto :goto_3

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 119
    :cond_1
    :goto_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 126
    :cond_3
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->getInstance()Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->getBitmapByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hit cache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageLoader"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;-><init>()V

    .line 129
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->getInstance()Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->getBitmapByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->setPath(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->callback:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;

    if-eqz p1, :cond_0

    .line 132
    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;->onLoadSuccess(Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;)V

    goto :goto_0

    .line 138
    :cond_4
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    goto :goto_4

    .line 144
    :cond_5
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 145
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    :goto_4
    :try_start_3
    new-instance v2, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;-><init>()V

    .line 148
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->paddingRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->setPath(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->callback:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;

    if-eqz p1, :cond_6

    .line 151
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->callback:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;

    invoke-interface {p1, v2}, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;->onLoadSuccess(Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_6
    if-eqz v1, :cond_0

    .line 158
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_1
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 154
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_0

    .line 158
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v1, :cond_7

    .line 158
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    :cond_7
    :goto_7
    throw p1

    :cond_8
    :goto_8
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public varargs load([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 86
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v0

    const/4 v1, 0x1

    .line 98
    :try_start_0
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->quit:Z

    .line 99
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->waitToLoad:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
