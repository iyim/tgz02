.class Lcom/alibaba/ailabs/systemui/StatusBarService$7;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateEyeMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/systemui/StatusBarService;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$7;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 299
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getInstance()Lcom/alibaba/ailabs/systemui/StatusNavManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$7;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-static {v1}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$800(Lcom/alibaba/ailabs/systemui/StatusBarService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateEyeMode(Z)V

    return-void
.end method
