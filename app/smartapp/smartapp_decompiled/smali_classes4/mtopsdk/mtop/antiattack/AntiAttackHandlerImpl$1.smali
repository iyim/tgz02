.class Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;
.super Ljava/lang/Object;
.source "AntiAttackHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 37
    iput-object p1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    iget-object v0, v0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mtopsdk.AntiAttackHandlerImpl"

    const-string v1, "waiting antiattack result time out!"

    .line 41
    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    iget-object v0, v0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl$1;->this$0:Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    iget-object v1, v1, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;->antiAttackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
