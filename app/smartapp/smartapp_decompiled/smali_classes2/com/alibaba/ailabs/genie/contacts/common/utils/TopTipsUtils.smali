.class public Lcom/alibaba/ailabs/genie/contacts/common/utils/TopTipsUtils;
.super Ljava/lang/Object;
.source "TopTipsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static showTopTips(Landroid/content/Context;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 17
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcast_action_top_tips"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppUtils;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_top_tips:I

    const-string v2, "layout"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "show"

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
