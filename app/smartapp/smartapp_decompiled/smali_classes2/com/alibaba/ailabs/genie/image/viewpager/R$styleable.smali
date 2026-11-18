.class public final Lcom/alibaba/ailabs/genie/image/viewpager/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SubsamplingScaleImageView:[I

.field public static final SubsamplingScaleImageView_assetName:I = 0x0

.field public static final SubsamplingScaleImageView_panEnabled:I = 0x1

.field public static final SubsamplingScaleImageView_quickScaleEnabled:I = 0x2

.field public static final SubsamplingScaleImageView_src:I = 0x3

.field public static final SubsamplingScaleImageView_tileBackgroundColor:I = 0x4

.field public static final SubsamplingScaleImageView_zoomEnabled:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 78
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/R$styleable;->SubsamplingScaleImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04003a
        0x7f04022e
        0x7f040242
        0x7f040288
        0x7f040317
        0x7f0403f8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
