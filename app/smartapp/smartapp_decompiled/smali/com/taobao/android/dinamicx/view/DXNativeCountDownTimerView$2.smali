.class Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$2;
.super Landroid/content/BroadcastReceiver;
.source "DXNativeCountDownTimerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$2;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 381
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$2;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    invoke-static {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->access$100(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;)Lcom/taobao/android/dinamic/view/HandlerTimer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 384
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 385
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 386
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$2;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    invoke-static {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->access$100(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;)Lcom/taobao/android/dinamic/view/HandlerTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/HandlerTimer;->stop()V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 387
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 388
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$2;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$2;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    invoke-static {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->access$200(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 389
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$2;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    invoke-static {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->access$100(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;)Lcom/taobao/android/dinamic/view/HandlerTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/HandlerTimer;->start()V

    goto :goto_0

    .line 391
    :cond_2
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$2;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    invoke-static {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->access$100(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;)Lcom/taobao/android/dinamic/view/HandlerTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/HandlerTimer;->stop()V

    :cond_3
    :goto_0
    return-void
.end method
