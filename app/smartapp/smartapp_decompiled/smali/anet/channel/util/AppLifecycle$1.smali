.class final Lanet/channel/util/AppLifecycle$1;
.super Ljava/lang/Object;
.source "AppLifecycle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/util/AppLifecycle;->notifyListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$foreground:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lanet/channel/util/AppLifecycle$1;->val$foreground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    invoke-static {}, Lanet/channel/util/AppLifecycle;->access$000()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/util/AppLifecycle$AppLifecycleListener;

    .line 71
    iget-boolean v2, p0, Lanet/channel/util/AppLifecycle$1;->val$foreground:Z

    if-eqz v2, :cond_0

    .line 72
    invoke-interface {v1}, Lanet/channel/util/AppLifecycle$AppLifecycleListener;->forground()V

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v1}, Lanet/channel/util/AppLifecycle$AppLifecycleListener;->background()V

    goto :goto_0

    :cond_1
    return-void
.end method
