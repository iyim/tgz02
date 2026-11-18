.class Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "MarketTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 398
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
