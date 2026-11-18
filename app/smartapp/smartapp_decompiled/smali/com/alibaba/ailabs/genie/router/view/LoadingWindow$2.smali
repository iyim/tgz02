.class final Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$2;
.super Ljava/lang/Object;
.source "LoadingWindow.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->registTaskClient(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onScene(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    .line 377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScene loading, exit me, s="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GenieAIRouter"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "router_loading"

    .line 378
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 392
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$000()Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$000()Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->removeMessages(I)V

    .line 396
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$000()Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    move-result-object p1

    const/4 p2, 0x2

    const-wide/16 p3, 0x5dc

    invoke-virtual {p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
