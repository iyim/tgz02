.class final Lunet/org/chromium/base/library_loader/HomoDisablerLoader$1;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Ljava/lang/String;


# virtual methods
.method public final run()V
    .locals 1

    .line 41
    :try_start_0
    iget-object v0, p0, Lunet/org/chromium/base/library_loader/HomoDisablerLoader$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lunet/org/chromium/base/library_loader/HomoDisablerLoader;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
