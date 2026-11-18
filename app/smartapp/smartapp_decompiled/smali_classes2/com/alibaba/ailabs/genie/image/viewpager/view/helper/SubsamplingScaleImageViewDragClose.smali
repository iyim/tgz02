.class public Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;
.super Landroid/view/View;
.source "SubsamplingScaleImageViewDragClose.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$DefaultOnStateChangedListener;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$DefaultOnImageEventListener;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$DefaultOnAnimationEventListener;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$BitmapLoadTask;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$TileLoadTask;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$TilesInitTask;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnStateChangedListener;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;,
        Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;
    }
.end annotation


# static fields
.field public static final EASE_IN_OUT_QUAD:I = 0x2

.field public static final EASE_OUT_QUAD:I = 0x1

.field private static final MESSAGE_LONG_CLICK:I = 0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0xb4

.field public static final ORIENTATION_270:I = 0x10e

.field public static final ORIENTATION_90:I = 0x5a

.field public static final ORIENTATION_USE_EXIF:I = -0x1

.field public static final ORIGIN_ANIM:I = 0x1

.field public static final ORIGIN_DOUBLE_TAP_ZOOM:I = 0x4

.field public static final ORIGIN_FLING:I = 0x3

.field public static final ORIGIN_TOUCH:I = 0x2

.field public static final PAN_LIMIT_CENTER:I = 0x3

.field public static final PAN_LIMIT_INSIDE:I = 0x1

.field public static final PAN_LIMIT_OUTSIDE:I = 0x2

.field public static final SCALE_TYPE_CENTER_CROP:I = 0x2

.field public static final SCALE_TYPE_CENTER_INSIDE:I = 0x1

.field public static final SCALE_TYPE_CUSTOM:I = 0x3

.field public static final SCALE_TYPE_START:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SubsamplingScaleImageViewDragClose"

.field public static final TILE_SIZE_AUTO:I = 0x7fffffff

.field private static final VALID_EASING_STYLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ORIENTATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_PAN_LIMITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_SCALE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ZOOM_STYLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZOOM_FOCUS_CENTER:I = 0x2

.field public static final ZOOM_FOCUS_CENTER_IMMEDIATE:I = 0x3

.field public static final ZOOM_FOCUS_FIXED:I = 0x1

.field private static preferredBitmapConfig:Landroid/graphics/Bitmap$Config;


# instance fields
.field private anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

.field public atXEdge:Z

.field public atYEdge:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapIsCached:Z

.field private bitmapIsPreview:Z

.field private bitmapPaint:Landroid/graphics/Paint;

.field private debug:Z

.field private debugLinePaint:Landroid/graphics/Paint;

.field private debugTextPaint:Landroid/graphics/Paint;

.field private decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

.field private final decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final density:F

.field private detector:Landroid/view/GestureDetector;

.field private doubleTapZoomDuration:I

.field private doubleTapZoomScale:F

.field private doubleTapZoomStyle:I

