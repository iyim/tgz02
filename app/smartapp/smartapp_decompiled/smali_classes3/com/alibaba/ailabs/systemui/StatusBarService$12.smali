.class Lcom/alibaba/ailabs/systemui/StatusBarService$12;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/systemui/StatusBarService;->updateBluetoothState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

.field final synthetic val$blueState:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/systemui/StatusBarService;I)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$12;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    iput p2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$12;->val$blueState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 468
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getInstance()Lcom/alibaba/ailabs/systemui/StatusNavManager;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$12;->val$blueState:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateBluetooth(I)V

    return-void
.end method
