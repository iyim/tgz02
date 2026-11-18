.class Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "AntiAttackHandlerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "Result"

    .line 56
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mtopsdk.AntiAttackHandlerImpl"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive]AntiAttack result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 60
    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    iget-object v0, v0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    iget-object v1, v1, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    iget-object v0, v0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p2

    .line 60
    :catch_0
    :goto_0
    iget-object p2, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    iget-object p2, p2, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    iget-object v0, v0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    iget-object p2, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$2;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    iget-object p2, p2, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
