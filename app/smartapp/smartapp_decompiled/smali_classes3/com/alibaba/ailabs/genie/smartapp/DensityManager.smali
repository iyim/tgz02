.class public final Lcom/alibaba/ailabs/genie/smartapp/DensityManager;
.super Ljava/lang/Object;
.source "DensityManager.java"


# static fields
.field public static final sMetaBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/density/MetaBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    .line 11
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const/4 v2, 0x0

    const/4 v3, 0x7

    const-string v4, "com.alibaba.ailabs.genie.custom.contacts.asr.call.VCallListActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.voiceprint.open.activity.VoicePrintGetTwoActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.assistant.ui.UserInfoActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.voiceprint.open.activity.VoicePrintGuideActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.router.view.LoadActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.activity.DialogOpenAppActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.musicplayer.tme.TMEMainActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.childmode.ui.page.MinorModeActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.custom.contacts.main.MainActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.base.router.MarketBlankActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.cleaner.activity.CleanerMainActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.activity.ShoppingDetailActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.commonpay.qrcode.QrcodePayActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.voiceprint.open.activity.VoicePrintNickCreateActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.activity.DialogTry2AddAppActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.contacts.details.DownloadTipsActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.voiceprint.open.activity.VoicePrintPayOpenSuccessActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.nodisturb.NotDisturbActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.activity.SkillDetailsActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.activity.ShoppingSearchActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.activity.MarketVideoActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.musicplayer.activity.SpeedActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.activity.OrderDetailActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.musicplayer.activity.PlayListActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.custom.contacts.main.MainGuideActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.webshopping.activity.TradePayActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.contacts.cmd.selectlist.call.VCallListActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.activity.TransitionPageActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.searchbox.activity.AppSearchActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.pay.activity.GenieProductsActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.activity.OrderPayActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.voiceprint.open.activity.VoicePrintAlipayStartActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.custom.contacts.detail.ContactDetailActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.activity.OrderDetailErrorActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.activity.GenieSkillRankActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.voiceprint.open.activity.VoicePrintGetOneActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.activity.ShoppingBlankActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.pay.activity.GeniePayActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.contacts.details.DownloadTipsMiniActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.activity.MarketMainActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.globalsearch.MainActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.musicplayer.tme.TMEWebViewActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.message.ui.MessageActivityP0"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.basedomain.ui.MainActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.musicplayer.activity.MainActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.activity.DetailsActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.commonpay.qrcode.QrcodePayFromWebappsActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.nodisturb.TimeDisturbActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "android.taobao.windvane.runtimepermission.PermissionActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.genieboot.activity.BootHomeActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.waft.gcs.featurefeedback.activity.FeatureFeedbackActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.contacts.cmd.selectlist.contacts.VContactListActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.genie.custom.contacts.detail.CuContactDetailActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.alarm.ui.AlarmListActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.childmode.ui.page.ApiActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.childmode.ui.page.HelpActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.voiceprint.open.activity.VoiceSetUpActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.childmode.ui.page.ShotcutSettingActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.childmodel.ChildAppMarketActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.service.ServiceActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.voiceprint.open.activity.VoicePrintListActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.basedomain.ui.alarm.OnePixelActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.activity.PayResultActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.genie.shopping.activity.ShoppingDetailVideoActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.childmode.ui.page.ValidateLockActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.activity.ApplistActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v4, "com.alibaba.ailabs.appbox.activity.SkillActivity"

    invoke-direct {v1, v4, v3, v2}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
