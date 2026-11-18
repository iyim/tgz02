.class Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;
.super Ljava/lang/Object;
.source "InputEventHandlerWorker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamic/event/InputEventHandlerWorker;->bindEvent(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamic/event/InputEventHandlerWorker;

.field final synthetic val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

.field final synthetic val$eventProperty:Ljava/util/Map;

.field final synthetic val$property:Lcom/taobao/android/dinamic/property/DinamicProperty;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamic/event/InputEventHandlerWorker;Landroid/view/View;Ljava/util/Map;Lcom/taobao/android/dinamic/model/DinamicParams;Lcom/taobao/android/dinamic/property/DinamicProperty;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->this$0:Lcom/taobao/android/dinamic/event/InputEventHandlerWorker;

    iput-object p2, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$eventProperty:Ljava/util/Map;

    iput-object p4, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    iput-object p5, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 90
    iget-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$view:Landroid/view/View;

    sget v0, Lcom/taobao/android/dinamic/DinamicTagKey;->KEY_BOARD_LISTENER:I

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;

    if-nez p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$view:Landroid/view/View;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 97
    iget-object v0, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 100
    iget-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$eventProperty:Ljava/util/Map;

    const-string v0, "onBegin"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$eventProperty:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    iget-object v1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$view:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$view:Landroid/view/View;

    sget v2, Lcom/taobao/android/dinamic/DinamicTagKey;->VIEW_PARAMS:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    iget-object v2, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    invoke-static {v0, v1, v2, p1}, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker;->handleEvent(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;Lcom/taobao/android/dinamic/property/DinamicProperty;Ljava/lang/String;)V

    .line 112
    :cond_0
    new-instance p1, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;

    iget-object v0, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->this$0:Lcom/taobao/android/dinamic/event/InputEventHandlerWorker;

    iget-object v1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    invoke-direct {p1, v0, v1, v2}, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;-><init>(Lcom/taobao/android/dinamic/event/InputEventHandlerWorker;Landroid/view/View;Lcom/taobao/android/dinamic/property/DinamicProperty;)V

    .line 113
    iget-object v0, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$KeyboardListener;->setDinamicParams(Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 114
    iget-object v0, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 115
    iget-object v0, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$1;->val$view:Landroid/view/View;

    sget v1, Lcom/taobao/android/dinamic/DinamicTagKey;->KEY_BOARD_LISTENER:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    return p2
.end method
