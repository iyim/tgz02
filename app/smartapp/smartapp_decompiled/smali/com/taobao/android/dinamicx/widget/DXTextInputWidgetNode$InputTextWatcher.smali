.class public Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;
.super Ljava/lang/Object;
.source "DXTextInputWidgetNode.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputTextWatcher"
.end annotation


# instance fields
.field dxTextInputEvent:Lcom/taobao/android/dinamicx/expression/event/DXTextInputEvent;

.field private textInputWidgetNode:Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;Landroid/view/View;)V
    .locals 3

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXTextInputEvent;

    const-wide v1, 0x49652a47524c602bL    # 3.775989076956713E45

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXTextInputEvent;-><init>(J)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;->dxTextInputEvent:Lcom/taobao/android/dinamicx/expression/event/DXTextInputEvent;

    .line 329
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;->textInputWidgetNode:Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;

    .line 330
    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;->view:Landroid/view/View;

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

    .line 340
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;->dxTextInputEvent:Lcom/taobao/android/dinamicx/expression/event/DXTextInputEvent;

    iget-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;->view:Landroid/view/View;

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXTextInputEvent;->setText(Landroid/text/Editable;)V

    .line 341
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;->textInputWidgetNode:Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;

    iget-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$InputTextWatcher;->dxTextInputEvent:Lcom/taobao/android/dinamicx/expression/event/DXTextInputEvent;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    return-void
.end method
