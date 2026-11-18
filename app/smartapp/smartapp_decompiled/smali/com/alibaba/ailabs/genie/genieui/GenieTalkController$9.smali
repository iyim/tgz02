.class Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$9;
.super Landroid/os/CountDownTimer;
.source "GenieTalkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->resetGenieTalk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;JJ)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$9;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$9;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "GenieTalkController"

    const-string/jumbo v1, "\u5012\u8ba1\u65f6\u7ed3\u675f\uff0c\u5c55\u793a\u8bed\u6599\u63a8\u8350"

    .line 1171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
