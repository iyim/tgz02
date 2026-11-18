.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$1;
.super Ljava/lang/Object;
.source "SnackBarManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$1;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$1;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->handleTimeout(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;)V

    const/4 p1, 0x1

    return p1
.end method
