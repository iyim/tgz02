.class Lcom/alibaba/ailabs/genie/assistant/PackageReceiver$1;
.super Landroid/os/Handler;
.source "PackageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;Landroid/os/Looper;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/PackageReceiver$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 22
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 23
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/PackageReceiver$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;->access$000(Lcom/alibaba/ailabs/genie/assistant/PackageReceiver;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->softWareUpLoad(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
