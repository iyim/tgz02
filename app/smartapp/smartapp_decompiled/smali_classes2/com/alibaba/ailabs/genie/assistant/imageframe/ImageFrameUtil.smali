.class public Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;
.super Ljava/lang/Object;
.source "ImageFrameUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;,
        Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$LoaderHandler;
    }
.end annotation


# static fields
.field public static final INIT_CATCH_LIST_MESSAGE:I = 0x1

.field public static final LOAD_TYPE_BITMAP_FROM_ABSOLUTE:I = 0x2712

.field public static final LOAD_TYPE_BITMAP_FROM_ASSETS:I = 0x2711

.field private static final MAX_CACHE_FRAME:I = 0x3

.field public static final SET_BITMAP_MESSAGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageFrameUtil"


# instance fields
.field private cacheFrameLinkedList:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

.field private ht:Landroid/os/HandlerThread;

.field private isCircle:Z

.field private isStart:Z

.field private loadType:I

.field private loaderHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

.field private volatile mCurView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

.field private mOptinos:Landroid/graphics/BitmapFactory$Options;

.field private mPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPathIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2711

    .line 44
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loadType:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mContext:Landroid/content/Context;

    .line 48
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->ht:Landroid/os/HandlerThread;

    .line 52
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mOptinos:Landroid/graphics/BitmapFactory$Options;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    .line 57
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    .line 62
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->isCircle:Z

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->isStart:Z

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mContext:Landroid/content/Context;

    .line 70
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mOptinos:Landroid/graphics/BitmapFactory$Options;

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mOptinos:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 72
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 73
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 74
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 75
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 76
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->initCache()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->playNext()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static decodeBitmap(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/16 v0, 0x2711

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p1, v1

    goto :goto_1

    :cond_0
    const/16 p0, 0x2712

    if-ne p1, p0, :cond_1

    .line 164
    new-instance p0, Ljava/io/FileInputStream;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    .line 167
    :try_start_1
    invoke-static {p0, v1, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    .line 170
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_4

    .line 174
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v1, p1

    :goto_2
    if-eqz v1, :cond_2

    .line 174
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    :cond_2
    :goto_3
    throw p0

    :cond_3
    :goto_4
    if-eqz p0, :cond_4

    .line 174
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_5
    return-object v1
.end method

.method public static getImageFromFile(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 188
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->decodeBitmap(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_1

    .line 193
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->decodeBitmap(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_1
    return-object p3

    :cond_2
    :goto_0
    return-object v0
.end method

.method private initCache()V
    .locals 8

    .line 199
    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->cacheFrameLinkedList:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 205
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v1, :cond_4

    .line 206
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v3, "ImageFrameUtil"

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restart init cache data :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 210
    :cond_0
    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    if-lt v4, v1, :cond_1

    .line 211
    iput v2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    .line 213
    :cond_1
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    iget v5, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 215
    iput-object v4, v0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->path:Ljava/lang/String;

    .line 216
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    iput-object v5, v0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->view:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    .line 217
    iget v5, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    iput v5, v0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->index:I

    .line 218
    iput v3, v0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->cacheId:I

    add-int/lit8 v3, v3, 0x1

    .line 220
    iget-object v5, v0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 221
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mOptinos:Landroid/graphics/BitmapFactory$Options;

    iget-object v6, v0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->bitmap:Landroid/graphics/Bitmap;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 223
    :cond_2
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loadType:I

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mOptinos:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v5, v6, v4, v7}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->getImageFromFile(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v0, "ImageFrameUtil"

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 \u56fe\u7247\u89e3\u7801\u5931\u8d25\uff0c\u4e0d\u64ad\u653e\u5e27\u52a8\u753b,loadType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loadType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    monitor-exit p0

    return-void

    .line 232
    :cond_3
    iput-object v5, v0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 234
    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    .line 235
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->next:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    .line 236
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->cacheFrameLinkedList:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    if-eq v0, v4, :cond_c

    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    if-lt v4, v1, :cond_0

    goto/16 :goto_3

    :cond_4
    const-string v0, "ImageFrameUtil"

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new cache data :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_c

    .line 241
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 242
    new-instance v4, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    invoke-direct {v4}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;-><init>()V

    .line 243
    iput-object v3, v4, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->path:Ljava/lang/String;

    .line 244
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    iput-object v5, v4, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->view:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    .line 245
    iget v5, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    iput v5, v4, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->index:I

    .line 246
    iput v0, v4, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->cacheId:I

    .line 248
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loadType:I

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mOptinos:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v5, v6, v3, v7}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->getImageFromFile(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v0, "ImageFrameUtil"

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 \u56fe\u7247\u89e3\u7801\u5931\u8d25\uff0c\u4e0d\u64ad\u653e\u5e27\u52a8\u753b,loadType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loadType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    monitor-exit p0

    return-void

    .line 257
    :cond_6
    iput-object v5, v4, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 260
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->cacheFrameLinkedList:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    .line 261
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    goto :goto_2

    :cond_7
    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    .line 263
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    if-eqz v3, :cond_8

    .line 264
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    iput-object v4, v3, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->next:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    .line 265
    :cond_8
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->cacheFrameLinkedList:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    iput-object v3, v4, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->next:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    .line 266
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    iput-object v3, v4, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->prev:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    .line 267
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->cacheFrameLinkedList:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    if-eqz v3, :cond_9

    .line 268
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->cacheFrameLinkedList:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    iput-object v4, v3, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->prev:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    .line 269
    :cond_9
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    goto :goto_2

    .line 271
    :cond_a
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    if-eqz v3, :cond_b

    .line 272
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    iput-object v4, v3, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->next:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    .line 273
    :cond_b
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    iput-object v3, v4, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->prev:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    .line 274
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    .line 277
    :goto_2
    iget v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 281
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->cacheFrameLinkedList:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    .line 283
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->startSwitch(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;Z)V

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private initHandler()V
    .locals 2

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "c"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->ht:Landroid/os/HandlerThread;

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->ht:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->ht:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$LoaderHandler;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$LoaderHandler;-><init>(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loaderHandler:Landroid/os/Handler;

    return-void
.end method

.method private playNext()V
    .locals 5

    .line 291
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 296
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->isStart:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    iget v1, v1, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->index:I

    if-nez v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->next:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->startSwitch(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;Z)V

    .line 300
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->isStart:Z

    .line 301
    monitor-exit p0

    return-void

    .line 304
    :cond_0
    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    if-gez v1, :cond_2

    .line 305
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->isCircle:Z

    if-eqz v1, :cond_5

    .line 306
    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    monitor-exit p0

    return-void

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->prev:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    .line 324
    iput-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->path:Ljava/lang/String;

    .line 325
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    iput-object v3, v1, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->view:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    .line 326
    iget v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    iput v3, v1, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->index:I

    .line 328
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->next:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    invoke-direct {p0, v3, v2}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->startSwitch(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;Z)V

    .line 329
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 330
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 331
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mOptinos:Landroid/graphics/BitmapFactory$Options;

    iget-object v3, v1, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->bitmap:Landroid/graphics/Bitmap;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 332
    :cond_4
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loadType:I

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mOptinos:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v0, v4}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->getImageFromFile(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    monitor-enter p0

    .line 336
    :try_start_1
    iput-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 337
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    .line 338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 311
    :cond_5
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 329
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private startSwitch(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 150
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurFrameInfo:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$FrameInfo;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getLoaderHandler()Landroid/os/Handler;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loaderHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public quit()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->ht:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->ht:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public start(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;ILjava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 104
    iput-boolean p4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->isCircle:Z

    const/4 p4, 0x1

    .line 105
    iput-boolean p4, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->isStart:Z

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loaderHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loaderHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loaderHandler:Landroid/os/Handler;

    invoke-virtual {v0, p4}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    invoke-virtual {p1, v1, p4}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 115
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mCurView:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;->setHandleUtil(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;)V

    .line 117
    :cond_0
    iput v2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPathIndex:I

    .line 119
    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loadType:I

    if-eqz p3, :cond_2

    .line 120
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->mPath:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->loaderHandler:Landroid/os/Handler;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 121
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 125
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
