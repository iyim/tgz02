.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->setDataList(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;

.field final synthetic val$adapter:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;

.field final synthetic val$dataList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;Ljava/util/List;Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$1;->val$dataList:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$1;->val$adapter:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .line 44
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 45
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->access$000(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 46
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->access$002(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;Z)Z

    .line 47
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p2

    add-int/lit8 v1, p2, -0x1

    .line 48
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result p1

    if-le v1, p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$1;->val$dataList:Ljava/util/List;

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    const-string v2, "footer"

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$1;->val$adapter:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->notifyItemInserted(I)V

    .line 52
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->cancelAutoJump()V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 59
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 61
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 62
    instance-of v1, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    if-eqz v1, :cond_0

    .line 63
    nop

    nop

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->onScrollToXPos(I)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
