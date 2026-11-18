.class Lcom/alibaba/ailabs/systemui/StatusBarService$1$1;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/systemui/StatusBarService$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/systemui/StatusBarService$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/systemui/StatusBarService$1;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$1$1;->this$1:Lcom/alibaba/ailabs/systemui/StatusBarService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$1$1;->this$1:Lcom/alibaba/ailabs/systemui/StatusBarService$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/systemui/StatusBarService$1;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-static {v0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$100(Lcom/alibaba/ailabs/systemui/StatusBarService;)V

    return-void
.end method
