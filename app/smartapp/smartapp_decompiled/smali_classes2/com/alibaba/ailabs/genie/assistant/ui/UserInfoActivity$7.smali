.class Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$7;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->reportPageTrack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$7;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 298
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/track/StaticsManager;->page_my_account:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/track/StaticsManager;->spm_cnt_my_account:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$7;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    .line 301
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "account"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "my_account_app"

    .line 302
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->withArg1(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/track/StaticsManager;->pageAppear(Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;)V

    return-void
.end method
