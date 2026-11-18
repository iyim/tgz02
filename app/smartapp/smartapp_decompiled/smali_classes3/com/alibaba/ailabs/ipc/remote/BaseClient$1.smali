.class Lcom/alibaba/ailabs/ipc/remote/BaseClient$1;
.super Ljava/lang/Object;
.source "BaseClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ipc/remote/BaseClient;->callAsynMethod(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/ipc/remote/BaseClient;

.field final synthetic val$m:I

.field final synthetic val$param:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ipc/remote/BaseClient;ILandroid/os/Bundle;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient$1;->this$0:Lcom/alibaba/ailabs/ipc/remote/BaseClient;

    iput p2, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient$1;->val$m:I

    iput-object p3, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient$1;->val$param:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient$1;->this$0:Lcom/alibaba/ailabs/ipc/remote/BaseClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/BaseClient;->access$000(Lcom/alibaba/ailabs/ipc/remote/BaseClient;)Lcom/alibaba/ailabs/ipc/remote/SvrFactory;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient$1;->val$m:I

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/remote/BaseClient$1;->val$param:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->callVoidMethod(ILandroid/os/Bundle;)Z

    return-void
.end method
