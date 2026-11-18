.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5$1;->this$1:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5$1;->this$1:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$5;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method
