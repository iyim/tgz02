.class Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener$1;
.super Ljava/lang/Object;
.source "InputEventHandlerWorker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;->setDinamicParams(Lcom/taobao/android/dinamic/model/DinamicParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener$1;->this$1:Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 166
    iget-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener$1;->this$1:Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;

    invoke-static {p1}, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;->access$000(Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener$1;->this$1:Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;

    invoke-static {p1}, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;->access$100(Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;)V

    :cond_0
    return-void
.end method
