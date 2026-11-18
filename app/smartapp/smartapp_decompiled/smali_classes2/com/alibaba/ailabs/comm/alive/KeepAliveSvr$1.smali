.class Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr$1;
.super Ljava/lang/Object;
.source "KeepAliveSvr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->onDied(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;

.field final synthetic val$info:Lcom/alibaba/ailabs/comm/alive/StartupInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr$1;->this$0:Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;

    iput-object p2, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr$1;->val$info:Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDied, check whether is keep alive, info ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr$1;->val$info:Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeepAliveSvr"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr$1;->this$0:Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr$1;->val$info:Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->access$000(Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V

    return-void
.end method
