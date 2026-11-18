.class Lcom/alibaba/ailabs/systemui/StatusBarService$3;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/systemui/StatusBarService;
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

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$3;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 96
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$3;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$302(Lcom/alibaba/ailabs/systemui/StatusBarService;Z)Z

    const-string p1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 98
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 99
    iget-object p2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$3;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$400(Lcom/alibaba/ailabs/systemui/StatusBarService;I)V

    .line 100
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBluetoothState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/systemui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "android.bluetooth.adapter.extra.SCAN_MODE"

    .line 103
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 104
    iget-object p2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$3;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$400(Lcom/alibaba/ailabs/systemui/StatusBarService;I)V

    .line 105
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothAdapter.ACTION_SCAN_MODE_CHANGED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/systemui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u84dd\u7259\u66f4\u65b0\u5f02\u5e38\u4e86"

    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/systemui/Log;->e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
