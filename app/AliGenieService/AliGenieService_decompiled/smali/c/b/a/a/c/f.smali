.class public Lc/b/a/a/c/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a/c/f$a;
    }
.end annotation


# static fields
.field public static c:Landroid/view/WindowManager;


# instance fields
.field public a:Lcom/aligenie/ags/access/AccessService;

.field public b:Lc/b/a/a/c/d;


# direct methods
.method public constructor <init>(Lcom/aligenie/ags/access/AccessService;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/b/a/a/c/f;->a:Lcom/aligenie/ags/access/AccessService;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lc/b/a/a/c/f;->c:Landroid/view/WindowManager;

    iput-object p1, p0, Lc/b/a/a/c/f;->a:Lcom/aligenie/ags/access/AccessService;

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/a/c/f;->a(Lcom/aligenie/ags/access/AccessService;II)Landroid/view/View;

    .line 1
    iget-object p1, p0, Lc/b/a/a/c/f;->b:Lc/b/a/a/c/d;

    new-instance p2, Lc/b/a/a/c/e;

    invoke-direct {p2, p0}, Lc/b/a/a/c/e;-><init>(Lc/b/a/a/c/f;)V

    invoke-virtual {p1, p2}, Lc/b/a/a/c/d;->setAnimationIsCompletionListener(Lc/b/a/a/c/f$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start genieaccess floatwindow failed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Access"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/aligenie/ags/access/AccessService;II)Landroid/view/View;
    .locals 1

    new-instance v0, Lc/b/a/a/c/d;

    invoke-direct {v0, p1}, Lc/b/a/a/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/b/a/a/c/f;->b:Lc/b/a/a/c/d;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x7f0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    add-int/lit8 p2, p2, -0x26

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/lit8 p3, p3, -0x26

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object p2, Lc/b/a/a/c/f;->c:Landroid/view/WindowManager;

    iget-object p3, p0, Lc/b/a/a/c/f;->b:Lc/b/a/a/c/d;

    invoke-interface {p2, p3, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lc/b/a/a/c/f;->b:Lc/b/a/a/c/d;

    return-object p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lc/b/a/a/c/f;->b:Lc/b/a/a/c/d;

    if-eqz v0, :cond_0

    sget-object v1, Lc/b/a/a/c/f;->c:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/b/a/a/c/f;->b:Lc/b/a/a/c/d;

    :cond_0
    return-void
.end method
