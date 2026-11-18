.class public Lc/b/a/a/c/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/c/c;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/b/a/a/c/c;


# direct methods
.method public constructor <init>(Lc/b/a/a/c/c;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/a/c/c$a;->b:Lc/b/a/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "Access"

    const-string v1, "action click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc/b/a/a/c/c$a;->b:Lc/b/a/a/c/c;

    iget-object v1, v0, Lc/b/a/a/c/c;->b:Lcom/aligenie/ags/access/AccessService;

    iget v2, v0, Lc/b/a/a/c/c;->c:I

    iget v0, v0, Lc/b/a/a/c/c;->d:I

    sget-object v3, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_CLICK:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    invoke-static {v1, v2, v0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Lcom/aligenie/ags/access/AccessService;IILcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;)V

    return-void
.end method
