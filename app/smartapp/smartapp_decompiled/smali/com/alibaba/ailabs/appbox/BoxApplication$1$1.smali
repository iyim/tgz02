.class Lcom/alibaba/ailabs/appbox/BoxApplication$1$1;
.super Ljava/lang/Object;
.source "BoxApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/BoxApplication$1;->execute(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/BoxApplication$1;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/BoxApplication$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/BoxApplication$1$1;->this$1:Lcom/alibaba/ailabs/appbox/BoxApplication$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/BoxApplication$1$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/BoxApplication$1$1;->this$1:Lcom/alibaba/ailabs/appbox/BoxApplication$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/BoxApplication$1;->this$0:Lcom/alibaba/ailabs/appbox/BoxApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/BoxApplication;->access$000(Lcom/alibaba/ailabs/appbox/BoxApplication;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/BoxApplication$1$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
