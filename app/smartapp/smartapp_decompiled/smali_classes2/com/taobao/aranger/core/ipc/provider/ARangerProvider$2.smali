.class Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$2;
.super Ljava/lang/Object;
.source "ARangerProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;


# direct methods
.method constructor <init>(Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider$2;->this$0:Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 166
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.taobao.aranger.CONNECT"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "processName"

    .line 168
    invoke-static {}, Lcom/taobao/aranger/utils/IPCUtils;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-static {}, Lcom/taobao/aranger/ARanger;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    invoke-static {}, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[connect][sendBroadcast]"

    invoke-static {v1, v3, v0, v2}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
