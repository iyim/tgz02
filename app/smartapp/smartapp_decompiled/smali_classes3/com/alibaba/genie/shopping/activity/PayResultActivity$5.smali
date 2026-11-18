.class Lcom/alibaba/genie/shopping/activity/PayResultActivity$5;
.super Ljava/lang/Object;
.source "PayResultActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/PayResultActivity;->processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/PayResultActivity;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$5;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$5;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->access$000(Lcom/alibaba/genie/shopping/activity/PayResultActivity;)I

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001163615017&pkg=com.alibaba.ailabs.genie.webapps&vc=181"

    .line 267
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 268
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 269
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$5;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-virtual {v0, v2}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$5;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=shopping&modeType=0"

    .line 274
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 275
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$5;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-virtual {v0, v2}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity$5;->this$0:Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->finish()V

    :goto_0
    return-void
.end method
