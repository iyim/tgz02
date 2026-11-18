.class Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ExposeRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$1;->this$0:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$1;->this$0:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->access$000(Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
