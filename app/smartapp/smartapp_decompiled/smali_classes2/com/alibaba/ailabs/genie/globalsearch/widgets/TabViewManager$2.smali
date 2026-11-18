.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$2;
.super Ljava/lang/Object;
.source "TabViewManager.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->buildScrollView()Landroid/widget/HorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

.field final synthetic val$layout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$2;->val$layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$2;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->exposeChild(Landroid/view/ViewGroup;)V

    return-void
.end method
