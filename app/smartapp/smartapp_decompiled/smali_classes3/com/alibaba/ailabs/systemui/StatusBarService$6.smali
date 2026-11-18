.class Lcom/alibaba/ailabs/systemui/StatusBarService$6;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/systemui/StatusBarService;->updateDnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

.field final synthetic val$dndSwitch:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/systemui/StatusBarService;Z)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$6;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$6;->val$dndSwitch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 269
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getInstance()Lcom/alibaba/ailabs/systemui/StatusNavManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$6;->val$dndSwitch:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateMoonMode(Z)V

    return-void
.end method
