.class Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader$InstanceHolder;
.super Ljava/lang/Object;
.source "ImagePreLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static preLoader:Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;-><init>(Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader$InstanceHolder;->preLoader:Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
