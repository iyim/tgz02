.class public Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;
.super Ljava/lang/Object;
.source "WVPluginEntryManager.java"


# instance fields
.field private entryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mContext:Landroid/content/Context;

.field private mWebView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 31
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-void
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 36
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 38
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public getEntry(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 45
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/taobao/windvane/util/WVContextUtil;->getRealContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "null"

    return-object p1

    .line 49
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 52
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-nez v1, :cond_3

    .line 57
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 59
    :try_start_1
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 60
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-static {p1, v0, v2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->createPlugin(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p1

    .line 69
    :goto_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1

    :cond_3
    :goto_2
    return-object v1

    :catchall_1
    move-exception p1

    .line 54
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 121
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 124
    instance-of v2, v1, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    if-eqz v2, :cond_0

    .line 125
    nop

    nop

    invoke-virtual {v1, p1, p2, p3}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .line 79
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 81
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 82
    instance-of v2, v1, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    if-eqz v2, :cond_0

    .line 83
    nop

    nop

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 88
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 90
    :try_start_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    .line 86
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .line 97
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 99
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 100
    instance-of v2, v1, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    if-eqz v2, :cond_0

    .line 101
    nop

    nop

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .line 109
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 112
    instance-of v2, v1, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    if-eqz v2, :cond_0

    .line 113
    nop

    nop

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onScrollChanged(IIII)V
    .locals 3

    .line 133
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->entryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 136
    instance-of v2, v1, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    if-eqz v2, :cond_0

    .line 137
    nop

    nop

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->onScrollChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
