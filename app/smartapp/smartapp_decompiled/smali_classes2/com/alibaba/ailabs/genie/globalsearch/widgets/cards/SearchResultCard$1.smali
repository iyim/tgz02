.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;
.super Ljava/lang/Object;
.source "SearchResultCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lambda$buildBaike$13(Ljava/lang/Integer;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

.field final synthetic val$callBack:Ljava/util/function/Function;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;Landroid/view/View;Ljava/util/function/Function;Landroid/os/Handler;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->val$callBack:Ljava/util/function/Function;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->val$view:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 348
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->val$view:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->isViewExposed(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 349
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->mRunnable:Ljava/lang/Runnable;

    .line 350
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->val$callBack:Ljava/util/function/Function;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lifecycleObserver:Landroid/arch/lifecycle/GenericLifecycleObserver;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lifecycleObserver:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/Lifecycle;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 353
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lifecycleObserver:Landroid/arch/lifecycle/GenericLifecycleObserver;

    :cond_2
    :goto_1
    return-void
.end method
