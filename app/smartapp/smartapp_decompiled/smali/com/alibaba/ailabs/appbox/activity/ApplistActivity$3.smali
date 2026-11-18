.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;
.super Landroid/os/Handler;
.source "ApplistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Landroid/os/Looper;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 641
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 668
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    if-nez p1, :cond_8

    .line 669
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->loadData(Z)V

    goto/16 :goto_0

    .line 673
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    if-nez p1, :cond_8

    .line 674
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->loadData(Z)V

    goto/16 :goto_0

    .line 663
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$600(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 664
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$700(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V

    goto/16 :goto_0

    .line 660
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$500(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V

    goto/16 :goto_0

    .line 643
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    if-eqz v0, :cond_5

    return-void

    .line 646
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 647
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$300(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)J

    move-result-wide v2

    invoke-static {}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$200()J

    move-result-wide v4

    const-string p1, "MSG_ON_DATA_LOADED"

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$300(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "same skip..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$200()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_6
    invoke-static {}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$200()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "tag != requestTag skip..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$200()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 654
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "continue..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$200()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$200()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$302(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;J)J

    .line 657
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$000(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$200()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$400(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Ljava/lang/String;J)V

    :cond_8
    :goto_0
    return-void
.end method
