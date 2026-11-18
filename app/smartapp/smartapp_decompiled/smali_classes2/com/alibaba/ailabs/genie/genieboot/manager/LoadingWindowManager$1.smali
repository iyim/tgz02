.class Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager$1;
.super Landroid/os/Handler;
.source "LoadingWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 33
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->access$002(Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;Z)Z

    .line 36
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->dismissLoadingView()V

    :goto_0
    return-void
.end method
