.class public final Lb/h/k/a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lb/h/k/a;


# direct methods
.method public constructor <init>(Lb/h/k/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lb/h/k/a$a;->a:Lb/h/k/a;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lb/h/k/a$a;->a:Lb/h/k/a;

    invoke-virtual {v0, p1, p2}, Lb/h/k/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lb/h/k/a$a;->a:Lb/h/k/a;

    invoke-virtual {v0, p1}, Lb/h/k/a;->a(Landroid/view/View;)Lb/h/k/a0/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lb/h/k/a0/c;->a:Ljava/lang/Object;

    .line 2
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lb/h/k/a$a;->a:Lb/h/k/a;

    invoke-virtual {v0, p1, p2}, Lb/h/k/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 1
    new-instance v0, Lb/h/k/a0/b;

    invoke-direct {v0, p2}, Lb/h/k/a0/b;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-static {p1}, Lb/h/k/q;->D(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lb/h/k/a0/b;->b(Z)V

    .line 3
    new-instance v1, Lb/h/k/q$b;

    sget v2, Lb/h/a;->tag_accessibility_heading:I

    const-class v3, Ljava/lang/Boolean;

    const/16 v4, 0x1c

    invoke-direct {v1, v2, v3, v4}, Lb/h/k/q$b;-><init>(ILjava/lang/Class;I)V

    .line 4
    invoke-virtual {v1, p1}, Lb/h/k/q$d;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Lb/h/k/a0/b;->a(Z)V

    invoke-static {p1}, Lb/h/k/q;->d(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/h/k/a0/b;->b(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v1, Lb/h/k/t;

    sget v3, Lb/h/a;->tag_state_description:I

    const-class v4, Ljava/lang/CharSequence;

    const/16 v5, 0x40

    const/16 v6, 0x1e

    invoke-direct {v1, v3, v4, v5, v6}, Lb/h/k/t;-><init>(ILjava/lang/Class;II)V

    .line 7
    invoke-virtual {v1, p1}, Lb/h/k/q$d;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {v0, v1}, Lb/h/k/a0/b;->c(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lb/h/k/a$a;->a:Lb/h/k/a;

    invoke-virtual {v1, p1, v0}, Lb/h/k/a;->a(Landroid/view/View;Lb/h/k/a0/b;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    sget p2, Lb/h/a;->tag_accessibility_actions:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 11
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/h/k/a0/b$a;

    invoke-virtual {v0, p2}, Lb/h/k/a0/b;->a(Lb/h/k/a0/b$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lb/h/k/a$a;->a:Lb/h/k/a;

    invoke-virtual {v0, p1, p2}, Lb/h/k/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lb/h/k/a$a;->a:Lb/h/k/a;

    invoke-virtual {v0, p1, p2, p3}, Lb/h/k/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lb/h/k/a$a;->a:Lb/h/k/a;

    invoke-virtual {v0, p1, p2, p3}, Lb/h/k/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lb/h/k/a$a;->a:Lb/h/k/a;

    invoke-virtual {v0, p1, p2}, Lb/h/k/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lb/h/k/a$a;->a:Lb/h/k/a;

    invoke-virtual {v0, p1, p2}, Lb/h/k/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
