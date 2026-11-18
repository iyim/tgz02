.class Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController$1;
.super Landroid/os/Handler;
.source "BluetoothsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;Landroid/os/Looper;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 45
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getBluetoothStatus()Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;

    move-result-object p1

    .line 48
    iget p1, p1, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->closeDiscoverableTimeout(Z)V

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    const-string v0, "\u84dd\u7259\u914d\u5bf9\u5931\u8d25"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->access$000(Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
