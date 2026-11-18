.class public final Lc/e/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/e/a/d;->b:Z

    iput-boolean v0, p0, Lc/e/a/d;->c:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    invoke-static {}, Lc/e/a/f;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "[LifeCycle] ignore state change while crashing"

    const-string v0, "crashsdk"

    invoke-static {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 1
    sget-object v1, Lc/e/a/c;->a0:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_2

    move p1, v0

    :cond_3
    iget-boolean v1, p0, Lc/e/a/d;->b:Z

    if-eq v1, p1, :cond_4

    invoke-static {p1}, Lc/e/a/c;->a(Z)V

    iput-boolean p1, p0, Lc/e/a/d;->b:Z

    .line 3
    :cond_4
    sget-object p1, Lc/e/a/c;->a0:Ljava/util/WeakHashMap;

    .line 4
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    iget-boolean v1, p0, Lc/e/a/d;->c:Z

    if-eq v1, p1, :cond_9

    if-eqz p1, :cond_8

    .line 5
    sget-boolean v1, Lc/e/a/c;->w:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    sput-boolean v0, Lc/e/a/c;->w:Z

    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {}, Lc/e/a/f;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/c;->e(Ljava/lang/String;)Z

    invoke-static {}, Lc/e/a/c;->l()V

    invoke-static {}, Lc/e/a/c;->m()V

    .line 6
    :cond_8
    :goto_1
    iput-boolean p1, p0, Lc/e/a/d;->c:Z

    :cond_9
    return-void
.end method

.method public final a(Landroid/app/Activity;I)V
    .locals 3

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 7
    :goto_0
    sput-object v0, Lc/e/a/c;->b0:Ljava/lang/String;

    .line 8
    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_1

    sget-object v0, Lc/e/a/c;->b0:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v1, 0x81

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 9
    :cond_1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->V:Z

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lc/e/a/c;->a0:Ljava/util/WeakHashMap;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lc/e/a/c;->a0:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lc/e/a/d;->a(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lc/e/a/d;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->V:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lc/e/a/c;->h()Z

    .line 3
    sget-object v0, Lc/e/a/c;->a0:Ljava/util/WeakHashMap;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lc/e/a/c;->a0:Ljava/util/WeakHashMap;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lc/e/a/d;->a(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lc/e/a/d;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc/e/a/d;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc/e/a/d;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lc/e/a/d;->a(Landroid/app/Activity;I)V

    return-void
.end method
