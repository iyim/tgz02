.class Lunet/org/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lunet/org/chromium/base/ApiCompatibilityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishAndRemoveTaskWithRetry"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:I


# virtual methods
.method public run()V
    .locals 5

    .line 350
    iget-object v0, p0, Lunet/org/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 351
    iget v0, p0, Lunet/org/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lunet/org/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->b:I

    .line 352
    iget-object v0, p0, Lunet/org/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget v0, p0, Lunet/org/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 354
    invoke-static {p0}, Lunet/org/chromium/base/ThreadUtils;->c(Ljava/lang/Runnable;)V

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lunet/org/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
