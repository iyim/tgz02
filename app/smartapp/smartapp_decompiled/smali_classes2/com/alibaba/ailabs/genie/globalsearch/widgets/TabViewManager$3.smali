.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$3;
.super Ljava/lang/Object;
.source "TabViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->refreshPageUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;Landroid/view/ViewGroup;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$3;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$3;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->exposeChild(Landroid/view/ViewGroup;)V

    return-void
.end method