.field private final dstArray:[F

.field private eagerLoadingEnabled:Z

.field private executor:Ljava/util/concurrent/Executor;

.field private fullImageSampleSize:I

.field private final handler:Landroid/os/Handler;

.field private imageLoadedSent:Z

.field private isPanning:Z

.field private isQuickScaling:Z

.field private isZooming:Z

.field private mTouchslop:I

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private maxTileHeight:I

.field private maxTileWidth:I

.field private maxTouchCount:I

.field private minScale:F

.field private minimumScaleType:I

.field private minimumTileDpi:I

.field private onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

.field private onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onStateChangedListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnStateChangedListener;

.field private orientation:I

.field private pRegion:Landroid/graphics/Rect;

.field private panEnabled:Z

.field private panLimit:I

.field private pendingScale:Ljava/lang/Float;

.field private quickScaleEnabled:Z

.field private quickScaleLastDistance:F

.field private quickScaleMoved:Z

.field private quickScaleSCenter:Landroid/graphics/PointF;

.field private final quickScaleThreshold:F

.field private quickScaleVLastPoint:Landroid/graphics/PointF;

.field private quickScaleVStart:Landroid/graphics/PointF;

.field private readySent:Z

.field private regionDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private sHeight:I

.field private sOrientation:I

.field private sPendingCenter:Landroid/graphics/PointF;

.field private sRect:Landroid/graphics/RectF;

.field private sRegion:Landroid/graphics/Rect;

.field private sRequestedCenter:Landroid/graphics/PointF;

.field private sWidth:I

.field private satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

.field private scale:F

.field private scaleStart:F

.field private singleDetector:Landroid/view/GestureDetector;

.field private final srcArray:[F

.field private tileBgPaint:Landroid/graphics/Paint;

.field private tileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;",
            ">;>;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;

.field private vCenterStart:Landroid/graphics/PointF;

.field private vDistStart:F

.field private vTranslate:Landroid/graphics/PointF;

.field private vTranslateBefore:Landroid/graphics/PointF;

.field private vTranslateStart:Landroid/graphics/PointF;

.field private zoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x5

    .line 176
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v0, v3

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v2, v0, v5

    const/16 v2, 0x10e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v2, v0, v7

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x4

    aput-object v2, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_ORIENTATIONS:Ljava/util/List;

    .line 178
    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v4, v0, v1

    aput-object v6, v0, v3

    aput-object v8, v0, v5

    .line 179
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_ZOOM_STYLES:Ljava/util/List;

    .line 180
    new-array v0, v5, [Ljava/lang/Integer;

    aput-object v6, v0, v1

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_EASING_STYLES:Ljava/util/List;

    .line 181
    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v4, v0, v1

    aput-object v6, v0, v3

    aput-object v8, v0, v5

    .line 182
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_PAN_LIMITS:Ljava/util/List;

    .line 183
    new-array v0, v9, [Ljava/lang/Integer;

    aput-object v6, v0, v1

    aput-object v4, v0, v3

    aput-object v8, v0, v5

    .line 184
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_SCALE_TYPES:Ljava/util/List;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 305
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const/16 v0, 0x8

    .line 193
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->srcArray:[F

    .line 194
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->dstArray:[F

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->orientation:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 216
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxScale:F

    const/4 v2, -0x1

    .line 218
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minimumTileDpi:I

    .line 220
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panLimit:I

    .line 222
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minimumScaleType:I

    const v2, 0x7fffffff

    .line 223
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileWidth:I

    .line 224
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileHeight:I

    .line 226
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->executor:Ljava/util/concurrent/Executor;

    .line 228
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->eagerLoadingEnabled:Z

    .line 230
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panEnabled:Z

    .line 231
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->zoomEnabled:Z

    .line 232
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleEnabled:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 234
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoomScale:F

    .line 235
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoomStyle:I

    const/16 v2, 0x1f4

    .line 236
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoomDuration:I

    .line 253
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale()F

    move-result v2

    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale:F

    .line 269
    new-instance v2, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;

    const-class v3, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;

    invoke-direct {v2, v3}, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    .line 271
    new-instance v2, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;

    const-class v3, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;

    invoke-direct {v2, v3}, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->regionDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->density:F

    const/16 v2, 0xa0

    .line 307
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumDpi(I)V

    .line 308
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomDpi(I)V

    const/16 v2, 0x140

    .line 309
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumTileDpi(I)V

    .line 310
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setGestureDetector(Landroid/content/Context;)V

    .line 311
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->mTouchslop:I

    .line 312
    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_6

    .line 326
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 327
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_assetName:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_assetName:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 330
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->asset(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tilingEnabled()Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;)V

    .line 333
    :cond_0
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_src:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_src:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_1

    .line 336
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->resource(I)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tilingEnabled()Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;)V

    .line 339
    :cond_1
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_panEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_panEnabled:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setPanEnabled(Z)V

    .line 342
    :cond_2
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_zoomEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_zoomEnabled:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setZoomEnabled(Z)V

    .line 345
    :cond_3
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_quickScaleEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 346
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_quickScaleEnabled:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setQuickScaleEnabled(Z)V

    .line 348
    :cond_4
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_tileBackgroundColor:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 349
    sget v2, Lcom/davemorrissey/labs/subscaleview/R$styleable;->SubsamplingScaleImageView_tileBackgroundColor:I

    .line 350
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 349
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setTileBackgroundColor(I)V

    .line 352
    :cond_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    const/high16 p2, 0x41a00000    # 20.0f

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleThreshold:F

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)F
    .locals 0

    .line 79
    iget p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;I)I
    .locals 0

    .line 79
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    return p1
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->zoomEnabled:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setGestureDetector(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1600(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Landroid/graphics/PointF;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;F)F
    .locals 0

    .line 79
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scaleStart:F

    return p1
.end method

.method static synthetic access$2002(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isQuickScaling:Z

    return p1
.end method

.method static synthetic access$201(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$2102(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;F)F
    .locals 0

    .line 79
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleLastDistance:F

    return p1
.end method

.method static synthetic access$2200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Landroid/graphics/PointF;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleSCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleSCenter:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleVStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleVLastPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleMoved:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$301(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$5200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$5300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Landroid/graphics/Rect;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$5500()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;III)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onTilesInited(Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;III)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$5700(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panEnabled:Z

    return p0
.end method

.method static synthetic access$6000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onTileLoaded()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$6100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$6200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/Bitmap;IZ)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$6300()Ljava/util/List;
    .locals 1

    .line 79
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_EASING_STYLES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    return-object p0
.end method

.method static synthetic access$6402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;F)F
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->limitedScale(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;ZLcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(ZLcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->readySent:Z

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Landroid/graphics/PointF;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isZooming:Z

    return p0
.end method

.method static synthetic access$902(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isZooming:Z

    return p1
.end method

.method private calculateInSampleSize(F)I
    .locals 3

    .line 1478
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minimumTileDpi:I

    if-lez v0, :cond_0

    .line 1479
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1480
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    .line 1481
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minimumTileDpi:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    .line 1484
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 1485
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    if-eqz v0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    .line 1493
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, p1, :cond_3

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v1

    if-le v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    .line 1496
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1497
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge p1, v0, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    mul-int/lit8 v0, v2, 0x2

    if-ge v0, p1, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_2
    const/16 p1, 0x20

    return p1
.end method

.method private checkImageLoaded()Z
    .locals 2

    .line 1311
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isBaseLayerReady()Z

    move-result v0

    .line 1312
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->imageLoadedSent:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1313
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->preDraw()V

    const/4 v1, 0x1

    .line 1314
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->imageLoadedSent:Z

    .line 1315
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageLoaded()V

    .line 1316
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

    if-eqz v1, :cond_0

    .line 1317
    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;->onImageLoaded()V

    :cond_0
    return v0
.end method

.method private checkReady()Z
    .locals 3

    .line 1294
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1295
    :goto_0
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->readySent:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 1296
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->preDraw()V

    .line 1297
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->readySent:Z

    .line 1298
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onReady()V

    .line 1299
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

    if-eqz v1, :cond_2

    .line 1300
    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;->onReady()V

    :cond_2
    return v0
.end method

.method private createPaints()V
    .locals 4

    .line 1327
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1328
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapPaint:Landroid/graphics/Paint;

    .line 1329
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1330
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1331
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug:Z

    if-eqz v0, :cond_2

    .line 1334
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugTextPaint:Landroid/graphics/Paint;

    .line 1335
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1336
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugTextPaint:Landroid/graphics/Paint;

    const v2, -0xff01

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1337
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1338
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    .line 1339
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1340
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1341
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2
    return-void
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 2256
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug:Z

    if-eqz v0, :cond_0

    .line 2257
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private distance(FFFF)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p3, p4

    mul-float p1, p1, p1

    mul-float p3, p3, p3

    add-float/2addr p1, p3

    float-to-double p1, p1

    .line 1927
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 11

    .line 998
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panEnabled:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 1001
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 1002
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRequestedCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1005
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 1006
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 1009
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxScale:F

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoomScale:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1010
    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    float-to-double v4, v2

    float-to-double v6, v0

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpg-double v10, v4, v6

    if-lez v10, :cond_3

    iget v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 1011
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale()F

    move-result v0

    :goto_3
    move v4, v0

    .line 1012
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoomStyle:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    .line 1013
    invoke-virtual {p0, v4, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setScaleAndCenter(FLandroid/graphics/PointF;)V

    goto :goto_5

    :cond_5
    const/4 v6, 0x4

    if-eq v0, v1, :cond_7

    if-eqz v2, :cond_7

    .line 1014
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panEnabled:Z

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    if-ne v0, v8, :cond_8

    .line 1020
    new-instance v7, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, v4

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V

    invoke-virtual {v7, v9}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->withInterruptible(Z)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoomDuration:I

    int-to-long v1, v1

    .line 1021
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->withDuration(J)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->access$1300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;I)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->start()V

    goto :goto_5

    .line 1015
    :cond_7
    :goto_4
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v4, p1, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FLandroid/graphics/PointF;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V

    invoke-virtual {v0, v9}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->withInterruptible(Z)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoomDuration:I

    int-to-long v1, v1

    .line 1016
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->withDuration(J)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    move-result-object v0

    .line 1017
    invoke-static {v0, v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->access$1300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;I)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;->start()V

    .line 1023
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    return-void
.end method

.method private ease(IJFFJ)F
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move-wide v5, p6

    .line 2210
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->easeInOutQuad(JFFJ)F

    move-result p1

    return p1

    .line 2214
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected easing type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move-wide v5, p6

    .line 2212
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->easeOutQuad(JFFJ)F

    move-result p1

    return p1
.end method

.method private easeInOutQuad(JFFJ)F
    .locals 0

    long-to-float p1, p1

    long-to-float p2, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p2, p5

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p6, p1, p2

    if-gez p6, :cond_0

    div-float/2addr p4, p5

    mul-float p4, p4, p1

    :goto_0
    mul-float p4, p4, p1

    add-float/2addr p4, p3

    return p4

    :cond_0
    sub-float/2addr p1, p2

    neg-float p4, p4

    div-float/2addr p4, p5

    sub-float p5, p1, p5

    mul-float p1, p1, p5

    sub-float/2addr p1, p2

    goto :goto_0
.end method

.method private easeOutQuad(JFFJ)F
    .locals 0

    long-to-float p1, p1

    long-to-float p2, p5

    div-float/2addr p1, p2

    neg-float p2, p4

    mul-float p2, p2, p1

    const/high16 p4, 0x40000000    # 2.0f

    sub-float/2addr p1, p4

    mul-float p2, p2, p1

    add-float/2addr p2, p3

    return p2
.end method

.method private execute(Landroid/os/AsyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "*>;)V"
        }
    .end annotation

    .line 1815
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->executor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 1898
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v0

    if-nez v0, :cond_0

    .line 1899
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1900
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 1901
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1902
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    .line 1903
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1905
    :cond_2
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method private fitToBounds(Z)V
    .locals 5

    .line 1582
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1584
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1586
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    if-nez v2, :cond_1

    .line 1587
    new-instance v2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    .line 1589
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4702(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;F)F

    .line 1590
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1591
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    invoke-direct {p0, p1, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(ZLcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)V

    .line 1592
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4700(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)F

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 1593
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    if-eqz v0, :cond_2

    .line 1594
    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minimumScaleType:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 1595
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateForSCenter(FFF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_2
    return-void
.end method

.method private fitToBounds(ZLcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)V
    .locals 11

    .line 1526
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panLimit:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1530
    :cond_0
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1531
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4700(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->limitedScale(F)F

    move-result v3

    .line 1532
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    .line 1533
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    .line 1535
    iget v6, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panLimit:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1536
    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 1537
    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1539
    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 1540
    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1542
    :cond_2
    iget v6, v0, Landroid/graphics/PointF;->x:F

    neg-float v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 1543
    iget v6, v0, Landroid/graphics/PointF;->y:F

    neg-float v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    .line 1548
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingLeft()I

    move-result v6

    const/high16 v8, 0x3f000000    # 0.5f

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingRight()I

    move-result v6

    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingLeft()I

    move-result v9

    .line 1549
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v6, v9

    .line 1550
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingTop()I

    move-result v9

    if-gtz v9, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingBottom()I

    move-result v9

    if-lez v9, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingTop()I

    move-result v9

    .line 1551
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 1555
    :cond_6
    iget v9, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panLimit:I

    if-ne v9, v7, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1556
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 1557
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 1559
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v4

    mul-float p1, p1, v6

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1560
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    mul-float v2, v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_4

    .line 1562
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 1563
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_3
    int-to-float v1, v1

    .line 1566
    :goto_4
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 1567
    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 1569
    invoke-static {p2, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4702(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;F)F

    return-void
.end method

.method private getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const-string v0, "content"

    .line 1767
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "orientation"

    .line 1770
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 1771
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1773
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1774
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 1775
    sget-object p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_ORIENTATIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1778
    :cond_0
    sget-object p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1786
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, p1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1783
    :catch_0
    :try_start_1
    sget-object p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->TAG:Ljava/lang/String;

    const-string p2, "Could not get orientation of image from media store"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_9

    .line 1786
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1788
    :cond_3
    throw p1

    :cond_4
    const-string p1, "file:///"

    .line 1789
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "file:///android_asset/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1791
    :try_start_2
    new-instance p1, Landroid/support/media/ExifInterface;

    const/4 v0, 0x7

    .line 1792
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p2, "Orientation"

    const/4 v0, 0x1

    .line 1794
    invoke-virtual {p1, p2, v0}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_9

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p2, 0x6

    if-ne p1, p2, :cond_6

    const/16 p1, 0x5a

    const/16 v1, 0x5a

    goto :goto_2

    :cond_6
    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    const/16 p1, 0xb4

    const/16 v1, 0xb4

    goto :goto_2

    :cond_7
    const/16 p2, 0x8

    if-ne p1, p2, :cond_8

    const/16 p1, 0x10e

    const/16 v1, 0x10e

    goto :goto_2

    .line 1805
    :cond_8
    sget-object p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EXIF orientation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1808
    :catch_1
    sget-object p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->TAG:Ljava/lang/String;

    const-string p2, "Could not get EXIF orientation of image"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    return v1
.end method

.method private getMaxBitmapDimensions(Landroid/graphics/Canvas;)Landroid/graphics/Point;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1860
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1861
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result p1

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileHeight:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static getPreferredBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 370
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->preferredBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private getRequiredRotation()I
    .locals 2
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 1914
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->orientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1915
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sOrientation:I

    :cond_0
    return v0
.end method

.method private declared-synchronized initialiseBaseLayer(Landroid/graphics/Point;)V
    .locals 12
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "initialiseBaseLayer maxTileDimensions=%dx%d"

    const/4 v1, 0x2

    .line 1350
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1352
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v0, v3, v2, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    .line 1353
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    invoke-direct {p0, v4, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(ZLcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)V

    .line 1357
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4700(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->calculateInSampleSize(F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    .line 1358
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    if-le v0, v4, :cond_0

    .line 1359
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    .line 1362
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 1364
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_1

    .line 1365
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_1

    .line 1369
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    invoke-interface {p1}, Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;->recycle()V

    .line 1370
    iput-object v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    .line 1371
    new-instance p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$BitmapLoadTask;

    .line 1372
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    iget-object v10, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->uri:Landroid/net/Uri;

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$BitmapLoadTask;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;Landroid/net/Uri;Z)V

    .line 1374
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->execute(Landroid/os/AsyncTask;)V

    goto :goto_1

    .line 1377
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->initialiseTileMap(Landroid/graphics/Point;)V

    .line 1379
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1380
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;

    .line 1381
    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$TileLoadTask;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    invoke-direct {v1, p0, v2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$TileLoadTask;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)V

    .line 1383
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 1385
    :cond_2
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->refreshRequiredTiles(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private initialiseTileMap(Landroid/graphics/Point;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    .line 1603
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "initialiseTileMap maxTileDimensions=%dx%d"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1604
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    .line 1605
    iget v2, v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    move v6, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 1609
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v7

    div-int/2addr v7, v2

    .line 1610
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v8

    div-int/2addr v8, v3

    .line 1611
    div-int v9, v7, v6

    .line 1612
    div-int v10, v8, v6

    :goto_1
    add-int v11, v9, v2

    add-int/2addr v11, v5

    .line 1613
    iget v12, v1, Landroid/graphics/Point;->x:I

    if-gt v11, v12, :cond_9

    int-to-double v11, v9

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v9

    int-to-double v13, v9

    const-wide/high16 v15, 0x3ff4000000000000L    # 1.25

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v15

    cmpl-double v9, v11, v13

    if-lez v9, :cond_0

    iget v9, v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    if-ge v6, v9, :cond_0

    goto/16 :goto_9

    :cond_0
    :goto_2
    add-int v9, v10, v3

    add-int/2addr v9, v5

    .line 1619
    iget v11, v1, Landroid/graphics/Point;->y:I

    if-gt v9, v11, :cond_8

    int-to-double v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v11

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v15

    cmpl-double v13, v9, v11

    if-lez v13, :cond_1

    iget v9, v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    if-ge v6, v9, :cond_1

    goto/16 :goto_8

    .line 1625
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    mul-int v10, v2, v3

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v2, :cond_6

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v3, :cond_5

    .line 1628
    new-instance v12, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V

    .line 1629
    invoke-static {v12, v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4302(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;I)I

    .line 1630
    iget v13, v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    if-ne v6, v13, :cond_2

    const/4 v13, 0x1

    goto :goto_5

    :cond_2
    const/4 v13, 0x0

    :goto_5
    invoke-static {v12, v13}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Z)Z

    .line 1631
    new-instance v13, Landroid/graphics/Rect;

    mul-int v14, v10, v7

    mul-int v15, v11, v8

    add-int/lit8 v5, v2, -0x1

    if-ne v10, v5, :cond_3

    .line 1632
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v5

    goto :goto_6

    :cond_3
    add-int/lit8 v5, v10, 0x1

    mul-int v5, v5, v7

    :goto_6
    add-int/lit8 v4, v3, -0x1

    if-ne v11, v4, :cond_4

    .line 1633
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v4

    goto :goto_7

    :cond_4
    add-int/lit8 v4, v11, 0x1

    mul-int v4, v4, v8

    :goto_7
    invoke-direct {v13, v14, v15, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1631
    invoke-static {v12, v13}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4102(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1634
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v12, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4202(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1635
    new-instance v4, Landroid/graphics/Rect;

    invoke-static {v12}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v4, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v12, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$5002(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1636
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 1639
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    if-ne v6, v4, :cond_7

    return-void

    .line 1643
    :cond_7
    div-int/lit8 v6, v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_8
    const/4 v4, 0x1

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    .line 1622
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v8

    div-int/2addr v8, v3

    .line 1623
    div-int v10, v8, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_9
    :goto_9
    const/4 v4, 0x1

    const/4 v5, 0x0

    add-int/lit8 v2, v2, 0x1

    .line 1616
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v7

    div-int/2addr v7, v2

    .line 1617
    div-int v9, v7, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1
.end method

.method private isBaseLayerReady()Z
    .locals 6

    .line 1269
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsPreview:Z

    if-nez v0, :cond_0

    return v1

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1273
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1274
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    if-ne v4, v5, :cond_1

    .line 1275
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;

    .line 1276
    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method private limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3
    .param p4    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2164
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateForSCenter(FFF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2165
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 2166
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float p2, p2

    .line 2167
    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v1

    div-float/2addr p2, p3

    int-to-float v0, v0

    .line 2168
    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    div-float/2addr v0, p3

    .line 2169
    invoke-virtual {p4, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p4
.end method

.method private limitedScale(F)F
    .locals 1

    .line 2192
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2193
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxScale:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private minScale()F
    .locals 4

    .line 2177
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 2178
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 2179
    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minimumScaleType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2181
    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    return v2

    .line 2184
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 2180
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private declared-synchronized onImageLoaded(Landroid/graphics/Bitmap;IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "onImageLoaded"

    const/4 v1, 0x0

    .line 1732
    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1734
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    .line 1735
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1736
    :cond_0
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->reset(Z)V

    .line 1738
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    if-nez v0, :cond_2

    .line 1739
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1742
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

    if-eqz v0, :cond_3

    .line 1743
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;->onPreviewReleased()V

    .line 1746
    :cond_3
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsPreview:Z

    .line 1747
    iput-boolean p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    .line 1748
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    .line 1749
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    .line 1750
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    .line 1751
    iput p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sOrientation:I

    .line 1752
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->checkReady()Z

    move-result p1

    .line 1753
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->checkImageLoaded()Z

    move-result p2

    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 1755
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    .line 1756
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPreviewLoaded(Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "onPreviewLoaded"

    const/4 v1, 0x0

    .line 1711
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1712
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->imageLoadedSent:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 1717
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1719
    :cond_1
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    :goto_0
    const/4 p1, 0x1

    .line 1721
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsPreview:Z

    .line 1722
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->checkReady()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1723
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    .line 1724
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    :cond_2
    monitor-exit p0

    return-void

    .line 1713
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1714
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onTileLoaded()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "onTileLoaded"

    const/4 v1, 0x0

    .line 1690
    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1691
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->checkReady()Z

    .line 1692
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->checkImageLoaded()Z

    .line 1693
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1694
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    if-nez v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 1697
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    .line 1698
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    if-eqz v0, :cond_1

    .line 1699
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;->onPreviewReleased()V

    .line 1701
    :cond_1
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsPreview:Z

    .line 1702
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    .line 1704
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onTilesInited(Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;III)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "onTilesInited sWidth=%d, sHeight=%d, sOrientation=%d"

    const/4 v1, 0x3

    .line 1652
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->orientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1654
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    if-eq v0, p3, :cond_3

    .line 1655
    :cond_0
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->reset(Z)V

    .line 1656
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1657
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    if-nez v0, :cond_1

    .line 1658
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 1660
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    .line 1661
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    if-eqz v0, :cond_2

    .line 1662
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;->onPreviewReleased()V

    .line 1664
    :cond_2
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsPreview:Z

    .line 1665
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    .line 1668
    :cond_3
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    .line 1669
    iput p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    .line 1670
    iput p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    .line 1671
    iput p4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sOrientation:I

    .line 1672
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->checkReady()Z

    .line 1673
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->checkImageLoaded()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileWidth:I

    if-lez p1, :cond_4

    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileWidth:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_4

    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileHeight:I

    if-lez p1, :cond_4

    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileHeight:I

    if-eq p1, p2, :cond_4

    .line 1678
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result p1

    if-lez p1, :cond_4

    .line 1679
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result p1

    if-lez p1, :cond_4

    .line 1680
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileWidth:I

    iget p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileHeight:I

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->initialiseBaseLayer(Landroid/graphics/Point;)V

    .line 1682
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    .line 1683
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1684
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2a

    if-eq v1, v5, :cond_21

    if-eq v1, v3, :cond_0

    const/4 v6, 0x5

    if-eq v1, v6, :cond_2a

    const/4 v6, 0x6

    if-eq v1, v6, :cond_21

    const/16 v6, 0x105

    if-eq v1, v6, :cond_2a

    const/16 v2, 0x106

    if-eq v1, v2, :cond_21

    goto/16 :goto_c

    .line 784
    :cond_0
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    if-lez v1, :cond_1f

    const/high16 v1, 0x40a00000    # 5.0f

    if-lt v0, v3, :cond_8

    .line 787
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->distance(FFFF)F

    move-result v0

    .line 788
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v2

    .line 789
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v7, p1

    div-float/2addr v7, v2

    .line 791
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->zoomEnabled:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v6, v2, v7}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->distance(FFFF)F

    move-result p1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vDistStart:F

    sub-float p1, v0, p1

    .line 792
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    if-eqz p1, :cond_1f

    .line 794
    :cond_1
    iput-boolean v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isZooming:Z

    .line 795
    iput-boolean v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    .line 798
    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    float-to-double v1, p1

    .line 799
    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxScale:F

    iget v8, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vDistStart:F

    div-float v8, v0, v8

    iget v9, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scaleStart:F

    mul-float v8, v8, v9

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 801
    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale()F

    move-result v8

    cmpg-float p1, p1, v8

    if-gtz p1, :cond_2

    .line 803
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vDistStart:F

    .line 804
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale()F

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scaleStart:F

    .line 805
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 806
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_0

    .line 807
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panEnabled:Z

    if-eqz p1, :cond_5

    .line 810
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    .line 811
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v8

    .line 812
    iget v8, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget v9, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scaleStart:F

    div-float v10, v8, v9

    mul-float p1, p1, v10

    div-float/2addr v8, v9

    mul-float v3, v3, v8

    .line 814
    iget-object v8, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    sub-float p1, v6, p1

    iput p1, v8, Landroid/graphics/PointF;->x:F

    sub-float p1, v7, v3

    .line 815
    iput p1, v8, Landroid/graphics/PointF;->y:F

    .line 816
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result p1

    int-to-double v8, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result p1

    int-to-double v10, p1

    cmpg-double p1, v8, v10

    if-gez p1, :cond_3

    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float p1, p1, v3

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-gez p1, :cond_4

    .line 817
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result p1

    int-to-double v8, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v8

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result p1

    int-to-double v8, p1

    cmpg-double p1, v1, v8

    if-gez p1, :cond_7

    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 818
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_7

    .line 819
    :cond_4
    invoke-direct {p0, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(Z)V

    .line 820
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 821
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 822
    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scaleStart:F

    .line 823
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vDistStart:F

    goto :goto_0

    .line 825
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz p1, :cond_6

    .line 827
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRequestedCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 828
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRequestedCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 831
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 832
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 835
    :cond_7
    :goto_0
    invoke-direct {p0, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(Z)V

    .line 836
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->eagerLoadingEnabled:Z

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->refreshRequiredTiles(Z)V

    goto/16 :goto_4

    .line 838
    :cond_8
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isQuickScaling:Z

    if-eqz v0, :cond_13

    .line 841
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleVStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, v2

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleThreshold:F

    add-float/2addr v0, v1

    .line 843
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleLastDistance:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    .line 844
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleLastDistance:F

    .line 846
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleVLastPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    .line 847
    :goto_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleVLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v6, 0x0

    invoke-virtual {v2, v6, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 849
    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleLastDistance:F

    div-float p1, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float p1, v2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float p1, p1, v7

    const v7, 0x3cf5c28f    # 0.03f

    cmpl-float v7, p1, v7

    if-gtz v7, :cond_b

    .line 851
    iget-boolean v7, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleMoved:Z

    if-eqz v7, :cond_12

    .line 852
    :cond_b
    iput-boolean v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleMoved:Z

    .line 855
    iget v7, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleLastDistance:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_d

    if-eqz v1, :cond_c

    add-float/2addr p1, v2

    move v2, p1

    goto :goto_2

    :cond_c
    sub-float/2addr v2, p1

    .line 859
    :cond_d
    :goto_2
    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    float-to-double v7, p1

    .line 860
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale()F

    move-result p1

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxScale:F

    iget v9, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    mul-float v9, v9, v2

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 862
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panEnabled:Z

    if-eqz p1, :cond_10

    .line 863
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    .line 864
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 865
    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scaleStart:F

    div-float v9, v2, v3

    mul-float p1, p1, v9

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    .line 867
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 868
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 869
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result p1

    int-to-double v1, p1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v7

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result p1

    int-to-double v9, p1

    cmpg-double p1, v1, v9

    if-gez p1, :cond_e

    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_f

    .line 870
    :cond_e
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result p1

    int-to-double v1, p1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result p1

    int-to-double v1, p1

    cmpg-double p1, v7, v1

    if-gez p1, :cond_12

    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 871
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_12

    .line 872
    :cond_f
    invoke-direct {p0, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(Z)V

    .line 873
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleSCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 874
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 875
    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scaleStart:F

    const/4 v0, 0x0

    goto :goto_3

    .line 878
    :cond_10
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz p1, :cond_11

    .line 880
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRequestedCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v6

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 881
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRequestedCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 884
    :cond_11
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    mul-float v2, v2, v6

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 885
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v3, v6

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 889
    :cond_12
    :goto_3
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleLastDistance:F

    .line 891
    invoke-direct {p0, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(Z)V

    .line 892
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->eagerLoadingEnabled:Z

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->refreshRequiredTiles(Z)V

    :goto_4
    const/4 p1, 0x1

    goto/16 :goto_b

    .line 895
    :cond_13
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isZooming:Z

    if-nez v0, :cond_1f

    .line 898
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 902
    iget v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->density:F

    mul-float v3, v3, v1

    cmpl-float v1, v0, v3

    if-gtz v1, :cond_14

    cmpl-float v1, v2, v3

    if-gtz v1, :cond_14

    .line 903
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    if-eqz v1, :cond_1f

    .line 905
    :cond_14
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v1, Landroid/graphics/PointF;->x:F

    .line 906
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v7

    add-float/2addr v6, p1

    iput v6, v1, Landroid/graphics/PointF;->y:F

    .line 908
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 909
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 910
    invoke-direct {p0, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(Z)V

    .line 911
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_5

    :cond_15
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->atXEdge:Z

    .line 912
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_6

    :cond_16
    const/4 p1, 0x0

    :goto_6
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->atYEdge:Z

    .line 913
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->atXEdge:Z

    if-eqz p1, :cond_17

    cmpl-float p1, v0, v2

    if-lez p1, :cond_17

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    if-nez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_7

    :cond_17
    const/4 p1, 0x0

    .line 914
    :goto_7
    iget-boolean v6, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->atYEdge:Z

    if-eqz v6, :cond_18

    cmpl-float v6, v2, v0

    if-lez v6, :cond_18

    iget-boolean v6, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    if-nez v6, :cond_18

    const/4 v6, 0x1

    goto :goto_8

    :cond_18
    const/4 v6, 0x0

    .line 915
    :goto_8
    iget-object v7, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_19

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_9

    :cond_19
    const/4 v1, 0x0

    :goto_9
    if-nez p1, :cond_1b

    if-nez v6, :cond_1b

    .line 916
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->atXEdge:Z

    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->atYEdge:Z

    if-eqz p1, :cond_1a

    if-nez v1, :cond_1a

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    if-eqz p1, :cond_1b

    .line 917
    :cond_1a
    iput-boolean v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    goto :goto_a

    :cond_1b
    cmpl-float p1, v0, v3

    if-gtz p1, :cond_1c

    cmpl-float p1, v2, v3

    if-lez p1, :cond_1d

    .line 920
    :cond_1c
    iput v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    .line 921
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 922
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->requestDisallowInterceptTouchEvent(Z)V

    .line 924
    :cond_1d
    :goto_a
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panEnabled:Z

    if-nez p1, :cond_1e

    .line 925
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 926
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 927
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->requestDisallowInterceptTouchEvent(Z)V

    .line 930
    :cond_1e
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->eagerLoadingEnabled:Z

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->refreshRequiredTiles(Z)V

    goto/16 :goto_4

    :cond_1f
    const/4 p1, 0x0

    :goto_b
    if-eqz p1, :cond_20

    .line 935
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 936
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    return v5

    :cond_20
    :goto_c
    return v4

    .line 943
    :cond_21
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 944
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isQuickScaling:Z

    if-eqz v1, :cond_22

    .line 945
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isQuickScaling:Z

    .line 946
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleMoved:Z

    if-nez v1, :cond_22

    .line 947
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleSCenter:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    invoke-direct {p0, v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 950
    :cond_22
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    if-lez v1, :cond_28

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isZooming:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    if-eqz v1, :cond_28

    .line 951
    :cond_23
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isZooming:Z

    if-eqz v1, :cond_25

    if-ne v0, v3, :cond_25

    .line 953
    iput-boolean v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    .line 954
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 955
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-ne v1, v5, :cond_24

    .line 956
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_d

    .line 958
    :cond_24
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_25
    :goto_d
    const/4 p1, 0x3

    if-ge v0, p1, :cond_26

    .line 963
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isZooming:Z

    :cond_26
    if-ge v0, v3, :cond_27

    .line 967
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    .line 968
    iput v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    .line 971
    :cond_27
    invoke-direct {p0, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->refreshRequiredTiles(Z)V

    return v5

    :cond_28
    if-ne v0, v5, :cond_29

    .line 975
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isZooming:Z

    .line 976
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    .line 977
    iput v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    :cond_29
    return v5

    :cond_2a
    const/4 v1, 0x0

    .line 756
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    .line 757
    invoke-direct {p0, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->requestDisallowInterceptTouchEvent(Z)V

    .line 758
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    if-lt v0, v3, :cond_2c

    .line 760
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->zoomEnabled:Z

    if-eqz v0, :cond_2b

    .line 762
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->distance(FFFF)F

    move-result v0

    .line 763
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scaleStart:F

    .line 764
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vDistStart:F

    .line 765
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 766
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v3, p1

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_e

    .line 769
    :cond_2b
    iput v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    .line 772
    :goto_e
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_f

    .line 773
    :cond_2c
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isQuickScaling:Z

    if-nez v0, :cond_2d

    .line 775
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 776
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 779
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2d
    :goto_f
    return v5
.end method

.method private preDraw()V
    .locals 4

    .line 1452
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1457
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sPendingCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pendingScale:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 1458
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 1459
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 1460
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sPendingCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 1463
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sPendingCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    .line 1464
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sPendingCenter:Landroid/graphics/PointF;

    .line 1465
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pendingScale:Ljava/lang/Float;

    const/4 v0, 0x1

    .line 1466
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(Z)V

    .line 1467
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->refreshRequiredTiles(Z)V

    :cond_2
    const/4 v0, 0x0

    .line 1471
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private px(I)I
    .locals 1

    .line 2265
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private refreshRequiredTiles(Z)V
    .locals 8

    .line 1396
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1400
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->calculateInSampleSize(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1404
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1405
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;

    .line 1406
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lt v4, v0, :cond_3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)I

    move-result v4

    if-le v4, v0, :cond_4

    .line 1407
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)I

    move-result v4

    iget v7, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    if-eq v4, v7, :cond_4

    .line 1408
    :cond_3
    invoke-static {v3, v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Z)Z

    .line 1409
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1410
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1411
    invoke-static {v3, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$502(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1414
    :cond_4
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v0, :cond_6

    .line 1415
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileVisible(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1416
    invoke-static {v3, v7}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Z)Z

    .line 1417
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    .line 1418
    new-instance v4, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$TileLoadTask;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    invoke-direct {v4, p0, v5, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$TileLoadTask;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)V

    .line 1420
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 1422
    :cond_5
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)I

    move-result v4

    iget v7, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    if-eq v4, v7, :cond_2

    .line 1423
    invoke-static {v3, v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Z)Z

    .line 1424
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1425
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1426
    invoke-static {v3, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$502(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1429
    :cond_6
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)I

    move-result v4

    iget v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    if-ne v4, v5, :cond_2

    .line 1430
    invoke-static {v3, v7}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Z)Z

    goto/16 :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method private requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 987
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 989
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private reset(Z)V
    .locals 5

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset newImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 516
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 517
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scaleStart:F

    const/4 v2, 0x0

    .line 518
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    .line 519
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    .line 520
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateBefore:Landroid/graphics/PointF;

    .line 521
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pendingScale:Ljava/lang/Float;

    .line 522
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sPendingCenter:Landroid/graphics/PointF;

    .line 523
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRequestedCenter:Landroid/graphics/PointF;

    .line 524
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isZooming:Z

    .line 525
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    .line 526
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isQuickScaling:Z

    .line 527
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    .line 528
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    .line 529
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    .line 530
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vDistStart:F

    .line 531
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleLastDistance:F

    .line 532
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleMoved:Z

    .line 533
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleSCenter:Landroid/graphics/PointF;

    .line 534
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleVLastPoint:Landroid/graphics/PointF;

    .line 535
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleVStart:Landroid/graphics/PointF;

    .line 536
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    .line 537
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    .line 538
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    .line 539
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_3

    .line 541
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->uri:Landroid/net/Uri;

    .line 542
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 544
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    if-eqz p1, :cond_0

    .line 545
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    invoke-interface {p1}, Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;->recycle()V

    .line 546
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 551
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    if-nez v0, :cond_1

    .line 552
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 554
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

    if-eqz p1, :cond_2

    .line 555
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;->onPreviewReleased()V

    .line 557
    :cond_2
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    .line 558
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    .line 559
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sOrientation:I

    .line 560
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRegion:Landroid/graphics/Rect;

    .line 561
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pRegion:Landroid/graphics/Rect;

    .line 562
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->readySent:Z

    .line 563
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->imageLoadedSent:Z

    .line 564
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    .line 565
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsPreview:Z

    .line 566
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 549
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 550
    throw p1

    .line 568
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 569
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 570
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;

    .line 571
    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Z)Z

    .line 572
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 573
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 574
    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$502(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 578
    :cond_6
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    .line 580
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setGestureDetector(Landroid/content/Context;)V

    return-void
.end method

.method private restoreState(Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1822
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_ORIENTATIONS:Ljava/util/List;

    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->orientation:I

    .line 1824
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pendingScale:Ljava/lang/Float;

    .line 1825
    invoke-virtual {p1}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sPendingCenter:Landroid/graphics/PointF;

    .line 1826
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    :cond_0
    return-void
.end method

.method private sHeight()I
    .locals 2

    .line 1882
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1886
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    return v0

    .line 1884
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    return v0
.end method

.method private sWidth()I
    .locals 2

    .line 1869
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1873
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    return v0

    .line 1871
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    return v0
.end method

.method private sendStateChanged(FLandroid/graphics/PointF;I)V
    .locals 2

    .line 2864
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onStateChangedListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnStateChangedListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_0

    .line 2865
    invoke-interface {v0, v1, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnStateChangedListener;->onScaleChanged(FI)V

    .line 2867
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onStateChangedListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnStateChangedListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2868
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onStateChangedListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnStateChangedListener;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getCenter()Landroid/graphics/PointF;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnStateChangedListener;->onCenterChanged(Landroid/graphics/PointF;I)V

    :cond_1
    return-void
.end method

.method private setGestureDetector(Landroid/content/Context;)V
    .locals 2

    .line 584
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$2;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->detector:Landroid/view/GestureDetector;

    .line 643
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$3;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->singleDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private setMatrixArray([FFFFFFFFF)V
    .locals 1

    const/4 v0, 0x0

    .line 1255
    aput p2, p1, v0

    const/4 p2, 0x1

    .line 1256
    aput p3, p1, p2

    const/4 p2, 0x2

    .line 1257
    aput p4, p1, p2

    const/4 p2, 0x3

    .line 1258
    aput p5, p1, p2

    const/4 p2, 0x4

    .line 1259
    aput p6, p1, p2

    const/4 p2, 0x5

    .line 1260
    aput p7, p1, p2

    const/4 p2, 0x6

    .line 1261
    aput p8, p1, p2

    const/4 p2, 0x7

    .line 1262
    aput p9, p1, p2

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setPreferredBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 383
    sput-object p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->preferredBitmapConfig:Landroid/graphics/Bitmap$Config;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2135
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewX(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewY(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewX(F)F

    move-result v2

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    .line 2136
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewY(F)F

    move-result p1

    float-to-int p1, p1

    .line 2135
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private sourceToViewX(F)F
    .locals 2

    .line 2061
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 2064
    :cond_0
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    mul-float p1, p1, v1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v0

    return p1
.end method

.method private sourceToViewY(F)F
    .locals 2

    .line 2071
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 2074
    :cond_0
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    mul-float p1, p1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v0

    return p1
.end method

.method private tileVisible(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1440
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceX(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceX(F)F

    move-result v2

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceY(F)F

    move-result v0

    .line 1441
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceY(F)F

    move-result v3

    .line 1442
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_0

    .line 1443
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 1444
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1445
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private vTranslateForSCenter(FFF)Landroid/graphics/PointF;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2147
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2148
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 2149
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    if-nez v2, :cond_0

    .line 2150
    new-instance v2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    .line 2152
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    invoke-static {v2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4702(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;F)F

    .line 2153
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v2

    int-to-float v0, v0

    mul-float p1, p1, p3

    sub-float/2addr v0, p1

    int-to-float p1, v1

    mul-float p2, p2, p3

    sub-float/2addr p1, p2

    invoke-virtual {v2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    .line 2154
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(ZLcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)V

    .line 2155
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->satTemp:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;->access$4800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private viewToSourceX(F)F
    .locals 1

    .line 1947
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 1950
    :cond_0
    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    div-float/2addr p1, v0

    return p1
.end method

.method private viewToSourceY(F)F
    .locals 1

    .line 1957
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 1960
    :cond_0
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public animateCenter(Landroid/graphics/PointF;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2884
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2887
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/graphics/PointF;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V

    return-object v0
.end method

.method public animateScale(F)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2900
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2903
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FLcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V

    return-object v0
.end method

.method public animateScaleAndCenter(FLandroid/graphics/PointF;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2918
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2921
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$AnimationBuilder;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;FLandroid/graphics/PointF;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V

    return-object v0
.end method

.method public final getAppliedOrientation()I
    .locals 1

    .line 2629
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v0

    return v0
.end method

.method public final getCenter()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2489
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2490
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    .line 2491
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceCoord(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 2430
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxScale:F

    return v0
.end method

.method public getMaxTouchCount()I
    .locals 1

    .line 2925
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    return v0
.end method

.method public final getMinScale()F
    .locals 1

    .line 2450
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale()F

    move-result v0

    return v0
.end method

.method public final getOrientation()I
    .locals 1

    .line 2603
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->orientation:I

    return v0
.end method

.method public final getPanRemaining(Landroid/graphics/RectF;)V
    .locals 6

    .line 2341
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2345
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 2346
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 2348
    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panLimit:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    .line 2349
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v3

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 2350
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v3

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 2351
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v3

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 2352
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    sub-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    .line 2354
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 2355
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 2356
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 2357
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 2359
    :cond_2
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 2360
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 2361
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 2362
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :goto_0
    return-void
.end method

.method public final getSHeight()I
    .locals 1

    .line 2593
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    return v0
.end method

.method public final getSWidth()I
    .locals 1

    .line 2582
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    return v0
.end method

.method public final getScale()F
    .locals 1

    .line 2500
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    return v0
.end method

.method public final getState()Lcom/davemorrissey/labs/subscaleview/ImageViewState;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2640
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    if-lez v0, :cond_0

    .line 2642
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getOrientation()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .line 2829
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAtYEdge()Z
    .locals 1

    .line 2929
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->atYEdge:Z

    return v0
.end method

.method public final isImageLoaded()Z
    .locals 1

    .line 2563
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->imageLoadedSent:Z

    return v0
.end method

.method public final isPanEnabled()Z
    .locals 1

    .line 2689
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panEnabled:Z

    return v0
.end method

.method public final isQuickScaleEnabled()Z
    .locals 1

    .line 2671
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleEnabled:Z

    return v0
.end method

.method public final isReady()Z
    .locals 1

    .line 2542
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->readySent:Z

    return v0
.end method

.method public final isZoomEnabled()Z
    .locals 1

    .line 2653
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->zoomEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1033
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1034
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->createPaints()V

    .line 1037
    iget v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    if-eqz v0, :cond_29

    iget v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_10

    .line 1042
    :cond_0
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->decoder:Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;

    if-eqz v0, :cond_1

    .line 1043
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getMaxBitmapDimensions(Landroid/graphics/Canvas;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->initialiseBaseLayer(Landroid/graphics/Point;)V

    .line 1049
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->checkReady()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1054
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->preDraw()V

    .line 1057
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    const/4 v9, 0x0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1059
    iget v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 1060
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateBefore:Landroid/graphics/PointF;

    if-nez v1, :cond_3

    .line 1061
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateBefore:Landroid/graphics/PointF;

    .line 1063
    :cond_3
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1065
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1066
    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    .line 1067
    :goto_0
    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 1068
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)I

    move-result v2

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)F

    move-result v5

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3600(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)F

    move-result v1

    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)F

    move-result v3

    sub-float v6, v1, v3

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->ease(IJFFJ)F

    move-result v1

    iput v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 1071
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    .line 1072
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)I

    move-result v2

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3700(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v6, v1, v3

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    .line 1073
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    .line 1072
    invoke-direct/range {v1 .. v8}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->ease(IJFFJ)F

    move-result v17

    .line 1074
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    .line 1075
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)I

    move-result v2

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3700(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v6, v1, v3

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    .line 1076
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    .line 1075
    invoke-direct/range {v1 .. v8}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->ease(IJFFJ)F

    move-result v1

    .line 1078
    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-direct {v11, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewX(F)F

    move-result v4

    sub-float v4, v4, v17

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 1079
    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewY(F)F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    if-nez v10, :cond_6

    .line 1082
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)F

    move-result v1

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3600(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-direct {v11, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(Z)V

    .line 1083
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3900(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)I

    move-result v2

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sendStateChanged(FLandroid/graphics/PointF;I)V

    .line 1084
    invoke-direct {v11, v10}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->refreshRequiredTiles(Z)V

    if-eqz v10, :cond_8

    .line 1086
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$2800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1088
    :try_start_0
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$2800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1090
    sget-object v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->TAG:Ljava/lang/String;

    const-string v2, "Error thrown by animation listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    const/4 v0, 0x0

    .line 1093
    iput-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    .line 1095
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    .line 1098
    :cond_9
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    const/16 v15, 0xb4

    const/16 v10, 0xf

    const/4 v8, 0x5

    if-eqz v0, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1101
    iget v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fullImageSampleSize:I

    iget v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {v11, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->calculateInSampleSize(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1105
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v16, 0x0

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_a

    .line 1107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;

    .line 1108
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_b

    :cond_c
    const/16 v16, 0x1

    goto :goto_4

    .line 1116
    :cond_d
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1117
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_f

    if-eqz v16, :cond_e

    goto :goto_6

    :cond_e
    const/16 v13, 0xf

    const/4 v14, 0x5

    goto/16 :goto_a

    .line 1118
    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;

    .line 1119
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1120
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1121
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileBgPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_10

    .line 1122
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1124
    :cond_10
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_11

    .line 1125
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    .line 1127
    :cond_11
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1128
    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->srcArray:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v7, v1

    .line 1129
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v9, v1

    const/16 v20, 0x0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move/from16 v21, v1

    move-object/from16 v1, p0

    const/4 v14, 0x5

    move v8, v9

    move/from16 v9, v20

    const/16 v13, 0xf

    move/from16 v10, v21

    .line 1128
    invoke-direct/range {v1 .. v10}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMatrixArray([FFFFFFFFF)V

    .line 1130
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v1

    if-nez v1, :cond_12

    .line 1131
    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    .line 1132
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    .line 1133
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    .line 1131
    invoke-direct/range {v1 .. v10}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMatrixArray([FFFFFFFFF)V

    goto/16 :goto_8

    .line 1134
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_13

    .line 1135
    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    .line 1136
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    .line 1137
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    .line 1135
    invoke-direct/range {v1 .. v10}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMatrixArray([FFFFFFFFF)V

    goto/16 :goto_8

    .line 1138
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v1

    if-ne v1, v15, :cond_14

    .line 1139
    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    .line 1140
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v1

    .line 1141
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    .line 1139
    invoke-direct/range {v1 .. v10}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMatrixArray([FFFFFFFFF)V

    goto :goto_8

    .line 1142
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_15

    .line 1143
    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    .line 1144
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v1

    .line 1145
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    .line 1143
    invoke-direct/range {v1 .. v10}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMatrixArray([FFFFFFFFF)V

    .line 1147
    :cond_15
    :goto_8
    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->srcArray:[F

    const/16 v24, 0x0

    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->dstArray:[F

    const/16 v26, 0x0

    const/16 v27, 0x4

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 1148
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1149
    iget-boolean v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug:Z

    if-eqz v1, :cond_17

    .line 1150
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9

    :cond_16
    const/16 v13, 0xf

    const/4 v14, 0x5

    .line 1152
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug:Z

    if-eqz v1, :cond_17

    .line 1153
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-direct {v11, v14}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/16 v3, 0x23

    invoke-direct {v11, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugTextPaint:Landroid/graphics/Paint;

    const-string v4, "LOADING"

    invoke-virtual {v12, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1156
    :cond_17
    :goto_9
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug:Z

    if-eqz v1, :cond_18

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {v11, v14}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static/range {v19 .. v19}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {v11, v13}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugTextPaint:Landroid/graphics/Paint;

    .line 1157
    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_18
    const/4 v8, 0x5

    const/16 v10, 0xf

    goto/16 :goto_7

    :goto_a
    const/4 v8, 0x5

    const/16 v10, 0xf

    goto/16 :goto_5

    :cond_19
    const/16 v13, 0xf

    const/4 v14, 0x5

    goto/16 :goto_f

    :cond_1a
    const/16 v13, 0xf

    const/4 v14, 0x5

    .line 1171
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    .line 1173
    iget v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 1174
    iget-boolean v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsPreview:Z

    if-eqz v2, :cond_1b

    .line 1175
    iget v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    mul-float v1, v1, v2

    .line 1176
    iget v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    int-to-float v2, v2

    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v0, v2

    goto :goto_b

    :cond_1b
    move v0, v1

    .line 1179
    :goto_b
    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_1c

    .line 1180
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    .line 1182
    :cond_1c
    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1183
    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1184
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1185
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1187
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v0

    if-ne v0, v15, :cond_1d

    .line 1188
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    iget v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c

    .line 1189
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1e

    .line 1190
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    iget v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c

    .line 1191
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1f

    .line 1192
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    iget v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    iget v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1195
    :cond_1f
    :goto_c
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileBgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_23

    .line 1196
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRect:Landroid/graphics/RectF;

    if-nez v0, :cond_20

    .line 1197
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRect:Landroid/graphics/RectF;

    .line 1199
    :cond_20
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRect:Landroid/graphics/RectF;

    iget-boolean v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsPreview:Z

    if-eqz v1, :cond_21

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_d

    :cond_21
    iget v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    :goto_d
    int-to-float v1, v1

    iget-boolean v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsPreview:Z

    if-eqz v2, :cond_22

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    .line 1200
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_e

    :cond_22
    iget v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    :goto_e
    int-to-float v2, v2

    .line 1199
    invoke-virtual {v0, v9, v9, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1201
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1202
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRect:Landroid/graphics/RectF;

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1204
    :cond_23
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1207
    :cond_24
    :goto_f
    iget-boolean v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug:Z

    if-eqz v0, :cond_29

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 1209
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%.2f"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    .line 1210
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1209
    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    iget v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxScale:F

    .line 1210
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v14}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v11, v13}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugTextPaint:Landroid/graphics/Paint;

    .line 1208
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Translate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v5, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 1213
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v6

    .line 1212
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1213
    invoke-direct {v11, v14}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x1e

    invoke-direct {v11, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugTextPaint:Landroid/graphics/Paint;

    .line 1212
    invoke-virtual {v12, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Source center: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget v8, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v5, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v6, [Ljava/lang/Object;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 1217
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v9

    .line 1216
    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1217
    invoke-direct {v11, v14}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x2d

    invoke-direct {v11, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugTextPaint:Landroid/graphics/Paint;

    .line 1216
    invoke-virtual {v12, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1218
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    const v1, -0xff0001

    const v2, -0xffff01

    const/16 v4, 0x14

    const/high16 v5, -0x10000

    if-eqz v0, :cond_25

    .line 1219
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$4400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1220
    iget-object v6, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$4500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    .line 1221
    iget-object v7, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v7}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$3800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    .line 1223
    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/16 v9, 0xa

    invoke-direct {v11, v9}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v8, v0, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1224
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1226
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v6, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1227
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1229
    iget v0, v7, Landroid/graphics/PointF;->x:F

    iget v6, v7, Landroid/graphics/PointF;->y:F

    const/16 v7, 0x19

    invoke-direct {v11, v7}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1230
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v11, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1233
    :cond_25
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    if-eqz v0, :cond_26

    .line 1234
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1235
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v5, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v5, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1237
    :cond_26
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleSCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_27

    .line 1238
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1239
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleSCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct {v11, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewX(F)F

    move-result v0

    iget-object v2, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleSCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewY(F)F

    move-result v2

    const/16 v4, 0x23

    invoke-direct {v11, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1242
    :cond_27
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleVStart:Landroid/graphics/PointF;

    if-eqz v0, :cond_28

    iget-boolean v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isQuickScaling:Z

    if-eqz v0, :cond_28

    .line 1243
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1244
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleVStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleVStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->px(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1246
    :cond_28
    iget-object v0, v11, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_29
    :goto_10
    return-void
.end method

.method protected onImageLoaded()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 672
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 673
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 674
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 675
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 680
    :goto_1
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    if-lez v1, :cond_4

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 682
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result p1

    .line 683
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result p2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 685
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result p2

    int-to-double v0, p2

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result p2

    int-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p2, v0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 687
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result p1

    int-to-double v0, p1

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result p1

    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 690
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 691
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 692
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onReady()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    const/4 v0, 0x4

    .line 657
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v0, p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v0, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "onSizeChanged %dx%d -> %dx%d"

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    .line 659
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->readySent:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 660
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    .line 661
    iget p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pendingScale:Ljava/lang/Float;

    .line 662
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sPendingCenter:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 701
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$2700(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$2800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;->access$2800(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnAnimationEventListener;->onInterruptedByUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 709
    sget-object v2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->TAG:Ljava/lang/String;

    const-string v3, "Error thrown by animation listener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    .line 716
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_3

    .line 717
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->singleDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    .line 718
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    return v1

    .line 723
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isQuickScaling:Z

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->detector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 724
    :cond_4
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isZooming:Z

    .line 725
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isPanning:Z

    .line 726
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTouchCount:I

    return v1

    .line 730
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-nez v0, :cond_6

    .line 731
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateStart:Landroid/graphics/PointF;

    .line 733
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateBefore:Landroid/graphics/PointF;

    if-nez v0, :cond_7

    .line 734
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateBefore:Landroid/graphics/PointF;

    .line 736
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    if-nez v0, :cond_8

    .line 737
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vCenterStart:Landroid/graphics/PointF;

    .line 741
    :cond_8
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    .line 742
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 744
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 745
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslateBefore:Landroid/graphics/PointF;

    const/4 v5, 0x2

    invoke-direct {p0, v0, v4, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sendStateChanged(FLandroid/graphics/PointF;I)V

    if-nez v3, :cond_a

    .line 746
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_1
    return v1
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x1

    .line 1936
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->reset(Z)V

    const/4 v0, 0x0

    .line 1937
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapPaint:Landroid/graphics/Paint;

    .line 1938
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugTextPaint:Landroid/graphics/Paint;

    .line 1939
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debugLinePaint:Landroid/graphics/Paint;

    .line 1940
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileBgPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final resetScaleAndCenter()V
    .locals 3

    const/4 v0, 0x0

    .line 2523
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    const/4 v0, 0x0

    .line 2524
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->limitedScale(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pendingScale:Ljava/lang/Float;

    .line 2525
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2526
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sPendingCenter:Landroid/graphics/PointF;

    goto :goto_0

    .line 2528
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sPendingCenter:Landroid/graphics/PointF;

    .line 2530
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    return-void
.end method

.method public final setBitmapDecoderClass(Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2314
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;

    invoke-direct {v0, p1}, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    return-void

    .line 2312
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder class cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBitmapDecoderFactory(Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;)V
    .locals 1
    .param p1    # Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2330
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    return-void

    .line 2328
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder factory cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDebug(Z)V
    .locals 0

    .line 2820
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->debug:Z

    return-void
.end method

.method public final setDoubleTapZoomDpi(I)V
    .locals 2

    .line 2748
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2749
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 2750
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomScale(F)V

    return-void
.end method

.method public final setDoubleTapZoomDuration(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2771
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoomDuration:I

    return-void
.end method

.method public final setDoubleTapZoomScale(F)V
    .locals 0

    .line 2736
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoomScale:F

    return-void
.end method

.method public final setDoubleTapZoomStyle(I)V
    .locals 3

    .line 2759
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_ZOOM_STYLES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2762
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->doubleTapZoomStyle:I

    return-void

    .line 2760
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEagerLoadingEnabled(Z)V
    .locals 0

    .line 2811
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->eagerLoadingEnabled:Z

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2797
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->executor:Ljava/util/concurrent/Executor;

    return-void

    .line 2795
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Executor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, p1, v0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V
    .locals 8
    .param p1    # Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    .line 444
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->reset(Z)V

    if-eqz p3, :cond_0

    .line 446
    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->restoreState(Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V

    :cond_0
    const-string p3, "/"

    const-string v0, "android.resource://"

    if-eqz p2, :cond_5

    .line 450
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    .line 454
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getSWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getSHeight()I

    move-result v1

    if-lez v1, :cond_3

    .line 458
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getSWidth()I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    .line 459
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getSHeight()I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    .line 460
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pRegion:Landroid/graphics/Rect;

    .line 461
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->isCached()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapIsCached:Z

    .line 463
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    .line 466
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 467
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_2
    move-object v6, v1

    .line 473
    new-instance p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$BitmapLoadTask;

    .line 474
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$BitmapLoadTask;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;Landroid/net/Uri;Z)V

    .line 476
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 455
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Preview image cannot be used unless dimensions are provided for the main image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Preview image cannot be used when a bitmap is provided for the main image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 480
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 481
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    .line 482
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 481
    invoke-static {p2, p3, v0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, v1, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    goto/16 :goto_2

    .line 484
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 485
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->isCached()Z

    move-result p1

    invoke-direct {p0, p2, v1, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    goto :goto_2

    .line 487
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRegion:Landroid/graphics/Rect;

    .line 488
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->uri:Landroid/net/Uri;

    .line 489
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->uri:Landroid/net/Uri;

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 490
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 490
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->uri:Landroid/net/Uri;

    .line 496
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->getTile()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRegion:Landroid/graphics/Rect;

    if-eqz p1, :cond_9

    goto :goto_1

    .line 503
    :cond_9
    new-instance p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$BitmapLoadTask;

    .line 504
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->bitmapDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$BitmapLoadTask;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;Landroid/net/Uri;Z)V

    .line 506
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->execute(Landroid/os/AsyncTask;)V

    goto :goto_2

    .line 498
    :cond_a
    :goto_1
    new-instance p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$TilesInitTask;

    .line 499
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->regionDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->uri:Landroid/net/Uri;

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$TilesInitTask;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/content/Context;Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;Landroid/net/Uri;)V

    .line 500
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->execute(Landroid/os/AsyncTask;)V

    :goto_2
    return-void

    .line 441
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "imageSource must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V

    return-void
.end method

.method public final setMaxScale(F)V
    .locals 0

    .line 2441
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxScale:F

    return-void
.end method

.method public setMaxTileSize(I)V
    .locals 0

    .line 1838
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileWidth:I

    .line 1839
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileHeight:I

    return-void
.end method

.method public setMaxTileSize(II)V
    .locals 0

    .line 1851
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileWidth:I

    .line 1852
    iput p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->maxTileHeight:I

    return-void
.end method

.method public final setMaximumDpi(I)V
    .locals 2

    .line 2419
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2420
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 2421
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinScale(F)V

    return-void
.end method

.method public final setMinScale(F)V
    .locals 0

    .line 2460
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minScale:F

    return-void
.end method

.method public final setMinimumDpi(I)V
    .locals 2

    .line 2407
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2408
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 2409
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMaxScale(F)V

    return-void
.end method

.method public final setMinimumScaleType(I)V
    .locals 3

    .line 2389
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_SCALE_TYPES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2392
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minimumScaleType:I

    .line 2393
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2394
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(Z)V

    .line 2395
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    :cond_0
    return-void

    .line 2390
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scale type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimumTileDpi(I)V
    .locals 2

    .line 2473
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2474
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    .line 2475
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->minimumTileDpi:I

    .line 2476
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2477
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->reset(Z)V

    .line 2478
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnImageEventListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;)V
    .locals 0

    .line 2848
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onImageEventListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 2837
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnStateChangedListener;)V
    .locals 0

    .line 2860
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->onStateChangedListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnStateChangedListener;

    return-void
.end method

.method public final setOrientation(I)V
    .locals 3

    .line 2613
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_ORIENTATIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2616
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->orientation:I

    const/4 p1, 0x0

    .line 2617
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->reset(Z)V

    .line 2618
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    .line 2619
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->requestLayout()V

    return-void

    .line 2614
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setPanEnabled(Z)V
    .locals 3

    .line 2699
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panEnabled:Z

    if-nez p1, :cond_0

    .line 2700
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    .line 2701
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 2702
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->scale:F

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 2703
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2704
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->refreshRequiredTiles(Z)V

    .line 2705
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setPanLimit(I)V
    .locals 3

    .line 2372
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->VALID_PAN_LIMITS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2375
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->panLimit:I

    .line 2376
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2377
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fitToBounds(Z)V

    .line 2378
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    :cond_0
    return-void

    .line 2373
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pan limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setQuickScaleEnabled(Z)V
    .locals 0

    .line 2680
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->quickScaleEnabled:Z

    return-void
.end method

.method public final setRegionDecoderClass(Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2281
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;

    invoke-direct {v0, p1}, Lcom/davemorrissey/labs/subscaleview/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->regionDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    return-void

    .line 2279
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder class cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRegionDecoderFactory(Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;)V
    .locals 1
    .param p1    # Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory<",
            "+",
            "Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2298
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->regionDecoderFactory:Lcom/davemorrissey/labs/subscaleview/decoder/DecoderFactory;

    return-void

    .line 2296
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder factory cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setScaleAndCenter(FLandroid/graphics/PointF;)V
    .locals 1
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2511
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->anim:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Anim;

    .line 2512
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->pendingScale:Ljava/lang/Float;

    .line 2513
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sPendingCenter:Landroid/graphics/PointF;

    .line 2514
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRequestedCenter:Landroid/graphics/PointF;

    .line 2515
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    return-void
.end method

.method public final setTileBackgroundColor(I)V
    .locals 2

    .line 2716
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2717
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileBgPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 2719
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileBgPaint:Landroid/graphics/Paint;

    .line 2720
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2721
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->tileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2723
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->invalidate()V

    return-void
.end method

.method public final setZoomEnabled(Z)V
    .locals 0

    .line 2662
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->zoomEnabled:Z

    return-void
.end method

.method public final sourceToViewCoord(FF)Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2097
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2127
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewX(F)F

    move-result p1

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewY(F)F

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public final sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2085
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final sourceToViewCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2111
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public viewToFileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 1977
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->readySent:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1980
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceX(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceY(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceX(F)F

    move-result v2

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    .line 1981
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceY(F)F

    move-result p1

    float-to-int p1, p1

    .line 1980
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1982
    invoke-direct {p0, p2, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1983
    iget p1, p2, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sWidth:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sHeight:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 1984
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1983
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1985
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRegion:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    .line 1986
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->sRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final viewToSourceCoord(FF)Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2025
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2050
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2053
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceX(F)F

    move-result p1

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceY(F)F

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public final viewToSourceCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2013
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2037
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public visibleFileRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 1998
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->vTranslate:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->readySent:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2001
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2002
    invoke-virtual {p0, p1, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->viewToFileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method
