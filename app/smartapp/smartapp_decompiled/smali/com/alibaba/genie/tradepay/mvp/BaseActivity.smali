.class public abstract Lcom/alibaba/genie/tradepay/mvp/BaseActivity;
.super Lcom/alibaba/genie/tradepay/mvp/AbstractMvpActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/alibaba/genie/tradepay/mvp/IMvpView;",
        "P:",
        "Lcom/alibaba/genie/tradepay/mvp/IMvpPresenter<",
        "TV;>;>",
        "Lcom/alibaba/genie/tradepay/mvp/AbstractMvpActivity<",
        "TV;TP;>;",
        "Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;"
    }
.end annotation


# static fields
.field private static final MESSAGE_ASR_SDK:I = 0x7d0


# instance fields
.field private mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

.field protected mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

.field public mBaseHandler:Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;

.field private mGetMediaPolicyListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

.field private mOnNotifyEvent:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/alibaba/genie/tradepay/mvp/AbstractMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 44
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    .line 45
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mGetMediaPolicyListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

    .line 46
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mOnNotifyEvent:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;

    return-void
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setImmerseLayout(Landroid/view/View;)V
    .locals 2

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected getMediaPolicy()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleBaseMessage(Landroid/os/Message;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCancelVoicePay(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/genie/tradepay/mvp/AbstractMvpActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->requestWindowFeature(I)Z

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->isNeedHandler()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mBaseHandler:Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;

    if-nez p1, :cond_0

    .line 54
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;

    invoke-direct {v0, p1}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mBaseHandler:Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;

    .line 58
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 59
    iget-object p1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    const-string v0, "com.alibaba.ailabs.genie.shopping"

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setPackageName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 60
    iget-object p1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setActivity(Landroid/app/Activity;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 61
    new-instance p1, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$1;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$1;-><init>(Lcom/alibaba/genie/tradepay/mvp/BaseActivity;)V

    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    .line 97
    new-instance p1, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$2;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$2;-><init>(Lcom/alibaba/genie/tradepay/mvp/BaseActivity;)V

    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mGetMediaPolicyListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

    .line 104
    new-instance p1, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$3;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$3;-><init>(Lcom/alibaba/genie/tradepay/mvp/BaseActivity;)V

    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mOnNotifyEvent:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/alibaba/genie/tradepay/mvp/AbstractMvpActivity;->onDestroy()V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ondestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AliTVASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/genie/tradepay/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/tradepay/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/tradepay/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/genie/tradepay/bean/shopping/OrderGroup;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemAddressData;",
            ">;",
            "Lcom/alibaba/genie/tradepay/bean/shopping/GoodExtendInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGetGoodDetailInfoFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGetRecommandGoods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onNotifyPushEvent(IILjava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPause()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/alibaba/genie/tradepay/mvp/AbstractMvpActivity;->onPause()V

    .line 143
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->release()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AliTVASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/genie/tradepay/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPutOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPutOrderSuccess(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 3

    .line 129
    invoke-super {p0}, Lcom/alibaba/genie/tradepay/mvp/AbstractMvpActivity;->onResume()V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AliTVASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/genie/tradepay/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->init(Landroid/content/Context;Z)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 134
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mGetMediaPolicyListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnGetMediaPolicyListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 135
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setASRListenerType(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 137
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->mOnNotifyEvent:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnNotifyEvent(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method public abstract processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
.end method

.method public setContentView(I)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 123
    invoke-super {p0, p1}, Lcom/alibaba/genie/tradepay/mvp/AbstractMvpActivity;->setContentView(I)V

    return-void
.end method

.method public showSearchResultEmptyPage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/bean/GoodInfo;",
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
            "Lcom/alibaba/genie/tradepay/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "utEvent spm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " props:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoicePrintListActivity"

    invoke-static {v1, v0}, Lcom/alibaba/genie/tradepay/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "spm"

    .line 308
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 311
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    const/4 p1, 0x0

    .line 313
    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method
