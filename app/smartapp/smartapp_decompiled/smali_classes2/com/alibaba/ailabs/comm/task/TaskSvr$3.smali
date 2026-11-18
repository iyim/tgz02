.class Lcom/alibaba/ailabs/comm/task/TaskSvr$3;
.super Ljava/lang/Object;
.source "TaskSvr.java"

# interfaces
.implements Lcom/alibaba/ailabs/comm/task/listener/IReadData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/comm/task/TaskSvr;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/comm/task/TaskSvr;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$3;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadData()Ljava/lang/String;
    .locals 2

    const-string v0, "QUICK"

    const-string v1, "onReadData"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "r82pdcBpnxVB"

    .line 224
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getOrangeConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
