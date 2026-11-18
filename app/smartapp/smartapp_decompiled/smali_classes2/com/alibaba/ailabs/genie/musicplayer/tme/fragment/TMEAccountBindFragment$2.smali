.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$2;
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

    .line 549
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beat(I)V
    .locals 1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 554
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;I)V

    goto :goto_0

    .line 556
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;I)V

    :goto_0
    return-void
.end method

.method public timeOut()V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    .line 564
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    :cond_0
    return-void
.end method
