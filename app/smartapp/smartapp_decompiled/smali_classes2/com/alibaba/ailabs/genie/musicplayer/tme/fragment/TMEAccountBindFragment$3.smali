.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$3;
.super Ljava/lang/Object;
.source "TMEAccountBindFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/utils/TimeLoopUtil$LoopLeap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beat(I)V
    .locals 1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 575
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;I)V

    goto :goto_0

    .line 577
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;I)V

    :goto_0
    return-void
.end method

.method public timeOut()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    .line 585
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    return-void
.end method
