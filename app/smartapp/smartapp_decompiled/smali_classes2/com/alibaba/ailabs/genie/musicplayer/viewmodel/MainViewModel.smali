.class public Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;
.super Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
.source "MainViewModel.java"


# static fields
.field public static final KEY_HAVE_SHOW_ANIM:Ljava/lang/String; = "haveShow"

.field public static final SP_FILE:Ljava/lang/String; = "spMusic"

.field public static final TAG:Ljava/lang/String; = "MainViewModel:"


# instance fields
.field private lastCommand:Ljava/lang/String;

.field private mAudioType:Ljava/lang/String;

.field public mDuration:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginStatus:Ljava/lang/String;

.field private mLrcDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private mLrcLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/content/Intent;

.field public mPlayState:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mProgress:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public speed:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;-><init>()V

    .line 48
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLrcLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 49
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mPlayState:Landroid/arch/lifecycle/MutableLiveData;

    .line 50
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mProgress:Landroid/arch/lifecycle/MutableLiveData;

    .line 51
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mDuration:Landroid/arch/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->speed:Landroid/arch/lifecycle/MutableLiveData;

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->lastCommand:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mAudioType:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLoginStatus:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLrcLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic lambda$requestLrc$13(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 355
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;-><init>()V

    .line 356
    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->getLyricData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 360
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->parseLrc(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private processCommand(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "itemType"

    const-string v1, "pos"

    const-string v2, "start"

    .line 133
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "UTF-8"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "MainViewModel:"

    if-eqz v2, :cond_4

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 138
    :try_start_0
    invoke-static {p3, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    .line 146
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "processCommand"

    invoke-static {v2, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "Data \u53c2\u6570\u8f93\u51fa\u4e3a\u7a7a!"

    .line 148
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 150
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5f00\u59cb\u62c9\u53d6\u5217\u8868\u6570\u636e\uff1a"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 153
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 155
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 156
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8f93\u5165\u5f00\u59cb\u64ad\u653e\u4f4d\u7f6e\uff1a"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 160
    :try_start_2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setPosition(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse data error, data:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v4}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setPosition(I)V

    .line 166
    :cond_2
    :goto_1
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 167
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setAudioType(Ljava/lang/String;)V

    .line 172
    :cond_3
    invoke-static {p1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u521b\u5efa\u64ad\u653e\u5217\u8868\u53c2\u6570\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->stop()V

    .line 176
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setIsFirstRun(Z)V

    .line 177
    sput v5, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->currentPageIndex:I

    .line 178
    sput-boolean v4, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->playFavoirte:Z

    .line 179
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setTTSIsOver(Z)V

    .line 180
    invoke-virtual {p0, v5}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setIsRequesting(Z)V

    .line 182
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;-><init>()V

    .line 183
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;)V

    invoke-virtual {p2, p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;->createListNew(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    :catch_2
    const-string p2, "\u5f53\u524d\u7f51\u7edc\u8fde\u63a5\u51fa\u4e86\u4e00\u70b9\u95ee\u9898\uff0c\u8bf7\u518d\u6765\u4e00\u6b21\u54df~~~"

    .line 214
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->showToast(Ljava/lang/String;)V

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "parse data error-2,data:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    const-string v0, "loginStatus"

    .line 218
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p2, "isLogin"

    .line 219
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isLogin:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "true"

    .line 223
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 224
    invoke-virtual {p0, v5}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->showLoading(Z)V

    .line 225
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_5

    .line 226
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "refresh"

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "mController action refresh"

    .line 227
    invoke-static {v6, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    const-string p1, "mController is null"

    .line 229
    invoke-static {v6, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    const-string p1, "playList"

    .line 233
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "Control"

    const-string v1, "com.alibaba.ailabs.genie.musicplayer.cmd"

    const-string v2, "music"

    if-eqz p1, :cond_e

    .line 234
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setTTSIsOver(Z)V

    .line 235
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setAudioType(Ljava/lang/String;)V

    .line 236
    sput-boolean v4, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->playFavoirte:Z

    .line 238
    :try_start_4
    invoke-static {p3, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dataStringDecode:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "&data="

    .line 240
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p2, p2, 0x6

    if-ge p3, p2, :cond_7

    const-string p1, "dataStringDecode error, return"

    .line 242
    invoke-static {v6, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 245
    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    const/16 p3, 0x64

    if-le p2, p3, :cond_8

    const-string p1, "the size of list is bigger 100, return"

    .line 249
    invoke-static {v6, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 252
    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p2, v5, :cond_9

    const-string p1, "size < 1, return"

    .line 254
    invoke-static {v6, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_9
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getGlobalSongList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->clear()V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 p3, 0x0

    :goto_2
    const-string v2, "applet"

    if-ge p3, p2, :cond_b

    .line 260
    :try_start_5
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 261
    new-instance v7, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-direct {v7}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;-><init>()V

    const-string v8, "audioUrl"

    .line 262
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 263
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    .line 266
    :cond_a
    invoke-virtual {v7, v8}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setUrl(Ljava/lang/String;)V

    const-string v8, "audioAnchor"

    .line 267
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setArtist(Ljava/lang/String;)V

    const-string v8, "audioName"

    .line 268
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setTitle(Ljava/lang/String;)V

    const-string v8, "audioImageUrl"

    .line 269
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setImage(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v7, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setSource(Ljava/lang/String;)V

    .line 271
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setId(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getGlobalSongList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 275
    :cond_b
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getGlobalSongList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v5, :cond_c

    const-string p1, "\u5217\u8868\u5c0f\u4e8esize\u5c0f\u4e8e1\uff0c return"

    .line 276
    invoke-static {v6, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 280
    :cond_c
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setDataFrom(Ljava/lang/String;)V

    .line 281
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setIsFirstRun(Z)V

    .line 282
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "Position"

    .line 283
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 286
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_4

    .line 288
    :cond_d
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mPendingIntent:Landroid/content/Intent;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 292
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const-string p1, "playfavorite"

    .line 295
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 296
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string p2, "type"

    const-string p3, "playFavorite"

    .line 297
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "packageType"

    const-string p3, "CONTENT"

    .line 298
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "audioType"

    .line 299
    invoke-virtual {p1, p2, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;-><init>()V

    .line 301
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$2;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;)V

    invoke-virtual {p2, p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;->createList(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    :cond_f
    :goto_4
    return-void

    .line 314
    :cond_10
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->translateCommand(Ljava/lang/String;)I

    move-result p1

    .line 315
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private stop()V
    .locals 3

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.musicplayer.cmd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Control"

    const/16 v2, 0x16

    .line 387
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public convertRenderData(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;
    .locals 4

    const-string v0, "MainViewModel:"

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 106
    :cond_0
    :try_start_0
    const-class v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    :goto_0
    const-string v1, "convertRenderData renderData "

    .line 110
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "\u5f53\u524d\u7f51\u7edc\u8fde\u63a5\u51fa\u4e86\u4e00\u70b9\u95ee\u9898\uff0c\u8bf7\u518d\u6765\u4e00\u6b21\u54df~~~"

    .line 112
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->showToast(Ljava/lang/String;)V

    const-string p1, "convertRenderData"

    const-string v0, "contentPlay is null"

    .line 113
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 116
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->setAudioType(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioExt()Ljava/lang/String;

    move-result-object v1

    .line 120
    :try_start_1
    const-class v3, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 122
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setCurrentRequestId(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setAudioExtBean(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;)V

    :cond_2
    return-object p1
.end method

.method public getAudioType()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mAudioType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mDuration:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLoginStatus()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLoginStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLrcLiveData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLrcLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPendingIntent()Landroid/content/Intent;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mPendingIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPlayState()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mPlayState:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getProgress()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mProgress:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSpeed()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->speed:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic lambda$requestLrc$14$MainViewModel(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 366
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;-><init>()V

    .line 367
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->setSongId(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 368
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->setCurrentLrcRows(Ljava/util/List;)V

    .line 370
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setLrcData(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;)V

    .line 372
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLrcLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public processUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 324
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setOperation(I)V

    .line 325
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->resetPageParameter()V

    const-string v0, "cmd"

    .line 326
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->lastCommand:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "MainViewModel:"

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isFastEnternce()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u76f8\u540c\u7684\u547d\u4ee4\uff0c\u5feb\u901f\u8fdb\u5165\uff0c\u5ffd\u7565 dataString:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_0
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->lastCommand:Ljava/lang/String;

    .line 332
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "command is empty,uri:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 336
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",  dataString = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processUri command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->processCommand(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public requestLrc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;-><init>()V

    .line 345
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->setSongId(Ljava/lang/String;)V

    .line 346
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLrcLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p2, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLrcDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLrcDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLrcDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 352
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lrcUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainViewModel:"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MainViewModel$i9k5TcnjNqjXU2p3Gh3rmIyQfSc;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MainViewModel$i9k5TcnjNqjXU2p3Gh3rmIyQfSc;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 363
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 364
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MainViewModel$C-Asq6Muzkj9bCt791QWUZx1V_8;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/-$$Lambda$MainViewModel$C-Asq6Muzkj9bCt791QWUZx1V_8;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$3;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLrcDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public setAudioType(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mAudioType:Ljava/lang/String;

    return-void
.end method

.method public setLoginStatus(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->mLoginStatus:Ljava/lang/String;

    return-void
.end method
