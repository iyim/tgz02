.class Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$3;
.super Ljava/lang/Object;
.source "OrderDetailErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->onGetRecommandGoods(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 166
    invoke-static {}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->access$000()I

    move-result p1

    const-string v0, "android.intent.action.VIEW"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001163615017&pkg=com.alibaba.ailabs.genie.webapps&vc=181"

    .line 168
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 169
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;

    invoke-virtual {p1, v1}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string p1, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=shopping&modeType=0"

    .line 175
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 176
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;

    invoke-virtual {p1, v1}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->finish()V

    :goto_0
    return-void
.end method
