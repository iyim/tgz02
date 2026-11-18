.class Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$1;
.super Ljava/lang/Object;
.source "DXNativeCountDownTimerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getTimer()Lcom/taobao/android/dinamic/view/HandlerTimer;
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

    .line 120
    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$1;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$1;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->access$000(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$1;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->updateCountView()V

    :cond_0
    return-void
.end method
