.class public final synthetic Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$_RvOlCevv5ooebg2By2rXxTtqvU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

.field private final synthetic f$1:Landroid/os/Handler;

.field private final synthetic f$2:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;Landroid/os/Handler;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$_RvOlCevv5ooebg2By2rXxTtqvU;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$_RvOlCevv5ooebg2By2rXxTtqvU;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$_RvOlCevv5ooebg2By2rXxTtqvU;->f$2:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$_RvOlCevv5ooebg2By2rXxTtqvU;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$_RvOlCevv5ooebg2By2rXxTtqvU;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/-$$Lambda$SearchResultCard$_RvOlCevv5ooebg2By2rXxTtqvU;->f$2:Ljava/util/function/Function;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->lambda$null$12$SearchResultCard(Landroid/os/Handler;Ljava/util/function/Function;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method
