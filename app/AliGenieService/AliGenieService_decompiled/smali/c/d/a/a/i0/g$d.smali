.class public Lc/d/a/a/i0/g$d;
.super Lcom/google/android/material/textfield/TextInputLayout$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/i0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lc/d/a/a/i0/g;


# direct methods
.method public constructor <init>(Lc/d/a/a/i0/g;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/i0/g$d;->e:Lc/d/a/a/i0/g;

    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout$e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/h/k/a0/b;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$e;->a(Landroid/view/View;Lb/h/k/a0/b;)V

    iget-object p1, p0, Lc/d/a/a/i0/g$d;->e:Lc/d/a/a/i0/g;

    iget-object p1, p1, Lc/d/a/a/i0/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p1

    if-nez p1, :cond_0

    const-class p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1
    iget-object v0, p2, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p1, p2, Lb/h/k/a0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Lb/h/k/a0/b;->a(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/k/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-object p1, p0, Lc/d/a/a/i0/g$d;->e:Lc/d/a/a/i0/g;

    iget-object v0, p1, Lc/d/a/a/i0/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lc/d/a/a/i0/g;->a(Lc/d/a/a/i0/g;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lc/d/a/a/i0/g$d;->e:Lc/d/a/a/i0/g;

    .line 3
    iget-object p2, p2, Lc/d/a/a/i0/g;->n:Landroid/view/accessibility/AccessibilityManager;

    .line 4
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lc/d/a/a/i0/g$d;->e:Lc/d/a/a/i0/g;

    .line 5
    invoke-virtual {p2, p1}, Lc/d/a/a/i0/g;->d(Landroid/widget/AutoCompleteTextView;)V

    :cond_0
    return-void
.end method
