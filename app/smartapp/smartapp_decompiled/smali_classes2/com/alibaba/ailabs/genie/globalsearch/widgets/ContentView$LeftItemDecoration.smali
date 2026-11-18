.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$LeftItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeftItemDecoration"
.end annotation


# instance fields
.field private space:I

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;I)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$LeftItemDecoration;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 87
    iput p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$LeftItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 93
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    .line 94
    iget p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$LeftItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    return-void
.end method
