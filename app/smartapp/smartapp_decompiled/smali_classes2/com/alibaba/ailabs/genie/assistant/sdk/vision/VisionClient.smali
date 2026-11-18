.class public Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "VisionClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$onStatusListerner;,
        Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$OnDataListerner;
    }
.end annotation


# static fields
.field private static final METHOD_STATUS:I = 0x0

.field public static final SCENE_MODE_DEFAULT:I = 0x0

.field public static final SCENE_MODE_MONITOR:I = 0x1

.field public static final SCENE_MODE_VOIP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VisionClient"


# instance fields
.field private mClientKey:Ljava/lang/String;

.field private mFrameData:[B

.field private final mFrameHeader:[B

.field private mHeight:I

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsCenter:Z

.field private final mKey:Ljava/lang/String;

.field private mListerner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$OnDataListerner;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mStarted:Z

.field private mStatusListerner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$onStatusListerner;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mMode:I

    const/16 v0, 0x400

    .line 187
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mFrameHeader:[B

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mFrameData:[B

    .line 60
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->generateClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->onStatus(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private createImageReader()Landroid/view/Surface;
    .locals 5

    .line 165
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mWidth:I

    const/4 v1, 0x0

    if-lez v0, :cond_3

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mHeight:I

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    mul-int v0, v0, v2

    mul-int/lit8 v0, v0, 0x3

    const/4 v2, 0x2

    .line 170
    :try_start_0
    div-int/2addr v0, v2

    .line 172
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mFrameData:[B

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mFrameData:[B

    array-length v3, v3

    if-eq v3, v0, :cond_2

    .line 173
    :cond_1
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mFrameData:[B

    :cond_2
    add-int/lit16 v0, v0, 0x400

    const/4 v3, 0x1

    const/16 v4, 0x24

    .line 176
    invoke-static {v0, v3, v4, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mImageReader:Landroid/media/ImageReader;

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mImageReader:Landroid/media/ImageReader;

    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v1
.end method

.method private destroyImageReader()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getClientKeyInner()Ljava/lang/String;
    .locals 2

    .line 282
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getClientKey()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getListener()Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$OnDataListerner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getStatusListerner()Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$onStatusListerner;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getListener()Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$OnDataListerner;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mListerner:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$OnDataListerner;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private notifySetCenter()V
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mIsCenter:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;->setCenter(Ljava/lang/String;Z)Z

    return-void
.end method

.method private notifyStart()V
    .locals 11

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;

    move-result-object v1

    .line 123
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->destroyImageReader()V

    .line 125
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->createImageReader()Landroid/view/Surface;

    move-result-object v0

    .line 126
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v10

    if-eqz v0, :cond_0

    .line 128
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mWidth:I

    iget v5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mHeight:I

    iget-boolean v6, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mIsCenter:Z

    iget v8, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mMode:I

    move-object v7, v0

    move-object v9, v10

    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;->start(Ljava/lang/String;Landroid/os/IBinder;IIZLandroid/view/Surface;ILjava/lang/String;)Z

    .line 130
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStart clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",center ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mIsCenter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mMode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",clientKey = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyStop()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;->stop(Ljava/lang/String;)Z

    .line 139
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->destroyImageReader()V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStop clientId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",center ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mIsCenter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",clientKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionClient"

    .line 141
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onStatus(I)V
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getStatusListerner()Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$onStatusListerner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    :try_start_0
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$onStatusListerner;->onStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mClientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusListerner()Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$onStatusListerner;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mStatusListerner:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$onStatusListerner;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getStatusListerner()Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$onStatusListerner;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "d"

    .line 259
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 261
    invoke-static {}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    .line 268
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 270
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getListener()Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$OnDataListerner;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 194
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mStarted:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mFrameData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 205
    :try_start_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 208
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mFrameHeader:[B

    const/16 v4, 0x400

    invoke-virtual {p1, v3, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 209
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mFrameData:[B

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mFrameData:[B

    array-length v4, v4

    invoke-virtual {p1, v3, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 210
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mFrameData:[B

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$OnDataListerner;->onData([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 216
    :try_start_2
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 219
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 212
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    .line 216
    :try_start_5
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_0

    .line 223
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    if-eqz v1, :cond_2

    .line 216
    :try_start_6
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v0

    .line 219
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    :cond_2
    :goto_3
    throw p1

    :cond_3
    :goto_4
    const-string p1, "VisionClient"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail onImageAvailable clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",center ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mIsCenter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",started ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",listener= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",frameData= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mFrameData:[B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 197
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public declared-synchronized onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    .line 69
    :try_start_0
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mStarted:Z

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->start()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCenter(Z)V
    .locals 0

    monitor-enter p0

    .line 100
    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mIsCenter:Z

    .line 101
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->notifySetCenter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mClientKey:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setMode(I)V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mMode:I

    if-eq p1, v0, :cond_0

    .line 78
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mMode:I

    .line 80
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mStarted:Z

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mKey:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mMode:I

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;->setMode(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSize(IILcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$OnDataListerner;)V
    .locals 0

    monitor-enter p0

    .line 88
    :try_start_0
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mWidth:I

    .line 89
    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mHeight:I

    .line 91
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mListerner:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStatusListerner(Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$onStatusListerner;)V
    .locals 1

    .line 249
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mStatusListerner:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 105
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mStarted:Z

    .line 106
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mContext:Landroid/content/Context;

    const-string v2, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v0}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    .line 109
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->notifyStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 113
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mStarted:Z

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    .line 118
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->notifyStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
