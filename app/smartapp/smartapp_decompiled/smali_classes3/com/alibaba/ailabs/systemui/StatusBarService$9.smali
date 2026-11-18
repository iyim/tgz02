.class Lcom/alibaba/ailabs/systemui/StatusBarService$9;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateTime()V
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

    .line 341
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$9;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 344
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getInstance()Lcom/alibaba/ailabs/systemui/StatusNavManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$9;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-static {v1}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$1000(Lcom/alibaba/ailabs/systemui/StatusBarService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateTime(Ljava/lang/String;)V

    return-void
.end method
