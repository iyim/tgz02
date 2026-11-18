.class Lcom/taobao/aranger/utils/CallbackManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/aranger/utils/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/aranger/utils/CallbackManager;


# direct methods
.method constructor <init>(Lcom/taobao/aranger/utils/CallbackManager;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/taobao/aranger/utils/CallbackManager$1;->this$0:Lcom/taobao/aranger/utils/CallbackManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "processName"

    .line 35
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.taobao.aranger.DISCONNECT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 37
    iget-object p2, p0, Lcom/taobao/aranger/utils/CallbackManager$1;->this$0:Lcom/taobao/aranger/utils/CallbackManager;

    invoke-static {p2}, Lcom/taobao/aranger/utils/CallbackManager;->access$000(Lcom/taobao/aranger/utils/CallbackManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/aranger/intf/ProcessStateListener;

    .line 39
    :try_start_0
    invoke-interface {v1, p1}, Lcom/taobao/aranger/intf/ProcessStateListener;->onProcessStop(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 41
    invoke-static {}, Lcom/taobao/aranger/utils/CallbackManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "[onReceive][onProcessStop]"

    invoke-static {v2, v4, v1, v3}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/taobao/aranger/utils/CallbackManager$1;->this$0:Lcom/taobao/aranger/utils/CallbackManager;

    invoke-static {p2}, Lcom/taobao/aranger/utils/CallbackManager;->access$000(Lcom/taobao/aranger/utils/CallbackManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/aranger/intf/ProcessStateListener;

    .line 47
    :try_start_1
    invoke-interface {v1, p1}, Lcom/taobao/aranger/intf/ProcessStateListener;->onProcessStart(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 49
    invoke-static {}, Lcom/taobao/aranger/utils/CallbackManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "[onReceive][onProcessStart]"

    invoke-static {v2, v4, v1, v3}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method
