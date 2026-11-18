.class public final synthetic Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$jKKUFDO4jaxgwQVf0ao2k_hJTrY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$jKKUFDO4jaxgwQVf0ao2k_hJTrY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$jKKUFDO4jaxgwQVf0ao2k_hJTrY;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$jKKUFDO4jaxgwQVf0ao2k_hJTrY;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$jKKUFDO4jaxgwQVf0ao2k_hJTrY;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$jKKUFDO4jaxgwQVf0ao2k_hJTrY;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;->lambda$pullAppByStats$0(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method
