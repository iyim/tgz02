.class public Lcom/taobao/android/dinamicx/asyncrender/ViewContext;
.super Landroid/content/ContextWrapper;
.source "ViewContext.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ViewContext"


# instance fields
.field private currContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->currContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 126
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 127
    nop

    nop

    return-object p0

    .line 130
    :cond_0
    instance-of v0, p0, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;

    if-eqz v0, :cond_1

    .line 131
    nop

    nop

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->getCurrentContext()Landroid/content/Context;

    move-result-object p0

    .line 132
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 133
    nop

    nop

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRealContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 111
    instance-of v0, p0, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;

    if-eqz v0, :cond_1

    .line 112
    move-object v0, p0

    nop

    nop

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "getRealContext but currContext is null"

    .line 116
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewContext"

    invoke-static {v1, v0}, Lcom/taobao/android/dinamicx/log/DXLog;->d(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getCurrentContext()Landroid/content/Context;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->currContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->currContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->currContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0

    .line 106
    :cond_1
    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 1

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 161
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setCurrentContext(Landroid/content/Context;)V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->currContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->currContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    goto :goto_1

    .line 75
    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->startActivities([Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->currContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 86
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->currContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 54
    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->currContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 65
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 182
    :catch_0
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
