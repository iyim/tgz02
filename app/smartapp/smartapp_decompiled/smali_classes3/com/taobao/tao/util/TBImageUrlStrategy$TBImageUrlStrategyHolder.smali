.class Lcom/taobao/tao/util/TBImageUrlStrategy$TBImageUrlStrategyHolder;
.super Ljava/lang/Object;
.source "TBImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/TBImageUrlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TBImageUrlStrategyHolder"
.end annotation


# static fields
.field public static final instance:Lcom/taobao/tao/util/TBImageUrlStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/tao/util/TBImageUrlStrategy;-><init>(Lcom/taobao/tao/util/TBImageUrlStrategy$1;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$TBImageUrlStrategyHolder;->instance:Lcom/taobao/tao/util/TBImageUrlStrategy;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
