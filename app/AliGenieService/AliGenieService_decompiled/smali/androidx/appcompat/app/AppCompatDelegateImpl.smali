.class public Landroidx/appcompat/app/AppCompatDelegateImpl;
.super Lb/b/k/k;
.source ""

# interfaces
.implements Lb/b/p/i/g$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatDelegateImpl$i;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$f;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$h;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$g;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$e;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$j;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$c;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$k;,
        Landroidx/appcompat/app/AppCompatDelegateImpl$d;
    }
.end annotation


# static fields
.field public static final a0:Lb/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/h<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b0:Z

.field public static final c0:[I

.field public static final d0:Z

.field public static final e0:Z

.field public static f0:Z


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field public H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:I

.field public O:I

.field public P:Z

.field public Q:Z

.field public R:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

.field public S:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

.field public T:Z

.field public U:I

.field public final V:Ljava/lang/Runnable;

.field public W:Z

.field public X:Landroid/graphics/Rect;

.field public Y:Landroid/graphics/Rect;

.field public Z:Lb/b/k/r;

.field public final d:Ljava/lang/Object;

.field public final e:Landroid/content/Context;

.field public f:Landroid/view/Window;

.field public g:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

.field public final h:Lb/b/k/j;

.field public i:Lb/b/k/a;

.field public j:Landroid/view/MenuInflater;

.field public k:Ljava/lang/CharSequence;

.field public l:Lb/b/q/a0;

.field public m:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

.field public n:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

.field public o:Lb/b/p/a;

.field public p:Landroidx/appcompat/widget/ActionBarContextView;

.field public q:Landroid/widget/PopupWindow;

.field public r:Ljava/lang/Runnable;

.field public s:Lb/h/k/v;

.field public t:Z

.field public u:Z

.field public v:Landroid/view/ViewGroup;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/view/View;

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb/e/h;

    invoke-direct {v0}, Lb/e/h;-><init>()V

    sput-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0:Lb/e/h;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Z

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x1010054

    aput v3, v2, v0

    sput-object v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:[I

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "robolectric"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput-boolean v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0:Z

    sget-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f0:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$a;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->f0:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lb/b/k/j;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lb/b/k/k;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Lb/h/k/v;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Z

    const/16 v1, -0x64

    iput v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    new-instance v2, Landroidx/appcompat/app/AppCompatDelegateImpl$b;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$b;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Lb/b/k/j;

    iput-object p4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of p1, p1, Landroid/app/Dialog;

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    :goto_0
    if-eqz p1, :cond_1

    instance-of p3, p1, Lb/b/k/i;

    if-eqz p3, :cond_0

    check-cast p1, Lb/b/k/i;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lb/b/k/i;->k()Lb/b/k/k;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    iget p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    .line 4
    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    :cond_2
    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    if-ne p1, v1, :cond_3

    sget-object p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0:Lb/e/h;

    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-virtual {p1, p3, v0}, Lb/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    sget-object p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0:Lb/e/h;

    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lb/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Lb/b/q/i;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 34
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$f;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->c()I

    move-result p1

    return p1

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final a(Lb/h/k/z;Landroid/graphics/Rect;)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/h/k/z;->d()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_f

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:Landroid/graphics/Rect;

    :cond_2
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->X:Landroid/graphics/Rect;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Y:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lb/h/k/z;->b()I

    move-result p2

    invoke-virtual {p1}, Lb/h/k/z;->d()I

    move-result v7

    invoke-virtual {p1}, Lb/h/k/z;->c()I

    move-result v8

    invoke-virtual {p1}, Lb/h/k/z;->a()I

    move-result p1

    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    invoke-static {p1, v4, v6}, Lb/b/q/a1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget p2, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    invoke-static {v6}, Lb/h/k/q;->s(Landroid/view/View;)Lb/h/k/z;

    move-result-object v6

    if-nez v6, :cond_4

    move v7, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lb/h/k/z;->b()I

    move-result v7

    :goto_2
    if-nez v6, :cond_5

    move v6, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lb/h/k/z;->c()I

    move-result v6

    :goto_3
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_6

    goto :goto_4

    :cond_6
    move p2, v0

    goto :goto_5

    :cond_7
    :goto_4
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move p2, v5

    :goto_5
    if-lez p1, :cond_8

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    if-nez p1, :cond_8

    new-instance p1, Landroid/view/View;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    invoke-virtual {v4, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_8
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v8, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v4, v7, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v4, v6, :cond_a

    :cond_9
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_6
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    if-eqz p1, :cond_b

    move p1, v5

    goto :goto_7

    :cond_b
    move p1, v0

    :goto_7
    if-eqz p1, :cond_e

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    .line 70
    invoke-static {v4}, Lb/h/k/q;->u(Landroid/view/View;)I

    move-result v6

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_c

    goto :goto_8

    :cond_c
    move v5, v0

    :goto_8
    if-eqz v5, :cond_d

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    sget v6, Lb/b/c;->abc_decor_view_status_guard_light:I

    goto :goto_9

    :cond_d
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    sget v6, Lb/b/c;->abc_decor_view_status_guard:I

    :goto_9
    invoke-static {v5, v6}, Lb/h/d/a;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    :cond_e
    iget-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Z

    if-nez v4, :cond_11

    if-eqz p1, :cond_11

    move v1, v0

    goto :goto_a

    :cond_f
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_10

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move p1, v0

    move p2, v5

    goto :goto_a

    :cond_10
    move p1, v0

    move p2, p1

    :cond_11
    :goto_a
    if-eqz p2, :cond_13

    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_12
    move p1, v0

    :cond_13
    :goto_b
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroid/view/View;

    if-eqz p2, :cond_15

    if-eqz p1, :cond_14

    goto :goto_c

    :cond_14
    move v0, v3

    :goto_c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return v1
.end method

.method public final a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_2
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2
.end method

.method public a(Landroid/view/Menu;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$g;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$h;

    .line 30
    sget-object v1, Lb/b/k/u;->d:Lb/b/k/u;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lb/b/k/u;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Lb/b/k/u;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Lb/b/k/u;->d:Lb/b/k/u;

    :cond_0
    sget-object p1, Lb/b/k/u;->d:Lb/b/k/u;

    .line 31
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$h;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lb/b/k/u;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    return-object p1
.end method

.method public a(Lb/b/p/a$a;)Lb/b/p/a;
    .locals 8

    if-eqz p1, :cond_11

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/p/a;->a()V

    :cond_0
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$d;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lb/b/p/a$a;)V

    .line 58
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1, v0}, Lb/b/k/a;->a(Lb/b/p/a$a;)Lb/b/p/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Lb/b/k/j;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lb/b/k/j;->a(Lb/b/p/a;)V

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    if-nez p1, :cond_10

    .line 60
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f()V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lb/b/p/a;->a()V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Lb/b/k/j;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v2, :cond_3

    :try_start_0
    invoke-interface {p1, v0}, Lb/b/k/j;->a(Lb/b/p/a$a;)Lb/b/p/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    goto/16 :goto_6

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_9

    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Z

    if-eqz p1, :cond_6

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lb/b/a;->actionBarTheme:I

    invoke-virtual {v4, v5, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, Lb/b/p/c;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Lb/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lb/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    :goto_1
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Lb/b/a;->actionModePopupWindowStyle:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    .line 61
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 62
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lb/b/a;->actionBarSize:I

    invoke-virtual {v5, v6, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance p1, Lb/b/k/o;

    invoke-direct {p1, p0}, Lb/b/k/o;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Ljava/lang/Runnable;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    sget v4, Lb/b/f;->action_mode_bar_stub:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz p1, :cond_9

    .line 63
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v4, :cond_7

    .line 64
    invoke-virtual {v4}, Lb/b/k/a;->d()Landroid/content/Context;

    move-result-object v4

    goto :goto_2

    :cond_7
    move-object v4, v1

    :goto_2
    if-nez v4, :cond_8

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    .line 65
    :cond_8
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_9
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->f()V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    new-instance p1, Lb/b/p/d;

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroid/widget/PopupWindow;

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    move v3, v2

    :goto_4
    invoke-direct {p1, v4, v5, v0, v3}, Lb/b/p/d;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lb/b/p/a$a;Z)V

    .line 66
    iget-object v3, p1, Lb/b/p/d;->i:Lb/b/p/i/g;

    .line 67
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$d;->a:Lb/b/p/a$a;

    invoke-interface {v0, p1, v3}, Lb/b/p/a$a;->b(Lb/b/p/a;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 68
    invoke-virtual {p1}, Lb/b/p/d;->g()V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->a(Lb/b/p/a;)V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->m()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Lb/h/k/q;->a(Landroid/view/View;)Lb/h/k/v;

    move-result-object p1

    invoke-virtual {p1, v0}, Lb/h/k/v;->a(F)Lb/h/k/v;

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Lb/h/k/v;

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Lb/h/k/v;

    new-instance v0, Lb/b/k/p;

    invoke-direct {v0, p0}, Lb/b/k/p;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-virtual {p1, v0}, Lb/h/k/v;->a(Lb/h/k/w;)Lb/h/k/v;

    goto :goto_5

    :cond_b
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lb/h/k/q;->F(Landroid/view/View;)V

    :cond_c
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_d
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    :cond_e
    :goto_6
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    if-eqz p1, :cond_f

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Lb/b/k/j;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lb/b/k/j;->a(Lb/b/p/a;)V

    :cond_f
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    .line 69
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    :cond_10
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    return-object p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 32
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    .line 17
    iget-object p2, p2, Lb/b/p/h;->b:Landroid/view/Window$Callback;

    .line 18
    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Z)Z

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->h()V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-nez v0, :cond_0

    .line 38
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->W:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lb/b/k/a;->b(Z)V

    :cond_1
    :goto_1
    invoke-static {p0}, Lb/b/k/k;->a(Lb/b/k/k;)V

    :cond_2
    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->g()V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    .line 54
    iget-object p1, p1, Lb/b/p/h;->b:Landroid/view/Window$Callback;

    .line 55
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->g()V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    .line 1
    iget-object p1, p1, Lb/b/p/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final a(Landroid/view/Window;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    if-nez v2, :cond_1

    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->c0:[I

    invoke-static {v0, v1, v2}, Lb/b/q/w0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lb/b/q/w0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/q/w0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_0
    iget-object v0, v0, Lb/b/q/w0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 13

    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-eqz v0, :cond_0

    goto/16 :goto_b

    :cond_0
    iget v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->k()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_18

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v3, :cond_18

    move v6, v3

    goto/16 :goto_9

    :cond_7
    :goto_1
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_8

    .line 40
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->i()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a(Landroid/content/Context;)V

    new-instance p2, Landroidx/appcompat/app/AppCompatDelegateImpl$j;

    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Landroid/content/Context;

    invoke-direct {p2, p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$j;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    iput p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->c:I

    .line 41
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_9

    return-void

    :cond_8
    iget-boolean v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    if-eqz v3, :cond_9

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_9

    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 42
    :cond_9
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    if-eqz p2, :cond_a

    iput-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    goto :goto_3

    :cond_a
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    if-nez p2, :cond_b

    goto :goto_4

    :cond_b
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    if-nez p2, :cond_c

    new-instance p2, Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$k;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    :cond_c
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    .line 43
    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    if-nez v3, :cond_d

    const/4 p2, 0x0

    goto :goto_2

    :cond_d
    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Lb/b/p/i/e;

    if-nez v3, :cond_e

    new-instance v3, Lb/b/p/i/e;

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Landroid/content/Context;

    sget v6, Lb/b/g;->abc_list_menu_item_layout:I

    invoke-direct {v3, v5, v6}, Lb/b/p/i/e;-><init>(Landroid/content/Context;I)V

    iput-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Lb/b/p/i/e;

    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Lb/b/p/i/e;

    .line 44
    iput-object p2, v3, Lb/b/p/i/e;->i:Lb/b/p/i/n$a;

    .line 45
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    .line 46
    iget-object v5, p2, Lb/b/p/i/g;->a:Landroid/content/Context;

    invoke-virtual {p2, v3, v5}, Lb/b/p/i/g;->a(Lb/b/p/i/n;Landroid/content/Context;)V

    .line 47
    :cond_e
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Lb/b/p/i/e;

    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    .line 48
    iget-object v5, p2, Lb/b/p/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v5, :cond_10

    iget-object v5, p2, Lb/b/p/i/e;->c:Landroid/view/LayoutInflater;

    sget v6, Lb/b/g;->abc_expanded_menu_layout:I

    invoke-virtual {v5, v6, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v3, p2, Lb/b/p/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v3, p2, Lb/b/p/i/e;->j:Lb/b/p/i/e$a;

    if-nez v3, :cond_f

    new-instance v3, Lb/b/p/i/e$a;

    invoke-direct {v3, p2}, Lb/b/p/i/e$a;-><init>(Lb/b/p/i/e;)V

    iput-object v3, p2, Lb/b/p/i/e;->j:Lb/b/p/i/e$a;

    :cond_f
    iget-object v3, p2, Lb/b/p/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v5, p2, Lb/b/p/i/e;->j:Lb/b/p/i/e$a;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p2, Lb/b/p/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v3, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_10
    iget-object p2, p2, Lb/b/p/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 49
    :goto_2
    iput-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    if-eqz p2, :cond_11

    :goto_3
    move p2, v2

    goto :goto_5

    :cond_11
    :goto_4
    move p2, v1

    :goto_5
    if-eqz p2, :cond_19

    .line 50
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    if-nez p2, :cond_12

    goto :goto_7

    :cond_12
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    if-eqz p2, :cond_13

    goto :goto_6

    :cond_13
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Lb/b/p/i/e;

    invoke-virtual {p2}, Lb/b/p/i/e;->a()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_14

    :goto_6
    move p2, v2

    goto :goto_8

    :cond_14
    :goto_7
    move p2, v1

    :goto_8
    if-nez p2, :cond_15

    goto :goto_a

    .line 51
    :cond_15
    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_16

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_16
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->b:I

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_17

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_18

    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_18
    move v6, v4

    :goto_9
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->d:I

    iget v9, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->e:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->c:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->f:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    return-void

    :cond_19
    :goto_a
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    :cond_1a
    :goto_b
    return-void
.end method

.method public a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/b/q/a0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Lb/b/p/i/g;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    :cond_2
    return-void
.end method

.method public a(Lb/b/p/i/g;)V
    .locals 5

    .line 39
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lb/b/q/a0;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    invoke-interface {p1}, Lb/b/q/a0;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->k()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    invoke-interface {v2}, Lb/b/q/a0;->e()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    invoke-interface {v0}, Lb/b/q/a0;->g()Z

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    invoke-interface {p1}, Lb/b/q/a0;->a()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    iput-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lb/b/q/a0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0, p1}, Lb/b/k/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 5

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 53
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->n()V

    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->n()V

    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->n()V

    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->n()V

    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->n()V

    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->n()V

    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    return v4
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v1, v0, Lb/h/k/d$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Lb/b/k/q;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {v0, p1}, Lb/h/k/q;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    .line 21
    iget-object v0, v0, Lb/b/p/h;->b:Landroid/view/Window$Callback;

    .line 22
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez v1, :cond_16

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    goto/16 :goto_8

    .line 24
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Z

    :cond_7
    :goto_2
    move v2, v4

    goto/16 :goto_8

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 25
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    if-eqz v0, :cond_a

    goto/16 :goto_8

    :cond_a
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lb/b/q/a0;->f()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    invoke-interface {v1}, Lb/b/q/a0;->e()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    invoke-interface {p1}, Lb/b/q/a0;->a()Z

    move-result p1

    goto :goto_5

    :cond_b
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    invoke-interface {p1}, Lb/b/q/a0;->g()Z

    move-result p1

    goto :goto_5

    :cond_c
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    if-eqz v1, :cond_e

    iput-boolean v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    move v1, v2

    :goto_3
    if-eqz v1, :cond_f

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    move p1, v2

    goto :goto_5

    :cond_f
    move p1, v4

    goto :goto_5

    :cond_10
    :goto_4
    iget-boolean p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :goto_5
    if-eqz p1, :cond_16

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_8

    :cond_11
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 26
    :cond_12
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Z

    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Z

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_16

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_8

    .line 27
    :cond_13
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Lb/b/p/a;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lb/b/p/a;->a()V

    goto :goto_6

    .line 28
    :cond_14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz p1, :cond_15

    .line 29
    invoke-virtual {p1}, Lb/b/k/a;->b()Z

    move-result p1

    if-eqz p1, :cond_15

    :goto_6
    move p1, v2

    goto :goto_7

    :cond_15
    move p1, v4

    :goto_7
    if-eqz p1, :cond_7

    :cond_16
    :goto_8
    return v2
.end method

.method public final a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4}, Lb/b/p/i/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-nez p3, :cond_3

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_3
    return v1
.end method

.method public a(Lb/b/p/i/g;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->k()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/b/p/i/g;->c()Lb/b/p/i/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/view/Menu;)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Z)Z
    .locals 10

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/content/Context;I)I

    move-result v2

    .line 5
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 6
    iget-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:Z

    const/4 v5, 0x1

    if-nez v3, :cond_5

    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_4

    :cond_2
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_3

    const/high16 v6, 0x100c0000

    goto :goto_1

    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v6, 0xc0000

    :goto_1
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    iget-object v9, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v7, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    iput-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v6, "AppCompatDelegate"

    const-string v7, "Exception while getting ActivityInfo"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Z

    :cond_5
    :goto_3
    iput-boolean v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Q:Z

    iget-boolean v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->P:Z

    .line 7
    :goto_4
    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v6, v2, :cond_7

    if-eqz p1, :cond_7

    if-nez v3, :cond_7

    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->J:Z

    if-eqz p1, :cond_7

    sget-boolean p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->K:Z

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v7, p1, Landroid/app/Activity;

    if-eqz v7, :cond_7

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lb/h/c/a;->b(Landroid/app/Activity;)V

    move v1, v5

    :cond_7
    if-nez v1, :cond_b

    if-eq v6, v2, :cond_b

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, -0x31

    or-int/2addr v2, v6

    iput v2, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:I

    if-eqz p1, :cond_8

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->setTheme(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->O:I

    invoke-virtual {p1, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_8
    if-eqz v3, :cond_a

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_a

    check-cast p1, Landroid/app/Activity;

    instance-of v2, p1, Lb/m/h;

    if-eqz v2, :cond_9

    move-object v2, p1

    check-cast v2, Lb/m/h;

    invoke-interface {v2}, Lb/m/h;->a()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    check-cast v2, Lb/m/i;

    .line 9
    iget-object v2, v2, Lb/m/i;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 10
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_9
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    if-eqz v2, :cond_a

    :goto_5
    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_a
    move v1, v5

    :cond_b
    if-eqz v1, :cond_c

    .line 11
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v2, p1, Lb/b/k/i;

    if-eqz v2, :cond_c

    check-cast p1, Lb/b/k/i;

    invoke-virtual {p1}, Lb/b/k/i;->m()V

    :cond_c
    if-nez v0, :cond_d

    .line 12
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->e()V

    goto :goto_6

    :cond_d
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a()V

    :cond_e
    :goto_6
    const/4 p1, 0x3

    if-ne v0, p1, :cond_10

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    .line 13
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    if-nez v0, :cond_f

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$f;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    :cond_f
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->e()V

    goto :goto_7

    :cond_10
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a()V

    :cond_11
    :goto_7
    return v1
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/k/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->e(I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->g()V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    .line 7
    iget-object p1, p1, Lb/b/p/h;->b:Landroid/view/Window$Callback;

    .line 8
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->g()V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    .line 9
    iget-object p1, p1, Lb/b/p/h;->b:Landroid/view/Window$Callback;

    .line 10
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public b(Lb/b/p/i/g;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Z

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    invoke-interface {v0}, Lb/b/q/a0;->b()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->k()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Z

    return-void
.end method

.method public final b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 10

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->k()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    :cond_3
    iget v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lb/b/q/a0;->d()V

    :cond_6
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    if-nez v5, :cond_19

    if-eqz v3, :cond_7

    .line 3
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    .line 4
    instance-of v5, v5, Lb/b/k/s;

    if-nez v5, :cond_19

    :cond_7
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    iget-boolean v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    if-eqz v5, :cond_13

    :cond_8
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    if-nez v5, :cond_e

    .line 5
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    iget v7, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    if-eqz v7, :cond_9

    if-ne v7, v4, :cond_d

    :cond_9
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-eqz v4, :cond_d

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Lb/b/a;->actionBarTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v9, Lb/b/a;->actionBarWidgetTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_a
    sget v8, Lb/b/a;->actionBarWidgetTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_c

    if-nez v8, :cond_b

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v8, :cond_d

    new-instance v4, Lb/b/p/c;

    invoke-direct {v4, v5, v1}, Lb/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lb/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_3

    :cond_d
    move-object v4, v5

    :goto_3
    new-instance v5, Lb/b/p/i/g;

    invoke-direct {v5, v4}, Lb/b/p/i/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p0}, Lb/b/p/i/g;->a(Lb/b/p/i/g$a;)V

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a(Lb/b/p/i/g;)V

    .line 6
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    if-nez v4, :cond_e

    return v1

    :cond_e
    if-eqz v3, :cond_10

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-eqz v4, :cond_10

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    if-nez v4, :cond_f

    new-instance v4, Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$c;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    :cond_f
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    iget-object v7, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    invoke-interface {v4, v5, v7}, Lb/b/q/a0;->a(Landroid/view/Menu;Lb/b/p/i/n$a;)V

    :cond_10
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-virtual {v4}, Lb/b/p/i/g;->k()V

    iget v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p1, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->a(Lb/b/p/i/g;)V

    if-eqz v3, :cond_11

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-eqz p1, :cond_11

    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    invoke-interface {p1, v6, p2}, Lb/b/q/a0;->a(Landroid/view/Menu;Lb/b/p/i/n$a;)V

    :cond_11
    return v1

    :cond_12
    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    :cond_13
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-virtual {v4}, Lb/b/p/i/g;->k()V

    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_14

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-virtual {v5, v4}, Lb/b/p/i/g;->a(Landroid/os/Bundle;)V

    iput-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->s:Landroid/os/Bundle;

    :cond_14
    iget-object v4, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v3, :cond_15

    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-eqz p2, :cond_15

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    invoke-interface {p2, v6, v0}, Lb/b/q/a0;->a(Landroid/view/Menu;Lb/b/p/i/n$a;)V

    :cond_15
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-virtual {p1}, Lb/b/p/i/g;->j()V

    return v1

    :cond_16
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_4

    :cond_17
    const/4 p2, -0x1

    :goto_4
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_18

    move p2, v2

    goto :goto_5

    :cond_18
    move p2, v1

    :goto_5
    iput-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Z

    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->p:Z

    invoke-virtual {p2, v0}, Lb/b/p/i/g;->setQwertyMode(Z)V

    iget-object p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-virtual {p2}, Lb/b/p/i/g;->j()V

    :cond_19
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    iput-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    return v2
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lb/b/k/k;->b(Lb/b/k/k;)V

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->L:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0:Lb/e/h;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->a0:Lb/e/h;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lb/b/k/a;->f()V

    .line 1
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a()V

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->S:Landroidx/appcompat/app/AppCompatDelegateImpl$g;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a()V

    :cond_5
    return-void
.end method

.method public c(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-virtual {v2, v1}, Lb/b/p/i/g;->b(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->s:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-virtual {v1}, Lb/b/p/i/g;->k()V

    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    invoke-virtual {v1}, Lb/b/p/i/g;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-boolean p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->b(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public d(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->G:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object v0, v1

    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Z)Z

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final e(I)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->U:I

    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lb/h/k/q;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->T:Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->s:Lb/h/k/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/h/k/v;->a()V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lb/b/k/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 9

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-nez v0, :cond_1a

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    sget-object v1, Lb/b/j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lb/b/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_19

    sget v1, Lb/b/j;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v3, 0x6c

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(I)Z

    goto :goto_0

    :cond_0
    sget v1, Lb/b/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(I)Z

    :cond_1
    :goto_0
    sget v1, Lb/b/j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v5, 0x6d

    if-eqz v1, :cond_2

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(I)Z

    :cond_2
    sget v1, Lb/b/j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(I)Z

    :cond_3
    sget v1, Lb/b/j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->h()V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Z

    if-eqz v1, :cond_4

    sget v1, Lb/b/g;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    iput-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    goto/16 :goto_3

    :cond_4
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v7, Lb/b/a;->actionBarTheme:I

    invoke-virtual {v1, v7, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_5

    new-instance v1, Lb/b/p/c;

    iget-object v7, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    invoke-direct {v1, v7, v0}, Lb/b/p/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lb/b/g;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lb/b/f;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lb/b/q/a0;

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->k()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Lb/b/q/a0;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    invoke-interface {v1, v5}, Lb/b/q/a0;->a(I)V

    :cond_6
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Lb/b/q/a0;->a(I)V

    :cond_7
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    const/4 v5, 0x5

    invoke-interface {v1, v5}, Lb/b/q/a0;->a(I)V

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Z

    if-eqz v1, :cond_a

    sget v1, Lb/b/g;->abc_screen_simple_overlay_action_mode:I

    goto :goto_2

    :cond_a
    sget v1, Lb/b/g;->abc_screen_simple:I

    :goto_2
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_3
    if-eqz v0, :cond_18

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Lb/b/k/l;

    invoke-direct {v1, p0}, Lb/b/k/l;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-static {v0, v1}, Lb/h/k/q;->a(Landroid/view/View;Lb/h/k/m;)V

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-nez v1, :cond_c

    sget v1, Lb/b/f;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroid/widget/TextView;

    :cond_c
    invoke-static {v0}, Lb/b/q/a1;->b(Landroid/view/View;)V

    sget v1, Lb/b/f;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_e

    :goto_4
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_d

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_d
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    instance-of v8, v5, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_e

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v5, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v5, Lb/b/k/n;

    invoke-direct {v5, p0}, Lb/b/k/n;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 2
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    :cond_f
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Ljava/lang/CharSequence;

    .line 4
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->l:Lb/b/q/a0;

    if-eqz v1, :cond_10

    invoke-interface {v1, v0}, Lb/b/q/a0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 5
    :cond_10
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v1, :cond_11

    .line 6
    invoke-virtual {v1, v0}, Lb/b/k/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_11
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->w:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_12
    :goto_6
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v5, v6, v7, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->a(IIII)V

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    sget-object v5, Lb/b/j;->AppCompatTheme:[I

    invoke-virtual {v1, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v5, Lb/b/j;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v5, Lb/b/j;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v5, Lb/b/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_13

    sget v5, Lb/b/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_13
    sget v5, Lb/b/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_14

    sget v5, Lb/b/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_14
    sget v5, Lb/b/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_15

    sget v5, Lb/b/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    sget v5, Lb/b/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_16

    sget v5, Lb/b/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 8
    iput-boolean v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    if-nez v1, :cond_1a

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->j:Lb/b/p/i/g;

    if-nez v0, :cond_1a

    :cond_17
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->e(I)V

    goto :goto_7

    .line 9
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_7
    return-void
.end method

.method public g(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1, v0}, Lb/b/k/a;->a(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->d(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    iget-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->l()V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/k/a;->d()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public final j()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final k()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->g()V

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Lb/b/k/v;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Z

    invoke-direct {v1, v0, v2}, Lb/b/k/v;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Lb/b/k/v;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lb/b/k/v;-><init>(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->i:Lb/b/k/a;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->W:Z

    invoke-virtual {v0, v1}, Lb/b/k/a;->b(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lb/h/k/q;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Lb/b/k/r;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->e:Landroid/content/Context;

    sget-object v2, Lb/b/j;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lb/b/j;->AppCompatTheme_viewInflaterClass:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lb/b/k/r;

    invoke-direct {v0}, Lb/b/k/r;-><init>()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/k/r;

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Lb/b/k/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Falling back to default."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lb/b/k/r;

    invoke-direct {v0}, Lb/b/k/r;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Lb/b/k/r;

    :cond_1
    :goto_1
    sget-boolean v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Z

    if-eqz v0, :cond_6

    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_6

    goto :goto_3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    if-nez v0, :cond_3

    goto :goto_4

    .line 2
    :cond_3
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->f:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :goto_2
    if-nez v0, :cond_4

    :goto_3
    move v6, v2

    goto :goto_5

    :cond_4
    if-eq v0, v3, :cond_6

    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_6

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lb/h/k/q;->z(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_6
    :goto_4
    move v6, v1

    .line 3
    :goto_5
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->Z:Lb/b/k/r;

    sget-boolean v7, Landroidx/appcompat/app/AppCompatDelegateImpl;->b0:Z

    const/4 v8, 0x1

    invoke-static {}, Lb/b/q/z0;->a()Z

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v9}, Lb/b/k/r;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
