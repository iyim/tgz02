.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7$1;
.super Ljava/lang/Object;
.source "ForbiddenModeManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$500(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V

    return-void
.end method
