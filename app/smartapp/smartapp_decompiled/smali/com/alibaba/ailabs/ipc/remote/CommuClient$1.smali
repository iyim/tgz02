.class Lcom/alibaba/ailabs/ipc/remote/CommuClient$1;
.super Ljava/lang/Object;
.source "CommuClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ipc/remote/CommuClient;->callAsynMethod(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/ipc/remote/CommuClient;

.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$method:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ipc/remote/CommuClient;ILandroid/os/Bundle;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/CommuClient$1;->this$0:Lcom/alibaba/ailabs/ipc/remote/CommuClient;

    iput p2, p0, Lcom/alibaba/ailabs/ipc/remote/CommuClient$1;->val$method:I

    iput-object p3, p0, Lcom/alibaba/ailabs/ipc/remote/CommuClient$1;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/CommuClient$1;->this$0:Lcom/alibaba/ailabs/ipc/remote/CommuClient;

    iget v1, p0, Lcom/alibaba/ailabs/ipc/remote/CommuClient$1;->val$method:I

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/remote/CommuClient$1;->val$data:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->callVoidMethod(ILandroid/os/Bundle;)Z

    return-void
.end method
