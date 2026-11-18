.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor$1;
.super Ljava/lang/Object;
.source "ForbiddenModeScheduledExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->doForbiddenMode()V

    return-void
.end method
