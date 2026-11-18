.class Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "RecommendTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    const/16 v0, 0x2b08

    if-eq p1, v0, :cond_0

    const/16 p1, 0xc

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method
