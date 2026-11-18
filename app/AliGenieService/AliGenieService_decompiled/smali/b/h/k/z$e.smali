.class public Lb/h/k/z$e;
.super Lb/h/k/z$j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/k/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static g:Z = false

.field public static h:Ljava/lang/reflect/Method;

.field public static i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static k:Ljava/lang/reflect/Field;

.field public static l:Ljava/lang/reflect/Field;


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:Lb/h/e/b;

.field public e:Lb/h/k/z;

.field public f:Lb/h/e/b;


# direct methods
.method public constructor <init>(Lb/h/k/z;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/h/k/z$j;-><init>(Lb/h/k/z;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/h/k/z$e;->d:Lb/h/e/b;

    iput-object p2, p0, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lb/h/k/z;Lb/h/k/z$e;)V
    .locals 1

    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 1
    invoke-direct {p0, p1}, Lb/h/k/z$j;-><init>(Lb/h/k/z;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/h/k/z$e;->d:Lb/h/e/b;

    iput-object v0, p0, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Failed to get visible insets. (Reflection error). "

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowInsetsCompat"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public a(IIII)Lb/h/k/z;
    .locals 3

    iget-object v0, p0, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Lb/h/k/z;->a(Landroid/view/WindowInsets;)Lb/h/k/z;

    move-result-object v0

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    new-instance v1, Lb/h/k/z$c;

    invoke-direct {v1, v0}, Lb/h/k/z$c;-><init>(Lb/h/k/z;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    new-instance v1, Lb/h/k/z$b;

    invoke-direct {v1, v0}, Lb/h/k/z$b;-><init>(Lb/h/k/z;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lb/h/k/z$a;

    invoke-direct {v1, v0}, Lb/h/k/z$a;-><init>(Lb/h/k/z;)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lb/h/k/z$e;->g()Lb/h/e/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lb/h/k/z;->a(Lb/h/e/b;IIII)Lb/h/e/b;

    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Lb/h/k/z$d;->d(Lb/h/e/b;)V

    .line 12
    invoke-virtual {p0}, Lb/h/k/z$j;->f()Lb/h/e/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lb/h/k/z;->a(Lb/h/e/b;IIII)Lb/h/e/b;

    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Lb/h/k/z$d;->b(Lb/h/e/b;)V

    .line 14
    invoke-virtual {v1}, Lb/h/k/z$d;->b()Lb/h/k/z;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_5

    sget-boolean v0, Lb/h/k/z$e;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-class v2, Landroid/view/View;

    new-array v3, v1, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "getViewRootImpl"

    :try_start_1
    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lb/h/k/z$e;->h:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "android.view.ViewRootImpl"

    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lb/h/k/z$e;->i:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "android.view.View$AttachInfo"

    :try_start_3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lb/h/k/z$e;->j:Ljava/lang/Class;

    sget-object v2, Lb/h/k/z$e;->j:Ljava/lang/Class;

    const-string v3, "mVisibleInsets"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lb/h/k/z$e;->k:Ljava/lang/reflect/Field;

    sget-object v2, Lb/h/k/z$e;->i:Ljava/lang/Class;

    const-string v3, "mAttachInfo"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lb/h/k/z$e;->l:Ljava/lang/reflect/Field;

    sget-object v2, Lb/h/k/z$e;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Lb/h/k/z$e;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    :goto_0
    invoke-static {v2}, Lb/h/k/z$e;->a(Ljava/lang/Exception;)V

    :goto_1
    sput-boolean v0, Lb/h/k/z$e;->g:Z

    .line 3
    :cond_0
    sget-object v0, Lb/h/k/z$e;->h:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v3, Lb/h/k/z$e;->j:Ljava/lang/Class;

    if-eqz v3, :cond_3

    sget-object v3, Lb/h/k/z$e;->k:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    :try_start_4
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "WindowInsetsCompat"

    const-string v0, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_2
    sget-object v0, Lb/h/k/z$e;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lb/h/k/z$e;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lb/h/e/b;->a(Landroid/graphics/Rect;)Lb/h/e/b;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    :goto_2
    invoke-static {p1}, Lb/h/k/z$e;->a(Ljava/lang/Exception;)V

    :cond_3
    :goto_3
    if-nez v2, :cond_4

    .line 4
    sget-object v2, Lb/h/e/b;->e:Lb/h/e/b;

    :cond_4
    invoke-virtual {p0, v2}, Lb/h/k/z$e;->a(Lb/h/e/b;)V

    return-void

    .line 5
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/h/e/b;)V
    .locals 0

    iput-object p1, p0, Lb/h/k/z$e;->f:Lb/h/e/b;

    return-void
.end method

.method public a(Lb/h/k/z;)V
    .locals 2

    iget-object v0, p0, Lb/h/k/z$e;->e:Lb/h/k/z;

    .line 6
    iget-object v1, p1, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v1, v0}, Lb/h/k/z$j;->b(Lb/h/k/z;)V

    .line 7
    iget-object v0, p0, Lb/h/k/z$e;->f:Lb/h/e/b;

    .line 8
    iget-object p1, p1, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {p1, v0}, Lb/h/k/z$j;->a(Lb/h/e/b;)V

    return-void
.end method

.method public b(Lb/h/k/z;)V
    .locals 0

    iput-object p1, p0, Lb/h/k/z$e;->e:Lb/h/k/z;

    return-void
.end method

.method public final g()Lb/h/e/b;
    .locals 4

    iget-object v0, p0, Lb/h/k/z$e;->d:Lb/h/e/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lb/h/e/b;->a(IIII)Lb/h/e/b;

    move-result-object v0

    iput-object v0, p0, Lb/h/k/z$e;->d:Lb/h/e/b;

    :cond_0
    iget-object v0, p0, Lb/h/k/z$e;->d:Lb/h/e/b;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method
