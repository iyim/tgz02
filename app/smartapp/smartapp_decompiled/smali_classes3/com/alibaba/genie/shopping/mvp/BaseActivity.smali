.class public abstract Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.super Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;
.implements Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/alibaba/genie/shopping/mvp/IMvpView;",
        "P:",
        "Lcom/alibaba/genie/shopping/mvp/IMvpPresenter<",
        "TV;>;>",
        "Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity<",
        "TV;TP;>;",
        "Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;"
    }
.end annotation


# static fields
.field private static final MESSAGE_ASR_SDK:I = 0x7d0


# instance fields
.field private mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

.field protected mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

.field public mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

.field private mGetMediaPolicyListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

.field private mOnNotifyEvent:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 54
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    .line 55
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mGetMediaPolicyListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

    .line 56
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mOnNotifyEvent:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;

    return-void
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 251
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

.method private initTitleView()V
    .locals 1

    .line 163
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->title_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 164
    invoke-direct {p0, v0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->setImmerseLayout(Landroid/view/View;)V

    return-void
.end method

.method private setImmerseLayout(Landroid/view/View;)V
    .locals 2

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 241
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    .line 243
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

.method public getSoundPrintListFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getSoundPrintListSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public goToAlipayPreVerifyActivity(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public goToVoicePrintPayFailPage()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public goToVoicePrintPaySuccessPage()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
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

.method public onCancelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->isNeedHandler()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    if-nez p1, :cond_0

    .line 64
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 65
    new-instance v0, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    invoke-direct {v0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    .line 68
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 69
    iget-object p1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    const-string v0, "com.alibaba.ailabs.genie.shopping"

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setPackageName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 70
    new-instance p1, Lcom/alibaba/genie/shopping/mvp/BaseActivity$1;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$1;-><init>(Lcom/alibaba/genie/shopping/mvp/BaseActivity;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    .line 106
    new-instance p1, Lcom/alibaba/genie/shopping/mvp/BaseActivity$2;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$2;-><init>(Lcom/alibaba/genie/shopping/mvp/BaseActivity;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mGetMediaPolicyListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

    .line 113
    new-instance p1, Lcom/alibaba/genie/shopping/mvp/BaseActivity$3;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$3;-><init>(Lcom/alibaba/genie/shopping/mvp/BaseActivity;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mOnNotifyEvent:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;

    return-void
.end method

.method public onDelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDestroy()V
    .locals 2

    .line 158
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;->onDestroy()V

    .line 159
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

    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

.method public onGetGoodDetailInfoFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;)V
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
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGetVoicePrintPayCode(Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;)V
    .locals 0

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

.method public onOpenOrCloseSoundPrintPay(Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPause()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;->onPause()V

    .line 152
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->release()V

    .line 153
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

    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

.method protected onResume()V
    .locals 3

    .line 138
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;->onResume()V

    .line 139
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

    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->init(Landroid/content/Context;Z)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 143
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mGetMediaPolicyListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnGetMediaPolicyListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 144
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setASRListenerType(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 146
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->mOnNotifyEvent:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnNotifyEvent(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method public abstract processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
.end method

.method public setContentView(I)V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 132
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;->setContentView(I)V

    return-void
.end method

.method protected showCommonTitleBar(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 3

    .line 168
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->title_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 170
    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivTitleBtnLeft:I

    invoke-virtual {p0, v1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 171
    new-instance v2, Lcom/alibaba/genie/shopping/mvp/BaseActivity$4;

    invoke-direct {v2, p0, p3}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$4;-><init>(Lcom/alibaba/genie/shopping/mvp/BaseActivity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 182
    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivTitleName:I

    invoke-virtual {p0, p2}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivTitleBtnHome:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 185
    new-instance p2, Lcom/alibaba/genie/shopping/mvp/BaseActivity$5;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$5;-><init>(Lcom/alibaba/genie/shopping/mvp/BaseActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
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

.method public showVoicePrintFailure(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showVoicePrintPayCode(Ljava/lang/String;)V
    .locals 0

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

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utEvent spm:"

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

    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "spm"

    .line 415
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 418
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    const/4 p1, 0x0

    .line 420
    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method
