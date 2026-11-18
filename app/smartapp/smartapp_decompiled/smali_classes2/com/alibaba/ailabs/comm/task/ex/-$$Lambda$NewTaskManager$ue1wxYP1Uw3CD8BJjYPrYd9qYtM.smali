.class public final synthetic Lcom/alibaba/ailabs/comm/task/ex/-$$Lambda$NewTaskManager$ue1wxYP1Uw3CD8BJjYPrYd9qYtM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/-$$Lambda$NewTaskManager$ue1wxYP1Uw3CD8BJjYPrYd9qYtM;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/ailabs/comm/task/ex/-$$Lambda$NewTaskManager$ue1wxYP1Uw3CD8BJjYPrYd9qYtM;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/-$$Lambda$NewTaskManager$ue1wxYP1Uw3CD8BJjYPrYd9qYtM;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/ex/-$$Lambda$NewTaskManager$ue1wxYP1Uw3CD8BJjYPrYd9qYtM;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskManager;->lambda$killProcessV2$0(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
