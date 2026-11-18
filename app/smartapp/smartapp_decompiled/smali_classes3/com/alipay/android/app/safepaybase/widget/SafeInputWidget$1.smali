.class Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->initPwdInputView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$100(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$000(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->OnTextChanged(ILjava/lang/String;III)V

    .line 78
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {p2}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;

    move-result-object p1

    const p2, -0x777778

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 81
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;

    move-result-object p1

    const-string p2, "#108ee9"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 84
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setClickable(Z)V

    .line 87
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;->this$0:Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->access$300(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V

    return-void
.end method
