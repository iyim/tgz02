.class Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$4;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->reportBtnClickTrack(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

.field final synthetic val$isVip:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;Z)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$4;->val$isVip:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 200
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/track/StaticsManager;->page_my_account:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/track/StaticsManager;->spm_cnt_my_account:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    .line 203
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "account_settings_vip"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 204
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$4;->val$isVip:Z

    if-eqz v1, :cond_0

    const-string v1, "\u7cbe\u7075\u8d85\u7ea7\u4f1a\u5458"

    .line 205
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->withVipType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;

    goto :goto_0

    :cond_0
    const-string v1, "\u975e\u4f1a\u5458"

    .line 207
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->withVipType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;

    .line 209
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/track/StaticsManager;->spm_cnt_my_account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".c1616072607528"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".d1616072607528"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->withSpm(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;

    move-result-object v0

    const-string v1, "my_account_app"

    .line 210
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->withArg1(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;)V

    return-void
.end method
