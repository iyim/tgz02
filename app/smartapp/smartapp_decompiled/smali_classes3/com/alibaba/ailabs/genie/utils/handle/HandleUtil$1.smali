.class final Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil$1;
.super Landroid/os/Handler;
.source "HandleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->flushStackLocalLeaks(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil$1;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
