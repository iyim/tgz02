.class Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;
.super Ljava/lang/Object;
.source "GenieRouterClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->openIpc(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

.field final synthetic val$data:Ljava/util/HashMap;

.field final synthetic val$intentData:Landroid/os/Bundle;

.field final synthetic val$launchMode:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->this$0:Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$uri:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$launchMode:I

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$data:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$intentData:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "submit open:uri= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " launchMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$launchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAIRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$uri:Ljava/lang/String;

    const-string v2, "router_uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget v1, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$launchMode:I

    const-string v2, "router_lunchMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$packageName:Ljava/lang/String;

    const-string v2, "router_packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v1, Lcom/alibaba/ailabs/genie/router/utils/RouterMap;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$data:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/router/utils/RouterMap;-><init>(Ljava/util/HashMap;)V

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 223
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->val$intentData:Landroid/os/Bundle;

    const-string v2, "router_intentData"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;->this$0:Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
