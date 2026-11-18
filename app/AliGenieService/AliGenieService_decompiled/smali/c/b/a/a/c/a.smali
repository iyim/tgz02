.class public Lc/b/a/a/c/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static d:Landroid/view/WindowManager;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/aligenie/ags/access/AccessService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/b/a/a/c/a;->a:Landroid/view/View;

    iput-object v0, p0, Lc/b/a/a/c/a;->b:Landroid/view/View;

    iput-object v0, p0, Lc/b/a/a/c/a;->c:Landroid/view/View;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lc/b/a/a/c/a;->d:Landroid/view/WindowManager;

    :try_start_0
    invoke-virtual {p0, p1}, Lc/b/a/a/c/a;->a(Lcom/aligenie/ags/access/AccessService;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/a/c/a;->a:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start genieaccess floatwindow failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Access"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, "\u542f\u52a8\u6240\u89c1\u5373\u53ef\u8bf4\u4ea4\u4e92\u793a\u610f\u89c6\u56fe\u5931\u8d25\uff01"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/aligenie/ags/access/AccessService;)Landroid/view/View;
    .locals 2

    new-instance v0, Lc/b/a/a/c/b;

    invoke-direct {v0, p1}, Lc/b/a/a/c/b;-><init>(Landroid/content/Context;)V

    const-string p1, "Access"

    const-string v1, "setVisualFeedbackView"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x7f0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800033

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x738

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lc/b/a/a/c/a;->d:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lc/b/a/a/c/a;->b:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lc/b/a/a/c/a;->d:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lc/b/a/a/c/a;->b:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lc/b/a/a/c/a;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-object v2, Lc/b/a/a/c/a;->d:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lc/b/a/a/c/a;->c:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lc/b/a/a/c/a;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    sget-object v2, Lc/b/a/a/c/a;->d:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lc/b/a/a/c/a;->a:Landroid/view/View;

    :cond_2
    return-void
.end method
