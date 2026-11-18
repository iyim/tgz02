.class public Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;
.super Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
.source "VoicePrintOpenPresenter.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/IMvpPresenter<",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;",
        ">;",
        "Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;"
    }
.end annotation


# static fields
.field private static final DELAY_MILLS_SHORT:I = 0x3e8

.field private static final DELAY_TIME_OUT_MILLS:I = 0x2bf20

.field public static KEY_SOUND_INFO:Ljava/lang/String; = "soundPrintInfo"

.field public static final REQ_ALIPAY_VERFIFY:I = 0x65

.field private static final TAG:Ljava/lang/String; = "VoicePrintOpenPresenter"

.field private static final WHAT_CREATE_FAILED:I = -0x7d0

.field private static final WHAT_GET_PAY_RESULT_REQUEST:I = -0x3ea

.field private static final WHAT_GET_PAY_RESULT_REQUEST_TIME_OUT:I = -0x3ec

.field private static final WHAT_GET_RESULT_REQUEST:I = -0x3e9

.field private static final WHAT_GET_RESULT_REQUEST_TIME_OUT:I = -0x3eb

.field private static final WHAT_PAY_CREATE_FAILED:I = -0x3ed


# instance fields
.field private mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

.field protected mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

.field private mSoundPrintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;-><init>()V

    .line 56
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;)Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    return-object p0
.end method


# virtual methods
.method public cancelSoundPrint(Ljava/lang/String;)V
    .locals 1

    .line 336
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->cancelSoundPrint(Ljava/lang/String;)V

    return-void
.end method

.method public createSoundPrintPay(Ljava/lang/String;J)V
    .locals 1

    .line 182
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->createSoundPrintPay(Ljava/lang/String;J)V

    return-void
.end method

.method public getSoundPrintInfo()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    return-object v0
.end method

.method public getSoundPrintList(Ljava/lang/String;)V
    .locals 1

    .line 248
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->getSoundPrintList(Ljava/lang/String;)V

    return-void
.end method

.method public getSoundPrintListFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;->getSoundPrintListFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSoundPrintListSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;",
            ">;)V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintList:Ljava/util/List;

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;->getSoundPrintListSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public getVoicePrintCreateResultFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/16 p2, -0x7d0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public getVoicePrintCreateResultSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 152
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    .line 153
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->isSoundPrintSucc()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "sound print create success"

    .line 159
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-interface {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;->goToAlipayPreVerifyActivity(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V

    goto :goto_1

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/16 v0, -0x3e9

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public getVoicePrintPayCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 256
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->getVoicePrintPayCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getVoicePrintPayCreateResultFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 242
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/16 p2, -0x3ed

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public getVoicePrintPayCreateResultSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 221
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    .line 222
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->isPaySucc()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "sound print create success"

    .line 228
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;

    invoke-interface {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;->goToVoicePrintPaySuccessPage()V

    goto :goto_1

    .line 236
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/16 v0, -0x3ea

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public isExistsSoundPrint(Ljava/lang/String;)Z
    .locals 2

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onCancelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;->onCancelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;->onDelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetVoicePrintPayCode(Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;)V
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;->onGetVoicePrintPayCode(Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;)V

    :cond_0
    return-void
.end method

.method public onOpenOrCloseSoundPrintPay(Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;)V
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;->onOpenOrCloseSoundPrintPay(Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;)V

    :cond_0
    return-void
.end method

.method public openOrCloseVoicePrintPay(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 317
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->openOrCloseVoicePrintPay(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public removeAllMessage()V
    .locals 2

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public removeSoundPrintById(Ljava/lang/String;J)V
    .locals 1

    .line 296
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->removeSoundPrintById(Ljava/lang/String;J)V

    return-void
.end method

.method public voicePrintCreate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 122
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;)V

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->voicePrintCreate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public voicePrintCreateFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 141
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$string;->va_add_sound_print_failure:I

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->showLong(I)V

    .line 143
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/16 p2, -0x7d0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public voicePrintCreateSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 129
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    :cond_0
    const-string p1, "VoicePrintGetone"

    const-string v0, "voicePrintCreateSuccess"

    .line 131
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/16 v0, -0x3e9

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/16 v0, -0x3eb

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public voicePrintPayCreateFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 212
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 213
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/16 p2, -0x3ed

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public voicePrintPayCreateSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 189
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getPayPassword()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getPayPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;->showVoicePrintPayCode(Ljava/lang/String;)V

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/16 v2, -0x3ea

    invoke-virtual {p1, v2, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/16 v0, -0x3ec

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 204
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mMainHandler:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    const/16 v2, -0x3ed

    invoke-virtual {p1, v2, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
