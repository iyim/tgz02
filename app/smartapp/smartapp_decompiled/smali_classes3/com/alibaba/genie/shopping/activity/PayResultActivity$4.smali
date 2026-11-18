.class Lcom/alibaba/genie/shopping/activity/PayResultActivity$4;
.super Landroid/os/CountDownTimer;
.source "PayResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/PayResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/PayResultActivity;JJ)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->access$000(Lcom/alibaba/genie/shopping/activity/PayResultActivity;)I

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001163615017&pkg=com.alibaba.ailabs.genie.webapps&vc=181"

    .line 186
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 187
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-virtual {v0, v2}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=shopping&modeType=0"

    .line 193
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 194
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-virtual {v0, v2}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->access$100(Lcom/alibaba/genie/shopping/activity/PayResultActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ee7\u7eed\u8d2d\u4e70 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
