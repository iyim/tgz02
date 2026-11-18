.class public abstract Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;
.super Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/commonpay/qrcode/IPayMvpView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;",
        "P:",
        "Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter<",
        "TV;>;>",
        "Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity<",
        "TV;TP;>;",
        "Lcom/alibaba/ailabs/genie/commonpay/qrcode/IPayMvpView;"
    }
.end annotation


# static fields
.field private static final MESSAGE_ASR_SDK:I = 0x7d0

.field private static TAG:Ljava/lang/String; = "PayBaseActivity"


# instance fields
.field private mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

.field protected mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

.field public mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

.field private mGetMediaPolicyListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

.field private mOnNotifyEvent:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 35
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    .line 36
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mGetMediaPolicyListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

    .line 37
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mOnNotifyEvent:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;

    return-void
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 242
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

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    .line 234
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->requestWindowFeature(I)Z

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 49
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->isNeedHandler()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    if-nez p1, :cond_1

    .line 55
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 56
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    .line 59
    :cond_1
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    const-string v0, "com.alibaba.ailabs.genie.pay"

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setPackageName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 61
    new-instance p1, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$1;-><init>(Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 149
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;->onDestroy()V

    .line 150
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ondestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 142
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;->onPause()V

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->release()V

    .line 144
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 129
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;->onResume()V

    .line 130
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->init(Landroid/content/Context;Z)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setASRListenerType(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method public abstract processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
.end method

.method public showSearchResultPage(Ljava/util/List;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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

    .line 305
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "utEvent spm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " props:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "spm"

    .line 311
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 314
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    const/4 p1, 0x0

    .line 316
    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method
