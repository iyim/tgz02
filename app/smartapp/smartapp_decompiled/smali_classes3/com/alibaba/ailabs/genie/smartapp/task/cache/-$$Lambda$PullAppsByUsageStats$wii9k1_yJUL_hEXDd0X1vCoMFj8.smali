.class public final synthetic Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$wii9k1_yJUL_hEXDd0X1vCoMFj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Ljava/util/PriorityQueue;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/PriorityQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$wii9k1_yJUL_hEXDd0X1vCoMFj8;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$wii9k1_yJUL_hEXDd0X1vCoMFj8;->f$1:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$wii9k1_yJUL_hEXDd0X1vCoMFj8;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/task/cache/-$$Lambda$PullAppsByUsageStats$wii9k1_yJUL_hEXDd0X1vCoMFj8;->f$1:Ljava/util/PriorityQueue;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/smartapp/task/cache/PullAppsByUsageStats;->lambda$pullAppByStats$1(Landroid/content/Context;Ljava/util/PriorityQueue;)V

    return-void
.end method
