.class Lunet/org/chromium/base/library_loader/LibraryLoader$1;
.super Landroid/os/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string p1, "LibraryLoader.asyncPrefetchLibrariesToMemory"

    .line 1210
    invoke-static {p1}, Lunet/org/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 1211
    invoke-static {}, Lunet/org/chromium/base/library_loader/LibraryLoader;->a()I

    move-result v0

    .line 1215
    iget-boolean v1, p0, Lunet/org/chromium/base/library_loader/LibraryLoader$1;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1217
    invoke-static {}, Lunet/org/chromium/base/library_loader/LibraryLoader;->b()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1219
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "LibraryLoader"

    const-string v5, "Forking a process to prefetch the native library failed."

    invoke-static {v4, v5, v2}, Lunet/org/chromium/base/Log;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v2, v3

    .line 1224
    :cond_2
    invoke-static {}, Lunet/org/chromium/base/metrics/RecordHistogram;->a()V

    if-eqz v1, :cond_3

    const-string v1, "LibraryLoader.PrefetchStatus"

    .line 1226
    invoke-static {v1, v2}, Lunet/org/chromium/base/metrics/RecordHistogram;->a(Ljava/lang/String;Z)V

    :cond_3
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 1229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LibraryLoader.PercentageOfResidentCodeBeforePrefetch"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lunet/org/chromium/base/library_loader/LibraryLoader$1;->a:Z

    if-eqz v2, :cond_4

    const-string v2, ".ColdStartup"

    goto :goto_1

    :cond_4
    const-string v2, ".WarmStartup"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1231
    invoke-static {v1, v0}, Lunet/org/chromium/base/metrics/RecordHistogram;->b(Ljava/lang/String;I)V

    .line 1233
    :cond_5
    invoke-static {p1}, Lunet/org/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
