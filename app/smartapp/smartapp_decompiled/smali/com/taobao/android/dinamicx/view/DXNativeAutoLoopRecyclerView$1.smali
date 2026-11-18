.class Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$1;
.super Landroid/content/BroadcastReceiver;
.source "DXNativeAutoLoopRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$1;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 173
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$1;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->stopTimer()V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 174
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$1;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$1;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->startTimer()V

    goto :goto_0

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$1;->this$0:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->stopTimer()V

    :cond_2
    :goto_0
    return-void
.end method
