.class Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$3;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "GestureSvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$3;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    invoke-direct {p0}, Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "GestureSvr"

    .line 467
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    .line 469
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gesture engine callback,  type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$3;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$3;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$3;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    invoke-static {v4}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 483
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 486
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gesture engine callback,  data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
