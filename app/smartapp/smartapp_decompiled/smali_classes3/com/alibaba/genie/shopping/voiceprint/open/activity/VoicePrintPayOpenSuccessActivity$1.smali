.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;
.super Ljava/lang/Object;
.source "VoicePrintPayOpenSuccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 55
    sget p1, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=shopping&menuBusinessName=\u8d2d\u7269&modeType=0"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 56
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 57
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {p1, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->finish()V

    goto/16 :goto_0

    .line 60
    :cond_0
    sget p1, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 61
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    const-class v1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "come_from_voiceprint_open"

    .line 62
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->finish()V

    goto :goto_0

    .line 65
    :cond_1
    sget p1, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 68
    sget-object p1, Lcom/alibaba/genie/shopping/utils/ConstData;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/genie/shopping/utils/ConstData;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v1, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/genie/shopping/utils/ConstData;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payOrderCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getVoicePrintPayCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {p1, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->finish()V

    goto :goto_0

    .line 81
    :cond_3
    sget p1, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    .line 83
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->finish()V

    goto :goto_0

    .line 87
    :cond_4
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 91
    :catch_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->finish()V

    :goto_0
    return-void
.end method
