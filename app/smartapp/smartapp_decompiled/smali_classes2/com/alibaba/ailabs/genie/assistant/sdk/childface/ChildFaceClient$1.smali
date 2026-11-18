.class Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$1;
.super Ljava/lang/Object;
.source "ChildFaceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$1;->val$result:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;Ljava/lang/String;)V

    return-void
.end method
