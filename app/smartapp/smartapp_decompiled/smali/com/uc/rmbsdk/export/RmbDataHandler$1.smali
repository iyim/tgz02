.class Lcom/uc/rmbsdk/export/RmbDataHandler$1;
.super Ljava/lang/Thread;
.source "RmbDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/rmbsdk/export/RmbDataHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uc/rmbsdk/export/RmbDataHandler;


# direct methods
.method constructor <init>(Lcom/uc/rmbsdk/export/RmbDataHandler;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$1;->this$0:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 73
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$1;->this$0:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-static {v0}, Lcom/uc/rmbsdk/export/RmbDataHandler;->access$000(Lcom/uc/rmbsdk/export/RmbDataHandler;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 75
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    return-void
.end method
