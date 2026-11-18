.class Lcom/alibaba/ailabs/genie/service/GenieManageClient$1;
.super Ljava/lang/Object;
.source "GenieManageClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/service/GenieManageClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/service/GenieManageClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/service/GenieManageClient;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient$1;->this$0:Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient$1;->this$0:Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->access$008(Lcom/alibaba/ailabs/genie/service/GenieManageClient;)I

    .line 269
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient$1;->this$0:Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getGenieManageService(Z)Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    return-void
.end method
