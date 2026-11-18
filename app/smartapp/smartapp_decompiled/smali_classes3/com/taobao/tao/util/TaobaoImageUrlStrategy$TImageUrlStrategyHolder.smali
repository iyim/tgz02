.class Lcom/taobao/tao/util/TaobaoImageUrlStrategy$TImageUrlStrategyHolder;
.super Ljava/lang/Object;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/TaobaoImageUrlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TImageUrlStrategyHolder"
.end annotation


# static fields
.field public static final instance:Lcom/taobao/tao/util/TaobaoImageUrlStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1090
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    invoke-direct {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;-><init>()V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$TImageUrlStrategyHolder;->instance:Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
