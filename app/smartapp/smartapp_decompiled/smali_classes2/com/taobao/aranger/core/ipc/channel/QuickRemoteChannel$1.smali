.class Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel$1;
.super Ljava/lang/Object;
.source "QuickRemoteChannel.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->getRemoteService(Landroid/net/Uri;)Lcom/taobao/aranger/intf/IRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;

.field final synthetic val$iBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;Landroid/os/IBinder;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel$1;->this$0:Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;

    iput-object p2, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel$1;->val$iBinder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel$1;->val$iBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 150
    const-class v0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel$1;->this$0:Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;

    invoke-static {v1}, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->access$000(Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->access$100()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel$1;->this$0:Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;

    invoke-static {v2}, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->access$000(Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.taobao.aranger.DISCONNECT"

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "processName"

    .line 154
    iget-object v3, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel$1;->this$0:Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;

    invoke-static {v3}, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->access$000(Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-static {}, Lcom/taobao/aranger/ARanger;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    invoke-static {}, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->access$100()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel$1;->this$0:Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;

    invoke-static {v2}, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;->access$000(Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
