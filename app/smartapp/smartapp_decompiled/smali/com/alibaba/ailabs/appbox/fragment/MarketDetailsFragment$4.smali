.class Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$4;
.super Ljava/lang/Object;
.source "MarketDetailsFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bindData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$700(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
