.class final Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler$Holder;
.super Ljava/lang/Object;
.source "GenieDownsampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;-><init>(Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler$Holder;->INSTANCE:Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;
    .locals 1

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler$Holder;->INSTANCE:Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;

    return-object v0
.end method
