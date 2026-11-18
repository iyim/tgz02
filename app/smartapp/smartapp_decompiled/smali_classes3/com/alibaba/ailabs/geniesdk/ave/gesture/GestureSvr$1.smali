.class Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$1;
.super Landroid/database/ContentObserver;
.source "GestureSvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->isOpened()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;Landroid/os/Handler;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 278
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
