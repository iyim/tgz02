.class Lcom/alibaba/ailabs/systemui/StatusBarService$4;
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

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$4;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 116
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onReceive"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 120
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "screen on"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$4;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$500(Lcom/alibaba/ailabs/systemui/StatusBarService;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 122
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "screen off"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$4;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-static {p1}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$600(Lcom/alibaba/ailabs/systemui/StatusBarService;)V

    :cond_1
    :goto_0
    return-void
.end method
