.class public Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.super Ljava/lang/Object;
.source "AbstractKeyboard.java"


# instance fields
.field protected keyboardType:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field protected keyboardView:Landroid/view/ViewGroup;

.field protected onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected getRelatePoint(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 63
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getRelatePoint(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    .line 66
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 59
    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    return-object p1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->keyboardView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onDel()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;->onDel()V

    :cond_0
    return-void
.end method

.method protected onInput(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;->onInput(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onOK()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;->onOK()V

    :cond_0
    return-void
.end method

.method protected onStatisticEvent(Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;->onStatisticEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
