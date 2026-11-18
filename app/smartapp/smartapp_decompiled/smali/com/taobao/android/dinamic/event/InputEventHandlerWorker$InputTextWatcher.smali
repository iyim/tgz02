.class public Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;
.super Ljava/lang/Object;
.source "InputEventHandlerWorker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/event/InputEventHandlerWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputTextWatcher"
.end annotation


# instance fields
.field private dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

.field private onBeginEventExp:Ljava/lang/String;

.field private onChangeEventExp:Ljava/lang/String;

.field private property:Lcom/taobao/android/dinamic/property/DinamicProperty;

.field final synthetic this$0:Lcom/taobao/android/dinamic/event/InputEventHandlerWorker;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamic/event/InputEventHandlerWorker;Landroid/view/View;Lcom/taobao/android/dinamic/property/DinamicProperty;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->this$0:Lcom/taobao/android/dinamic/event/InputEventHandlerWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p3, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    .line 234
    iput-object p2, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->view:Landroid/view/View;

    .line 235
    iget-object p1, p3, Lcom/taobao/android/dinamic/property/DinamicProperty;->eventProperty:Ljava/util/Map;

    .line 236
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "onChange"

    .line 237
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->onChangeEventExp:Ljava/lang/String;

    const-string p2, "onBegin"

    .line 238
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->onBeginEventExp:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 253
    iget-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->onChangeEventExp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 254
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    iget-object p2, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->view:Landroid/view/View;

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object p2, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->view:Landroid/view/View;

    sget p3, Lcom/taobao/android/dinamic/DinamicTagKey;->VIEW_PARAMS:I

    invoke-virtual {p2, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 258
    iget-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->view:Landroid/view/View;

    iget-object p2, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    iget-object p3, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    iget-object p4, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->onChangeEventExp:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4}, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker;->handleEvent(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;Lcom/taobao/android/dinamic/property/DinamicProperty;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDinamicParams(Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/taobao/android/dinamic/event/InputEventHandlerWorker$InputTextWatcher;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    return-void
.end method
