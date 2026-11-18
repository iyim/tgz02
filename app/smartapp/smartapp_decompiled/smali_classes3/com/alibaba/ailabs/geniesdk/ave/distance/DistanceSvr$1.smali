.class Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr$1;
.super Landroid/database/ContentObserver;
.source "DistanceSvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->isOpened()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;Landroid/os/Handler;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->access$000(Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
