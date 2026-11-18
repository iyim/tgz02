.class Lcom/alibaba/ailabs/avesdk/AVEClient$10;
.super Ljava/lang/Object;
.source "AVEClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/avesdk/AVEClient;->getEngineState(Ljava/lang/String;Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field final synthetic val$aveClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

.field final synthetic val$engineName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/avesdk/AVEClient;Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;Ljava/lang/String;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$10;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iput-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$10;->val$aveClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    iput-object p3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$10;->val$engineName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 691
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$10;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1200(Lcom/alibaba/ailabs/avesdk/AVEClient;)Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x64

    .line 692
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x32

    if-le v1, v3, :cond_0

    .line 694
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$10;->val$aveClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;->eventCallback(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 699
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$10;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1200(Lcom/alibaba/ailabs/avesdk/AVEClient;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$10;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1200(Lcom/alibaba/ailabs/avesdk/AVEClient;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$10;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$10;->val$engineName:Ljava/lang/String;

    const-string v2, "isEngineEnable"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 702
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$10;->val$aveClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;->eventCallback(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
