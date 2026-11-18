.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$3;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$3;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 5

    .line 381
    sget-object v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$3;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public show()V
    .locals 4

    .line 376
    sget-object v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$3;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
