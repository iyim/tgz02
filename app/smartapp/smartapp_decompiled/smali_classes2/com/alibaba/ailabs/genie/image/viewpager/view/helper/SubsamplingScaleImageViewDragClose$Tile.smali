.class Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageViewDragClose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tile"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private fileSRect:Landroid/graphics/Rect;

.field private loading:Z

.field private sRect:Landroid/graphics/Rect;

.field private sampleSize:I

.field private vRect:Landroid/graphics/Rect;

.field private visible:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$1;)V
    .locals 0

    .line 3240
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Z
    .locals 0

    .line 3240
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->visible:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Z
    .locals 0

    .line 3240
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->loading:Z

    return p0
.end method

.method static synthetic access$4002(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Z)Z
    .locals 0

    .line 3240
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->loading:Z

    return p1
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Z)Z
    .locals 0

    .line 3240
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->visible:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;
    .locals 0

    .line 3240
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->sRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 3240
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->sRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;
    .locals 0

    .line 3240
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->vRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 3240
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->vRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)I
    .locals 0

    .line 3240
    iget p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->sampleSize:I

    return p0
.end method

.method static synthetic access$4302(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;I)I
    .locals 0

    .line 3240
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->sampleSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Bitmap;
    .locals 0

    .line 3240
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;)Landroid/graphics/Rect;
    .locals 0

    .line 3240
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->fileSRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 3240
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->fileSRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 3240
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$Tile;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method
