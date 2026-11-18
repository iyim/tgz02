.class public Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "ShoppingBlankActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;",
        "Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;",
        ">;",
        "Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;",
        "Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;"
    }
.end annotation


# static fields
.field private static final FLAG_QUERY_SOUND_LIST:I = 0x7531

.field private static final TAG:Ljava/lang/String; = "ShoppingSearchActivity"


# instance fields
.field private command:Ljava/lang/String;

.field private isOpenVoicePay:Z

.field private param:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->isOpenVoicePay:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->command:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->param:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;
    .locals 1

    .line 182
    new-instance v0, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;-><init>()V

    return-object v0
.end method

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7531

    invoke-static {p1, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->getSoundPrintList(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;",
            "Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPause()V
    .locals 0

    .line 177
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPutOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPutOrderSuccess(Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const/16 p2, 0x7531

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->finish()V

    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 2

    const/16 p3, 0x7531

    if-eq p2, p3, :cond_0

    goto/16 :goto_0

    .line 69
    :cond_0
    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 71
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;->getModel()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    .line 74
    invoke-virtual {p3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->isEnablePay()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 75
    iput-boolean p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->isOpenVoicePay:Z

    :cond_2
    const/4 p1, 0x0

    const-string p3, "shopping_data"

    .line 82
    invoke-virtual {p0, p3, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 85
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->isOpenVoicePay:Z

    const-string v1, "shopping_should_open_voicepay_guide"

    if-eqz v0, :cond_4

    .line 86
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->command:Ljava/lang/String;

    const-string p3, "/shopping_channel"

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 90
    sput p2, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    const-string p1, "genie://com.alibaba.ailabs.genie.channel/home"

    .line 91
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 92
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    :cond_3
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->command:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    .line 98
    sput p1, Lcom/alibaba/genie/shopping/utils/ConstData;->OPEN_GUIDE_SCIENCE:I

    .line 99
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :cond_4
    invoke-interface {p3, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 106
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    new-instance p1, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-direct {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "open_guide_dialog"

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 119
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 172
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    .line 138
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const/4 p4, 0x1

    .line 139
    iput-boolean p4, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    .line 140
    iput-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->command:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/alibaba/genie/shopping/activity/ShoppingBlankActivity;->param:Ljava/lang/String;

    return-object p1
.end method

.method public showSearchResultEmptyPage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showSearchResultPage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
