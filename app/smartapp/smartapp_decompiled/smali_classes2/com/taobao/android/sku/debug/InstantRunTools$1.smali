.class final Lcom/taobao/android/sku/debug/InstantRunTools$1;
.super Ljava/lang/Object;
.source "InstantRunTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/debug/InstantRunTools;->writeDebugFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$searchHolder:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$editText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$searchHolder:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 163
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 164
    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$searchHolder:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    .line 170
    iget-object v1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$searchHolder:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 173
    iget-object v1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 174
    iget-object v1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 176
    iget-object p1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$context:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 177
    iget-object v0, p0, Lcom/taobao/android/sku/debug/InstantRunTools$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
