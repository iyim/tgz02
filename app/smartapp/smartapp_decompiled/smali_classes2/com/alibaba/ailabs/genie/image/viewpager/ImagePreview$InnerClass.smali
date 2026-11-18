.class Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$InnerClass;
.super Ljava/lang/Object;
.source "ImagePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerClass"
.end annotation


# static fields
.field private static instance:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 459
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$InnerClass;->instance:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 1

    .line 458
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$InnerClass;->instance:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    return-object v0
.end method
