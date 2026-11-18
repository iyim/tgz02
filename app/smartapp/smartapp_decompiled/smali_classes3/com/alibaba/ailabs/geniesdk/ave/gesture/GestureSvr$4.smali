.class Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$4;
.super Ljava/lang/Object;
.source "GestureSvr.java"

# interfaces
.implements Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;


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

    .line 490
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$4;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eventCallback(Ljava/lang/String;)V
    .locals 2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gesture event callback,  s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GestureSvr"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$4;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$4;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
