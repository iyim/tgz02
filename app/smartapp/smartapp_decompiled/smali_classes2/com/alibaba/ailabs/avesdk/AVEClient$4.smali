.class Lcom/alibaba/ailabs/avesdk/AVEClient$4;
.super Ljava/lang/Object;
.source "AVEClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/avesdk/AVEClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/avesdk/AVEClient;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$4;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$4;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1708(Lcom/alibaba/ailabs/avesdk/AVEClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "looping mIAveAidlInterface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$4;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$500(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/LogUtils;->v(Ljava/lang/String;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$4;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$500(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$4;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1500(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1600(Lcom/alibaba/ailabs/avesdk/AVEClient;Landroid/content/Context;)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$4;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$000(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$4;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$000(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$4;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1800(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
