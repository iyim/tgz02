.class Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode$1;
.super Ljava/lang/Object;
.source "DXCountDownTimerWidgetNode.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setFutureTime(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 265
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXEvent;

    const-wide v1, -0x5e2e029062192910L    # -9.004360906086141E-146

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    .line 266
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    return-void
.end method
