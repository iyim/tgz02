.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$1;
.super Ljava/lang/Object;
.source "TabViewManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
